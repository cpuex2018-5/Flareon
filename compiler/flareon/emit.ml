open Asm

external castToInt : float -> int32 = "castToInt"

let stackset : S.t ref = ref S.empty (* Set of variables already 'Saved' (caml2html: emit_stackset) *)
let stackmap : Id.t list ref = ref [] (* Positions of variables in the stack which are already 'Saved' (caml2html: emit_stackmap) *)

let print_stackmap () =
  print_endline ("stack: " ^ (String.concat " " !stackmap))

let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = (List.length !stackmap) * 4

let reg r =
  if is_reg r
  then String.sub r 1 (String.length r - 1)
  else r

(* Shuffle registers so that the old content will not be lost *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let xys = List.filter (fun (x, y) -> x <> y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
    (* there are a tuple (y, b) in old xys *)
    (y, sw) :: (x, y) :: shuffle sw (List.map
                                       (function
                                         | (y', z) when y = y' -> (sw, z)
                                         | yz -> yz)
                                       xys)
  | xys, acyc -> acyc @ shuffle sw xys

let retlabel = ref ""

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g buf = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' buf (dest, exp)
  | dest, Let((x, t), exp, e) ->
    g' buf (NonTail(x), exp);
    g buf (dest, e)
and g' buf e =
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  match e with
  | NonTail(_), Nop -> ()
  | NonTail(x), Li(i) -> Printf.bprintf buf "\tli\t%s, %d\n" (reg x) i
  | NonTail(x), FLi(Id.L(l)) ->
    Printf.bprintf buf "\tfli\t%s, %s\n" (reg x) l
  | NonTail(x), SetL(Id.L(y)) ->
    Printf.bprintf buf "\tla\t%s, %s\n" (reg x) y
  | NonTail(x), Mv(y) when x = y -> ()
  | NonTail(x), Mv(y) -> Printf.bprintf buf "\tmv\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Not(y) -> Printf.bprintf buf "\txori\t%s, %s, 1\t# boolean not\n" (reg x) (reg y)
  | NonTail(x), Neg(y) -> Printf.bprintf buf "\tneg\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Xor(y, V(z)) -> Printf.bprintf buf "\txor\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Xor(y, C(z)) -> Printf.bprintf buf "\txori\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Add(y, V(z)) -> Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Add(y, C(z)) -> Printf.bprintf buf "\taddi\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Sub(y, V(z)) -> Printf.bprintf buf "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Sub(y, C(z)) -> Printf.bprintf buf "\taddi\t%s, %s, %d\n" (reg x) (reg y) (-1 * z)
  | NonTail(x), Mul(y, V(z)) -> Printf.bprintf buf "\tmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)    (* アセンブラ非対応 *)
  | NonTail(x), Mul(y, C(z)) when z = 4 -> Printf.bprintf buf "\tslli\t%s, %s, 2\n" (reg x) (reg y) (* built-in *)
  | NonTail(x), Mul(y, C(z)) -> Printf.bprintf buf "\tmuli\t%s, %s, %d\n" (reg x) (reg y) z         (* アセンブラ非対応 *)
  | NonTail(x), Div(y, V(z)) -> Printf.bprintf buf "\tdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)    (* アセンブラ非対応 *)
  | NonTail(x), Div(y, C(z)) when z = 2 -> Printf.bprintf buf "\tsrai\t%s, %s, 1\n" (reg x) (reg y) (* built-in *)
  | NonTail(x), Div(y, C(z)) -> Printf.bprintf buf "\tdivi\t%s, %s, %d\n" (reg x) (reg y) z         (* アセンブラ非対応 *)
  | NonTail(x), Sll(y, V(z)) -> Printf.bprintf buf "\tsll\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Sll(y, C(z)) -> Printf.bprintf buf "\tslli\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Lw(y, V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tlw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(x), Lw(y, C(z)) -> Printf.bprintf buf "\tlw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Sw(x, y, V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n"(reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), Sw(x, y, C(z)) -> Printf.bprintf buf "\tsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(x), FMv(y) when x = y -> ()
  | NonTail(x), FMv(y) -> Printf.bprintf buf "\tfmv\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FNeg(y) -> Printf.bprintf buf "\tfneg\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FAdd(y, z) -> Printf.bprintf buf "\tfadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FSub(y, z) -> Printf.bprintf buf "\tfsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FMul(y, z) -> Printf.bprintf buf "\tfmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FDiv(y, z) -> Printf.bprintf buf "\tfdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FEq(y, z) -> Printf.bprintf buf "\tfeq\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FLE(y, z) -> Printf.bprintf buf "\tfle\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FAbs(y) -> Printf.bprintf buf "\tfabs\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FSqrt(y) -> Printf.bprintf buf "\tfsqrt\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Flw(y, V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tflw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(x), Flw(y, C(z)) -> Printf.bprintf buf "\tflw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Fsw(x, y, V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tfsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), Fsw(x, y, C(z)) -> Printf.bprintf buf "\tfsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Comment(s) -> Printf.bprintf buf "#\t%s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
    save y;
    Printf.bprintf buf "\tsw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
    save y;
    Printf.bprintf buf "\tfsw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
    Printf.bprintf buf "\tlw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(x), Restore(y) ->
    assert (List.mem x allfregs);
    Printf.bprintf buf "\tflw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  (* 末尾だったら計算結果を%a0か%fa0にセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | Sw _ | Fsw _ | Comment _ | Save _ as exp) ->
    g' buf (NonTail(Id.gentmp Type.Unit), exp);
  | Tail, (Li _ | SetL _ | Mv _ | Neg _ | Not _ | Xor _ | Add _ | Sub _ | Mul _ | Div _ | Sll _ | Lw _ as exp) ->
    g' buf (NonTail(regs.(0)), exp);
  | Tail, (FLi _ | FMv _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | FEq _ | FLE _ | FAbs _ | FSqrt _ | Flw _ as exp) ->
    g' buf (NonTail(fregs.(0)), exp);
  | Tail, (Restore(x) as exp) ->
    (match locate x with
     | [i] -> g' buf (NonTail(regs.(0)), exp)
     | [i; j] when i + 1 = j -> g' buf (NonTail(fregs.(0)), exp)
     | _ -> assert false);

    (* IF内がfalseの場合にjump *)
  | Tail, IfEq(x, V(y), e1, e2) ->
    g'_tail_if buf x y e1 e2 "beq" "bne"
  | Tail, IfEq(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       (* 比較するものの一方が0のときは一命令減らせる *)
       g'_tail_if buf x "zero" e1 e2 "beq" "bne"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_tail_if buf x reg_tmp e1 e2 "beq" "bne")
  | Tail, IfLE(x, V(y), e1, e2) ->
    g'_tail_if buf x y e1 e2 "ble" "bgt"
  | Tail, IfLE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_tail_if buf x "zero" e1 e2 "ble" "bgt"
     | _ -> 
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_tail_if buf x reg_tmp e1 e2 "ble" "bgt")
  | Tail, IfGE(x, V(y), e1, e2) ->
    g'_tail_if buf x y e1 e2 "bge" "blt"
  | Tail, IfGE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_tail_if buf x "zero" e1 e2 "bge" "blt"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_tail_if buf x reg_tmp e1 e2 "bge" "blt")
  | Tail, IfFEq(x, y, e1, e2) ->
    (* Store the comparison result in reg_tmp (integer register!) *)
    Printf.bprintf buf "\tfeq\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
    (* reg_tmp = 0 -> not equal -> 分岐する *)
    g'_tail_if buf reg_tmp "zero" e1 e2 "bne" "beq"
  | Tail, IfFLE(x, y, e1, e2) ->
    Printf.bprintf buf "\tfle\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
    (* reg_tmp = 0 -> x > y -> 分岐する *)
    g'_tail_if buf reg_tmp "zero" e1 e2 "bne" "beq"
  | NonTail(z), IfEq(x, V(y), e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "beq" "bne"
  | NonTail(z), IfEq(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_non_tail_if buf (NonTail(z)) x "zero" e1 e2 "beq" "bne"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_non_tail_if buf (NonTail(z)) x reg_tmp e1 e2 "beq" "bne")
  | NonTail(z), IfLE(x, V(y), e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "ble" "bgt"
  | NonTail(z), IfLE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_non_tail_if buf (NonTail(z)) x "zero" e1 e2 "ble" "bgt"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_non_tail_if buf (NonTail(z)) x reg_tmp e1 e2 "ble" "bgt")
  | NonTail(z), IfGE(x, V(y), e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "bge" "blt"
  | NonTail(z), IfGE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_non_tail_if buf (NonTail(z)) x "zero" e1 e2 "bge" "blt"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_non_tail_if buf (NonTail(z)) x reg_tmp e1 e2 "bge" "blt")
  | NonTail(z), IfFEq(x, y, e1, e2) ->
    Printf.bprintf buf "\tfeq\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
    g'_non_tail_if buf (NonTail(z)) reg_tmp "zero" e1 e2 "bne" "beq"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
    Printf.bprintf buf "\tfle\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
    g'_non_tail_if buf (NonTail(z)) reg_tmp "zero" e1 e2 "bne" "beq"

  (* INFO: caller-save regs: ra, t*, a* / callee-save regs: sp, fp, s* *)
  | Tail, CallCls(f, iargs, fargs) ->
    (* TODO: tレジスタから使うようにする(?) *)
    g'_args buf [(f, reg_cl)] iargs fargs;
    Printf.bprintf buf "\tlw\tra, 0(%s)\n" (reg reg_cl);
    Printf.bprintf buf "\tjalr\tra, ra, 0\n";
  | Tail, CallDir(Id.L(f), iargs, fargs) ->
    g'_args buf [] iargs fargs;
    Printf.bprintf buf "\tcall\t%s\n" f;
  | NonTail(a), CallCls(f, iargs, fargs) ->
    g'_args buf [(f, reg_cl)] iargs fargs;
(*
    let ss = stacksize() + 8 in
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" (-1 * ss);
    Printf.bprintf buf "\tsw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\tsw\tfp, %d(sp)\n" (ss - 8);
    Printf.bprintf buf "\taddi\tfp, sp, %d\n" ss;
*)
    Printf.bprintf buf "\tlw\tra, 0(%s)\n" (reg reg_cl); (* set closure address to %ra *)
    Printf.bprintf buf "\tjalr\tra, ra, 0\n";
    if List.mem a allregs && a <> regs.(0) then
      Printf.bprintf buf "\tmv\t%s, %s\n" (reg a) (reg regs.(0))
    else if List.mem a allfregs && a <> fregs.(0) then
      Printf.bprintf buf "\tfmv\t%s, %s\n" (reg a) (reg fregs.(0));
(*
    Printf.bprintf buf "\tlw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\tlw\tfp, %d(sp)\n" (ss - 8);
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" ss;
*)
  | (NonTail(a), CallDir(Id.L(f), iargs, fargs)) ->
    g'_args buf [] iargs fargs;
(*
    let ss = stacksize() + 8 in
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" (-1 * ss);
    Printf.bprintf buf "\tsw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\tsw\tfp, %d(sp)\n" (ss - 8);
    Printf.bprintf buf "\taddi\tfp, sp, %d\n" ss;
*)
    Printf.bprintf buf "\tcall\t%s\n" f;
    if List.mem a allregs && a <> regs.(0) then
      Printf.bprintf buf "\tmv\t%s, %s\n" (reg a) (reg regs.(0))
    else if List.mem a allfregs && a <> fregs.(0) then
      Printf.bprintf buf "\tfmv\t%s, %s\n" (reg a) (reg fregs.(0));
(*
    Printf.bprintf buf "\tlw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\tlw\tfp, %d(sp)\n" (ss - 8);
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" ss;
*)
and g'_tail_if buf rs1 rs2 e1 e2 b bn = (* bはラベルに使うだけで命令には使わない *)
  match e2 with
  | Ans(Nop) ->
    Printf.bprintf buf "\t%s\t%s, %s, %s\n" bn (reg rs1) (reg rs2) !retlabel;
    g buf (Tail, e1) (* if内がtrueの場合 = jumpしなかった場合 *)
  | _ ->
    let b_else = Id.genid (b ^ "_else") in
    Printf.bprintf buf "\t%s\t%s, %s, %s\n" bn (reg rs1) (reg rs2) b_else;
    let stackset_back = !stackset in
    g buf (Tail, e1); (* if内がtrueの場合 = jumpしなかった場合 *)
    Printf.bprintf buf "\tb\t%s\n" !retlabel;
    Printf.bprintf buf "%s:\n" b_else;
    stackset := stackset_back;
    g buf (Tail, e2);
and g'_non_tail_if buf dest rs1 rs2 e1 e2 b bn =
  let does_e2_write =
    match (dest, e2) with
    | _, Ans(Nop) -> false
    | NonTail(x), Ans(Mv(y)) | NonTail(x), Ans(FMv(y)) when x = y -> false
    | _ -> true
  in
  match does_e2_write with
  | false ->
    let b_cont = Id.genid (b ^ "_cont") in
    Printf.bprintf buf "\t%s\t%s, %s, %s\n" bn (reg rs1) (reg rs2) b_cont;
    let stackset_back = !stackset in
    g buf (dest, e1);
    let stackset1 = !stackset in
    Printf.bprintf buf "%s:\n" b_cont;
    stackset := S.inter stackset1 stackset_back
  | _ ->
    let b_else = Id.genid (b ^ "_else") in
    let b_cont = Id.genid (b ^ "_cont") in
    Printf.bprintf buf "\t%s\t%s, %s, %s\n" bn (reg rs1) (reg rs2) b_else;
    let stackset_back = !stackset in
    g buf (dest, e1);
    let stackset1 = !stackset in
    Printf.bprintf buf "\tb\t%s\n" b_cont;
    Printf.bprintf buf "%s:\n" b_else;
    stackset := stackset_back;
    g buf (dest, e2);
    Printf.bprintf buf "%s:\n" b_cont;
    let stackset2 = !stackset in
    stackset := S.inter stackset1 stackset2
and g'_args buf x_reg_cl int_args float_args =
  let (_, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl) (* <- initial value *)
      int_args in
  List.iter
    (fun (y, r) -> Printf.bprintf buf "\tmv\t%s, %s\n" (reg r) (reg y))
    (shuffle reg_sw yrs);
  let (_, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      float_args in
  List.iter
    (fun (z, fr) -> Printf.bprintf buf "\tfmv\t%s, %s\n" (reg fr) (reg z))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  let buf = Buffer.create 128 in
  retlabel := x ^ "_ret";
  g buf (Tail, e);
  let ss = stacksize () + 8 in
  Printf.fprintf oc "\taddi\tsp, sp, %d\n" (-1 * ss);
  Printf.fprintf oc "\tsw\tra, %d(sp)\n" (ss - 4);
  Printf.fprintf oc "\tsw\tfp, %d(sp)\n" (ss - 8);
  Printf.fprintf oc "\taddi\tfp, sp, %d\n" ss;
  Buffer.output_buffer oc buf;
  Printf.fprintf oc "%s_ret:\n" x;
  Printf.fprintf oc "\tlw\tra, %d(sp)\n" (ss - 4);
  Printf.fprintf oc "\tlw\tfp, %d(sp)\n" (ss - 8);
  Printf.fprintf oc "\taddi\tsp, sp, %d\n" ss;
  Printf.fprintf oc "\tjr\tra\n"

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc "\t.text\n";
  Printf.fprintf oc "\t.globl _min_caml_start\n";
  Printf.fprintf oc "_min_caml_start: # main entry point\n";
  Printf.fprintf oc "\tli\tgp, %d\t# initialize gp\n" ((List.length data + 23) * 4);
  Printf.fprintf oc "#\tmain program starts\n";
  stackset := S.empty;
  stackmap := [];
  let buf = Buffer.create 128 in
  g buf (NonTail("_R_0"), e);
  let ss = stacksize () + 8 in
  Printf.fprintf oc "\taddi\tsp, sp, %d\n" (-1 * ss);
  Printf.fprintf oc "\tsw\tra, %d(sp)\n" (ss - 4);
  Printf.fprintf oc "\tsw\tfp, %d(sp)\n" (ss - 8);
  Printf.fprintf oc "\taddi\tfp, sp, %d\n" ss;
  Buffer.output_buffer oc buf;
  Printf.fprintf oc "\tlw\tra, %d(sp)\n" (ss - 4);
  Printf.fprintf oc "\tlw\tfp, %d(sp)\n" (ss - 8);
  Printf.fprintf oc "\taddi\tsp, sp, %d\n" ss;
  Printf.fprintf oc "#\tmain program ends\n";
  Printf.fprintf oc "end:\n";
  Printf.fprintf oc "\tb\tend\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  if data <> [] then
    (Printf.fprintf oc "\t.data\n";
     List.iter
       (fun (Id.L(x), d) ->
          Printf.fprintf oc "%s:\t# %f\n" x d;
          Printf.fprintf oc "\t.word\t%ld\n" (castToInt d))
       data);
