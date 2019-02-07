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

let funcname = ref ""

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
  | NonTail(x), FLi(Id.L(l)) -> Printf.bprintf buf "\tfli\t%s, %s\n" (reg x) l
  | NonTail(x), SetL(Id.L(y)) -> Printf.bprintf buf "\tla\t%s, %s\n" (reg x) y
  | NonTail(x), SetDL(Id.L(y)) -> Printf.bprintf buf "\tlda\t%s, %s\n" (reg x) y
  | NonTail(x), Mv(y) when x = y -> ()
  | NonTail(x), Mv(y) -> Printf.bprintf buf "\tmv\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Not(y) -> Printf.bprintf buf "\txori\t%s, %s, 1\t# boolean not\n" (reg x) (reg y)
  | NonTail(x), Neg(y) -> Printf.bprintf buf "\tneg\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Xor(y, `V(z)) -> Printf.bprintf buf "\txor\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Xor(y, `C(z)) -> Printf.bprintf buf "\txori\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Add(y, `V(z)) -> Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Add(y, `C(z)) -> Printf.bprintf buf "\taddi\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Sub(y, `V(z)) -> Printf.bprintf buf "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Sub(y, `C(z)) -> Printf.bprintf buf "\taddi\t%s, %s, %d\n" (reg x) (reg y) (-1 * z)
  | NonTail(x), Mul(y, `V(z)) -> Printf.bprintf buf "\tmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)    (* アセンブラ非対応 *)
  | NonTail(x), Mul(y, `C(z)) when z = 4 -> Printf.bprintf buf "\tslli\t%s, %s, 2\n" (reg x) (reg y) (* built-in *)
  | NonTail(x), Mul(y, `C(z)) -> Printf.bprintf buf "\tmuli\t%s, %s, %d\n" (reg x) (reg y) z         (* アセンブラ非対応 *)
  | NonTail(x), Div(y, `V(z)) -> Printf.bprintf buf "\tdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)    (* アセンブラ非対応 *)
  | NonTail(x), Div(y, `C(z)) when z = 2 -> Printf.bprintf buf "\tsrai\t%s, %s, 1\n" (reg x) (reg y) (* built-in *)
  | NonTail(x), Div(y, `C(z)) -> Printf.bprintf buf "\tdivi\t%s, %s, %d\n" (reg x) (reg y) z         (* アセンブラ非対応 *)
  | NonTail(x), Sll(y, `V(z)) -> Printf.bprintf buf "\tsll\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Sll(y, `C(z)) -> Printf.bprintf buf "\tslli\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Lw(y, `L(Id.L(l))) ->
    Printf.bprintf buf "\tlwl\t%s, %s(%s)\n" (reg x) l (reg y)
  | NonTail(x), Lw(y, `V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tlw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(x), Lw(y, `C(z)) -> Printf.bprintf buf "\tlw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Sw(x, y, `L(Id.L(l))) ->
    Printf.bprintf buf "\tswl\t%s, %s(%s)\n" (reg x) l (reg y)
  | NonTail(_), Sw(x, y, `V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n"(reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), Sw(x, y, `C(z)) -> Printf.bprintf buf "\tsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(x), FMv(y) when x = y -> ()
  | NonTail(x), FMv(y) -> Printf.bprintf buf "\tfmv\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FNeg(y) -> Printf.bprintf buf "\tfneg\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FAdd(y, z) -> Printf.bprintf buf "\tfadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FSub(y, z) -> Printf.bprintf buf "\tfsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FMul(y, z) -> Printf.bprintf buf "\tfmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FDiv(y, z) -> Printf.bprintf buf "\tfdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FEq(y, `V(z)) -> Printf.bprintf buf "\tfeq\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FEq(y, `FZero) -> Printf.bprintf buf "\tfeq\t%s, %s, fzero\n" (reg x) (reg y)
  | NonTail(x), FLE(`V(y), `V(z)) -> Printf.bprintf buf "\tfle\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FLE(`V(y), `FZero) -> Printf.bprintf buf "\tfle\t%s, %s, fzero\n" (reg x) (reg y)
  | NonTail(x), FLE(`FZero, `V(z)) -> Printf.bprintf buf "\tfle\t%s, fzero, %s\n" (reg x) (reg z)
  | NonTail(x), FLE(`FZero, `FZero) -> Printf.bprintf buf "\tfle\t%s, fzero, fzero\n" (reg x) (* won't happen *)
  | NonTail(x), FAbs(y) -> Printf.bprintf buf "\tfabs\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FSqrt(y) -> Printf.bprintf buf "\tfsqrt\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Flw(y, `L(Id.L(l))) ->
    Printf.bprintf buf "\tflwl\t%s, %s(%s)\n" (reg x) l (reg y)
  | NonTail(x), Flw(y, `V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tflw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(x), Flw(y, `C(z)) -> Printf.bprintf buf "\tflw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Fsw(`V(x), y, `L(Id.L(l))) ->
    Printf.bprintf buf "\tfswl\t%s, %s(%s)\n" (reg x) l (reg y)
  | NonTail(_), Fsw(`FZero, y, `L(Id.L(l))) ->
    Printf.bprintf buf "\tfswl\tfzero, %s(%s)\n" l (reg y)
  | NonTail(_), Fsw(`V(x), y, `V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tfsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), Fsw(`FZero, y, `V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tfsw\tfzero, 0(%s)\n" (reg reg_tmp)
  | NonTail(_), Fsw(`V(x), y, `C(z)) -> Printf.bprintf buf "\tfsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Fsw(`FZero, y, `C(z)) -> Printf.bprintf buf "\tfsw\tfzero, %d(%s)\n" z (reg y)
  | NonTail(_), Comment(s) -> Printf.bprintf buf "#\t%s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
    save y;
    Printf.bprintf buf "\tsw\t%s, %d(%s)\t# save\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
    save y;
    Printf.bprintf buf "\tfsw\t%s, %d(%s)\t# save\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
    Printf.bprintf buf "\tlw\t%s, %d(%s)\t# restore\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(x), Restore(y) ->
    assert (List.mem x allfregs);
    Printf.bprintf buf "\tflw\t%s, %d(%s)\t# restore\n" (reg x) (offset y) (reg reg_sp)
  (* 末尾だったら計算結果を%a0か%fa0にセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | Sw _ | Fsw _ | Comment _ | Save _ as exp) ->
    g' buf (NonTail(Id.gentmp Type.Unit), exp);
  | Tail, (Li _ | SetL _ | SetDL _ | Mv _ | Neg _ | Not _ | Xor _ | Add _ | Sub _ | Mul _ | Div _ | Sll _ | Lw _ as exp) ->
    g' buf (NonTail(regs.(0)), exp);
  | Tail, (FLi _ | FMv _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | FEq _ | FLE _ | FAbs _ | FSqrt _ | Flw _ as exp) ->
    g' buf (NonTail(fregs.(0)), exp);
  | Tail, (Restore(x) as exp) ->
    (match locate x with
     | [i] -> g' buf (NonTail(regs.(0)), exp)
     | [i; j] when i + 1 = j -> g' buf (NonTail(fregs.(0)), exp)
     | _ -> assert false);

    (* IF内がfalseの場合にjump *)
    (* branch with immedaiteはbeqi, bnei, blti, bgtiのみ *)
  | Tail, IfEq(x, y, e1, e2) ->
    g'_tail_if buf x y e1 e2 "beq" "bne"
  | Tail, IfLE(x, y, e1, e2) ->
(*
    (match y with
     | `V(y) -> g'_tail_if buf x (`V(y)) e1 e2 "ble" "bgt"
     | `C(0) -> g'_tail_if buf x (`V("zero")) e1 e2 "ble" "bgt"
     | `C(n) ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) n;
       g'_tail_if buf x (`V(reg_tmp)) e1 e2 "ble" "bgt")
*)
    g'_tail_if buf x y e1 e2 "ble" "bgt"
  | Tail, IfGE(x, y, e1, e2) ->
    g'_tail_if buf x y e1 e2 "bge" "blt"
  | NonTail(z), IfEq(x, y, e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "beq" "bne"
  | NonTail(z), IfLE(x, y, e1, e2) ->
(*
    (match y with
     | `V(y) -> g'_non_tail_if buf (NonTail(z)) x (`V(y)) e1 e2 "ble" "bgt"
     | `C(0) -> g'_non_tail_if buf (NonTail(z)) x (`V("zero")) e1 e2 "ble" "bgt"
     | `C(n) ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) n;
       g'_non_tail_if buf (NonTail(z)) x (`V(reg_tmp)) e1 e2 "ble" "bgt")
*)
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "ble" "bgt"
  | NonTail(z), IfGE(x, y, e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "bge" "blt"

  (* INFO: caller-save regs: ra, t*, a* / callee-save regs: sp, fp, s* *)
  | Tail, CallCls(f, iargs, fargs) ->
    (* TODO: tレジスタから使うようにする(?) *)
    Printf.bprintf buf "\tlw\tra, 0(%s)\n" (reg reg_cl);
    Printf.bprintf buf "\tjalr\tra, ra, 0\n";
  | Tail, CallDir(Id.L(f), iargs, fargs) ->
    Printf.bprintf buf "\tcall\t%s\n" f;
  | NonTail(a), CallCls(f, iargs, fargs) ->
(*
    let ss = stacksize() + 4 in
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" (-1 * ss);
    Printf.bprintf buf "\tsw\tra, %d(sp)\n" (ss - 4);
*)
    Printf.bprintf buf "\tlw\tra, 0(%s)\n" (reg reg_cl); (* set closure address to %ra *)
    Printf.bprintf buf "\tjalr\tra, ra, 0\n";
    if List.mem a allregs && a <> regs.(0) then
      Printf.bprintf buf "\tmv\t%s, %s\n" (reg a) (reg regs.(0))
    else if List.mem a allfregs && a <> fregs.(0) then
      Printf.bprintf buf "\tfmv\t%s, %s\n" (reg a) (reg fregs.(0));
(*
    Printf.bprintf buf "\tlw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" ss;
*)
  | (NonTail(a), CallDir(Id.L(f), iargs, fargs)) ->
(*
    let ss = stacksize() + 4 in
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" (-1 * ss);
    Printf.bprintf buf "\tsw\tra, %d(sp)\n" (ss - 4);
*)
    Printf.bprintf buf "\tcall\t%s\n" f;
    if List.mem a allregs && a <> regs.(0) then
      Printf.bprintf buf "\tmv\t%s, %s\n" (reg a) (reg regs.(0))
    else if List.mem a allfregs && a <> fregs.(0) then
      Printf.bprintf buf "\tfmv\t%s, %s\n" (reg a) (reg fregs.(0));
(*
    Printf.bprintf buf "\tlw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" ss;
*)
and g'_branch buf mnemo rs1 rs2 label =
  match rs2 with
  | `V(rs2) ->
    Printf.bprintf buf "\t%s\t%s, %s, %s\n" mnemo (reg rs1) (reg rs2) label
  | `C(0) ->
    Printf.bprintf buf "\t%s\t%s, zero, %s\n" mnemo (reg rs1) label
  | `C(n) when 0 < n && n < 32 ->
    Printf.bprintf buf "\t%si\t%s, %d, %s\n" mnemo (reg rs1) n label
  | `C(n) ->
    Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) n;
    Printf.bprintf buf "\t%s\t%s, %s, %s\n" mnemo (reg rs1) (reg reg_tmp) label
and g'_tail_if buf rs1 rs2 e1 e2 b bn =
  match e2 with
  | Ans(Nop) ->
    g'_branch buf bn rs1 rs2 (!funcname ^ "_ret");
    g buf (Tail, e1) (* if内がtrueの場合 = jumpしなかった場合 *)
  | _ ->
    let b_else = Id.genid ("." ^ !funcname ^ "_else") in
    g'_branch buf bn rs1 rs2 b_else;
    let stackset_back = !stackset in
    g buf (Tail, e1); (* if内がtrueの場合 = jumpしなかった場合 *)
    Printf.bprintf buf "\tb\t%s_ret\n" !funcname;
    Printf.bprintf buf "%s:\n" b_else;
    stackset := stackset_back;
    g buf (Tail, e2);
and g'_non_tail_if buf dest rs1 rs2 e1 e2 b bn =
  let does_write e =
    match (dest, e) with
    | _, Ans(Nop) -> false
    | NonTail(x), Ans(Mv(y)) | NonTail(x), Ans(FMv(y)) when x = y -> false
    | _ -> true
  in
  let unsymmetry = match rs2 with `C(_) -> b = "bge" || b = "ble" | _ -> false in
  if not (does_write e2) then
    (let b_cont = Id.genid ("." ^ !funcname ^ "_cont") in
     g'_branch buf bn rs1 rs2 b_cont;
     let stackset_back = !stackset in
     g buf (dest, e1);
     Printf.bprintf buf "%s:\n" b_cont;
     stackset := stackset_back)
  else
  if not (does_write e1 || unsymmetry) then
    (let b_cont = Id.genid ("." ^ !funcname ^ "_cont") in
     g'_branch buf b rs1 rs2 b_cont; (* NOTE: b = "bgei" or "blei" shouldn't reach here *)
     let stackset_back = !stackset in
     g buf (dest, e2);
     Printf.bprintf buf "%s:\n" b_cont;
     stackset := stackset_back)
  else
    (let b_else = Id.genid ("." ^ !funcname ^ "_else") in
     let b_cont = Id.genid ("." ^ !funcname ^ "_cont") in
     g'_branch buf bn rs1 rs2 b_else;
     let stackset_back = !stackset in
     g buf (dest, e1);
     let stackset1 = !stackset in
     Printf.bprintf buf "\tb\t%s\n" b_cont;
     Printf.bprintf buf "%s:\n" b_else;
     stackset := stackset_back;
     g buf (dest, e2);
     Printf.bprintf buf "%s:\n" b_cont;
     let stackset2 = !stackset in
     stackset := S.inter stackset1 stackset2)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  let buf = Buffer.create 128 in
  funcname := String.sub x 0 (String.rindex x '_');
  g buf (Tail, e);
  let ss = stacksize () in
  if (Asm.has_call e) then
    (Printf.fprintf oc "\taddi\tsp, sp, %d\n" (-1 * ss - 4);
     Printf.fprintf oc "\tsw\tra, %d(sp)\n" ss)
  else if ss > 0 then
    Printf.fprintf oc "\taddi\tsp, sp, %d\n" (-1 * ss);
  Id.resetCounter ();
  Buffer.output_buffer oc buf;
  Printf.fprintf oc "%s_ret:\n" !funcname;
  if (Asm.has_call e) then
    (Printf.fprintf oc "\tlw\tra, %d(sp)\n" ss;
     Printf.fprintf oc "\taddi\tsp, sp, %d\n" (ss + 4))
  else if ss > 0 then
    Printf.fprintf oc "\taddi\tsp, sp, %d\n" ss;
  Printf.fprintf oc "\tjr\tra\n"

let print_globals oc globals =
  List.iter
    (fun (str, len, init) ->
       Printf.fprintf oc "%s:\n" str;
       for i = 1 to len do
         Printf.fprintf oc "\t.word\t%s\n" init;
       done)
    globals.single_array;
  List.iter
    (fun (str, init) ->
       Printf.fprintf oc "%s:\n" str;
       List.iter (fun s -> Printf.fprintf oc "\t.word\t%s\n" s) init)
    globals.nested_tuple;
  List.iter
    (fun (str, len, init) ->
       Printf.fprintf oc "%s:\n" str;
       for i = 1 to len do
         Printf.fprintf oc "\t.word\t.%s_%d\n" str i;
       done)
    globals.tuple_array;
  List.iter
    (fun (str, len, init) ->
       for i = 1 to len do
         (Printf.fprintf oc ".%s_%d:\n" str i;
          List.iter (fun v -> Printf.fprintf oc "\t.word\t%ld\n" (Int32.of_int v)) init);
       done)
    globals.tuple_array;
  List.iter
    (fun (str, len, init) ->
       Printf.fprintf oc "%s:\n" str;
       for i = 1 to len do
         Printf.fprintf oc "\t.word\t%s\n" init;
       done)
    globals.sub_array

let f oc globals (Prog(data, fundefs, e)) =
  let global_size = Asm.global_size() + List.length data + 23 in
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc "\t.text\n";
  Printf.fprintf oc "\t.globl _min_caml_start\n";
  Printf.fprintf oc "_min_caml_start: # main entry point\n";
  Printf.fprintf oc "\tli\tgp, %d\t# initialize gp\n" (global_size * 4);
  Printf.fprintf oc "#\tmain program starts\n";
  stackset := S.empty;
  stackmap := [];
  let buf = Buffer.create 128 in
  funcname := "main";
  Id.resetCounter ();
  g buf (NonTail("_R_0"), e);
  let ss = stacksize () in
  if ss > 0 then
    Printf.fprintf oc "\taddi\tsp, sp, %d\n" (-1 * ss);
  Buffer.output_buffer oc buf;
  if ss > 0 then
    Printf.fprintf oc "\taddi\tsp, sp, %d\n" ss;
  Printf.fprintf oc "#\tmain program ends\n";
  Printf.fprintf oc "end:\n";
  Printf.fprintf oc "\tb\tend\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "\t.data\n";
  (* print_globals oc globals; *)
  if data <> [] then
    List.iter
      (fun (Id.L(x), d) ->
         Printf.fprintf oc "%s:\t# %f\n" x d;
         Printf.fprintf oc "\t.word\t%ld\n" (castToInt d))
      data;
