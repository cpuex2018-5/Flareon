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

let rec add mnemo buf : Raw.func = match buf with
  | [] -> assert false
  | [(x, e)] -> [(x, e @ [mnemo])]
  | xe :: xs -> xe :: (add mnemo xs)
let rec adds mnemo buf : Raw.func = match buf with
  | [] -> assert false
  | [(x, e)] -> [(x, e @ mnemo)]
  | xe :: xs -> xe :: (adds mnemo xs)
let rec addl label buf : Raw.func = match buf with
  | [] -> [([label], [])]
  | [(x, [])] -> [(x @ [label], [])]
  (* | [(x, e)] -> [(x @ [label], e)] *)
  | xe :: xs -> xe :: (addl label xs)

let funcname = ref ""

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g buf = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' buf (dest, exp)
  | dest, Let((x, t), exp, e) ->
    let buf' = g' buf (NonTail(x), exp) in
    g buf' (dest, e)
and g' (buf : Raw.func) e : Raw.func =
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  match e with
  | NonTail(_), Nop -> buf
  | NonTail(x), Li(i) -> add (Li(x, i)) buf
  | NonTail(x), FLi(l) -> add (FLi(x, l)) buf
  | NonTail(x), SetL(y) -> add (SetL(x, y)) buf
  | NonTail(x), SetDL(y) -> add (SetDL(x, y)) buf
  | NonTail(x), Mv(y) when x = y -> buf
  | NonTail(x), Mv(y)  -> add (Mv(x, y)) buf
  | NonTail(x), Not(y) -> add (Xor(x, y, `C(1))) buf
  | NonTail(x), Neg(y) -> add (Neg(x, y)) buf
  | NonTail(x), Xor(y, z) -> add (Xor(x, y, z)) buf
  | NonTail(x), Add(y, z) -> add (Add(x, y, z)) buf
  | NonTail(x), Sub(y, z) -> add (Sub(x, y, z)) buf
  | NonTail(x), Mul(y, z) -> add (Mul(x, y, z)) buf
  | NonTail(x), Div(y, z) -> add (Div(x, y, z)) buf
  | NonTail(x), Sll(y, z) -> add (Sll(x, y, z)) buf
  | NonTail(x), Lw(y, `V(z)) -> adds [Add(reg_tmp, y, `V(z)); Lw(x, reg_tmp, `C(0), None)] buf
  | NonTail(x), Lw(y, `C(z)) -> add (Lw(x, y, `C(z), None)) buf
  | NonTail(x), Lw(y, `L(z)) -> add (Lw(x, y, `L(z), None)) buf
  | NonTail(_), Sw(x, y, `V(z)) -> adds [Add(reg_tmp, y, `V(z)); Sw(x, reg_tmp, `C(0), None)] buf
  | NonTail(_), Sw(x, y, `C(z)) -> add (Sw(x, y, `C(z), None)) buf
  | NonTail(_), Sw(x, y, `L(z)) -> add (Sw(x, y, `L(z), None)) buf
  | NonTail(x), FMv(y) when x = y -> buf
  | NonTail(x), FMv(y) -> add (FMv(x, y)) buf
  | NonTail(x), FNeg(y) -> add (FNeg(x, y)) buf
  | NonTail(x), FAdd(y, z) -> add (FAdd(x, y, z)) buf
  | NonTail(x), FSub(y, z) -> add (FSub(x, y, z)) buf
  | NonTail(x), FMul(y, z) -> add (FMul(x, y, z)) buf
  | NonTail(x), FDiv(y, z) -> add (FDiv(x, y, z)) buf
  | NonTail(x), FEq(y, z)  -> add (FEq(x, y, z)) buf
  | NonTail(x), FLE(y, z)  -> add (FLE(x, y, z)) buf
  | NonTail(x), FAbs(y)    -> add (FAbs(x, y)) buf
  | NonTail(x), FSqrt(y)   -> add (FSqrt(x, y)) buf
  | NonTail(x), Flw(y, `V(z)) ->
    adds [Add(reg_tmp, y, `V(z)); Flw(x, reg_tmp, `C(0), None)] buf
  | NonTail(x), Flw(y, `C(z)) -> add (Flw(x, y, `C(z), None)) buf
  | NonTail(x), Flw(y, `L(z)) -> add (Flw(x, y, `L(z), None)) buf
  | NonTail(_), Fsw(x, y, `V(z)) ->
    adds [Add(reg_tmp, y, `V(z)); Fsw(x, reg_tmp, `C(0), None)] buf
  | NonTail(_), Fsw(x, y, `C(z)) -> add (Fsw(x, y, `C(z), None)) buf
  | NonTail(_), Fsw(x, y, `L(z)) -> add (Fsw(x, y, `L(z), None)) buf
  | NonTail(_), Comment(s) -> add (Comment(s)) buf
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
    save y;
    add (Sw(x, reg_sp, `C(offset y), Some("save"))) buf
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
    save y;
    add (Fsw(`V(x), reg_sp, `C(offset y), Some("save"))) buf
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); buf
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
    add (Lw(x, reg_sp, `C(offset y), Some("restore"))) buf
  | NonTail(x), Restore(y) ->
    assert (List.mem x allfregs);
    add (Flw(x, reg_sp, `C(offset y), Some("restore"))) buf
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
    g'_tail_if buf x y e1 e2 "ble" "bgt"
  | Tail, IfGE(x, y, e1, e2) ->
    g'_tail_if buf x y e1 e2 "bge" "blt"
  | NonTail(z), IfEq(x, y, e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "beq" "bne"
  | NonTail(z), IfLE(x, y, e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "ble" "bgt"
  | NonTail(z), IfGE(x, y, e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "bge" "blt"

  (* INFO: caller-save regs: ra, t*, a* / callee-save regs: sp, fp, s* *)
  | Tail, CallCls(f, iargs, fargs) ->
    (* TODO: tレジスタから使うようにする(?) *)
    adds [Lw("ra", reg_cl, `C(0), None); Jalr] buf
  | Tail, CallDir(f, iargs, fargs) ->
    add (Call(f)) buf
  | NonTail(a), CallCls(f, iargs, fargs) ->
(*
    let ss = stacksize() + 4 in
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" (-1 * ss);
    Printf.bprintf buf "\tsw\tra, %d(sp)\n" (ss - 4);
*)
    let buf' = adds [Lw("ra", reg_cl, `C(0), None); Jalr] buf in
    if List.mem a allregs && a <> regs.(0) then
      add (Mv(a, regs.(0))) buf'
    else if List.mem a allfregs && a <> fregs.(0) then
      add (FMv(a, fregs.(0))) buf'
    else
      buf'
(*
    Printf.bprintf buf "\tlw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" ss;
*)
  | (NonTail(a), CallDir(f, iargs, fargs)) ->
(*
    let ss = stacksize() + 4 in
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" (-1 * ss);
    Printf.bprintf buf "\tsw\tra, %d(sp)\n" (ss - 4);
*)
    let buf' = add (Call(f)) buf in
    if List.mem a allregs && a <> regs.(0) then
      add (Mv(a, regs.(0))) buf'
    else if List.mem a allfregs && a <> fregs.(0) then
      add (FMv(a, fregs.(0))) buf'
    else
      buf'
(*
    Printf.bprintf buf "\tlw\tra, %d(sp)\n" (ss - 4);
    Printf.bprintf buf "\taddi\tsp, sp, %d\n" ss;
*)
and g'_branch buf mnemo rs1 rs2 label =
  match rs2 with
  | `V(rs2) ->
    add (Raw.Bc(mnemo, rs1, `V(rs2), label)) buf
  | `C(0) ->
    add (Raw.Bc(mnemo, rs1, `V "zero", label)) buf
  | `C(n) when 0 < n && n < 32 ->
    add (Raw.Bc(mnemo, rs1, `C n, label)) buf
  | `C(n) ->
    adds [Li(reg_tmp, n); Raw.Bc(mnemo, rs1, `V(reg_tmp), label)] buf
and g'_tail_if buf rs1 rs2 e1 e2 b bn =
  match e2 with
  | Ans(Nop) ->
    let buf' = g'_branch buf bn rs1 rs2 (Id.L(!funcname ^ "_ret")) in
    g buf' (Tail, e1) (* if内がtrueの場合 = jumpしなかった場合 *)
  | _ ->
    let b_else = Id.L(Id.genid ("." ^ !funcname ^ "_else")) in
    let buf' = g'_branch buf bn rs1 rs2 b_else in
    let stackset_back = !stackset in
    let buf' = g buf' (Tail, e1) (* if内がtrueの場合 = jumpしなかった場合 *)
               |> add (B(Id.L(!funcname ^ "_ret")))
               |> addl b_else
    in
    stackset := stackset_back;
    g buf' (Tail, e2)
and g'_non_tail_if buf dest rs1 rs2 e1 e2 b bn =
  let does_write e =
    match (dest, e) with
    | _, Ans(Nop) -> false
    | NonTail(x), Ans(Mv(y)) | NonTail(x), Ans(FMv(y)) when x = y -> false
    | _ -> true
  in
  let unsymmetry = match rs2 with `C(0) -> false | `C(_) -> b = "bge" || b = "ble" | _ -> false in
  if not (does_write e2) then
    (let b_cont = Id.L(Id.genid ("." ^ !funcname ^ "_cont")) in
     let buf' = g'_branch buf bn rs1 rs2 b_cont in
     let stackset_back = !stackset in
     let buf' = g buf' (dest, e1) in
     stackset := stackset_back;
     addl b_cont buf')
  else
  if not (does_write e1) && not unsymmetry then
    (let b_cont = Id.L(Id.genid ("." ^ !funcname ^ "_cont")) in
     let buf' = g'_branch buf b rs1 rs2 b_cont in (* NOTE: b = "bgei" or "blei" shouldn't reach here *)
     let stackset_back = !stackset in
     let buf' = g buf' (dest, e2) in
     stackset := stackset_back;
     addl b_cont buf')
  else
    (let b_else = Id.L(Id.genid ("." ^ !funcname ^ "_else")) in
     let b_cont = Id.L(Id.genid ("." ^ !funcname ^ "_cont")) in
     let buf' = g'_branch buf bn rs1 rs2 b_else in
     let stackset_back = !stackset in
     let buf' = g buf' (dest, e1) in
     let stackset1 = !stackset in
     let buf' = add (B(b_cont)) buf'
                |> addl b_else in
     stackset := stackset_back;
     let buf' = g buf' (dest, e2) in
     let stackset2 = !stackset in
     stackset := S.inter stackset1 stackset2;
     addl b_cont buf')

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  let buf = addl (Id.L(x)) [] in
  stackset := S.empty;
  stackmap := [];
  funcname := String.sub x 0 (String.rindex x '_');
  let buf' = g buf (Tail, e) in
  let ss = stacksize () in
  let prologue =
    (if (Asm.has_call e) then
       [Raw.Add("sp", "sp", `C(-1 * ss - 4)); Raw.Sw("ra", "sp", `C(ss), None)]
     else if ss > 0 then
       [Raw.Add("sp", "sp", `C(-1 * ss))]
     else
       []) in
  let buf' = let (l, e) = List.hd buf' in (l, prologue @ e) :: (List.tl buf') in
  Id.resetCounter ();
  let buf' = Peephole.f buf' in (* [XXX] peephole optimization *)
  Raw.output_buffer oc buf';
  Printf.fprintf oc "%s_ret:\n" !funcname;
  if (Asm.has_call e) then
    (Printf.fprintf oc "\tlw\tra, %d(sp)\n" ss;
     Printf.fprintf oc "\taddi\tsp, sp, %d\n" (ss + 4))
  else if ss > 0 then
    Printf.fprintf oc "\taddi\tsp, sp, %d\n" ss;
  Printf.fprintf oc "\tjr\tra\n"

let f oc globals (Prog(data, fundefs, e)) =
  let global_size = Globals.global_size() + List.length data + 23 in
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc "\t.text\n";
  let buf = addl (Id.L("_min_caml_start")) []
            |> add (Raw.Li("gp", global_size * 4)) in
  stackset := S.empty;
  stackmap := [];
  funcname := "main";
  Id.resetCounter ();
  let buf' = g buf (NonTail("_R_0"), e) in
  let ss = stacksize () in
  if ss > 0 then
    Printf.fprintf oc "\taddi\tsp, sp, %d\n" (-1 * ss);
  let buf' = Peephole.f buf' in (* [XXX] peephole optimization *)
  Raw.output_buffer oc buf';
  if ss > 0 then
    Printf.fprintf oc "\taddi\tsp, sp, %d\n" ss;
  Printf.fprintf oc "end:\n";
  Printf.fprintf oc "\tb\tend\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "\t.data\n";
  if data <> [] then
    List.iter
      (fun (Id.L(x), d) ->
         Printf.fprintf oc "%s:\t# %f\n" x d;
         Printf.fprintf oc "\t.word\t%ld\n" (castToInt d))
      data;
