open Asm

(* regenv : (variable * register) list *)
let var2reg var regenv =
  snd (List.find (fun (y, r) -> y = var) regenv)

let reg2var reg regenv =
  fst (List.find (fun (y, r) -> r = reg) regenv)

let mem var regenv =
  List.exists (fun (y, r) -> y = var) regenv

let remove var regenv =
  List.filter (fun (y, r) -> y <> var) regenv

let remove_r reg regenv =
  List.filter (fun (y, r) -> r <> reg) regenv

(* for register coalescing *)
(* 変数srcが以後の命令列で特定のレジスタで使われることがわかればそのようなレジスタのリストを返す (register targeting) *)
let rec target src dest (e : Asm.t) : bool * Id.t list =
  match e with
  | Ans(exp) -> target' src dest exp
  | Let(xt, exp, e) ->
    let c1, rs1 = target' src xt exp in
    match c1 with
    | true -> (* expにcallが含まれる場合 *) true, rs1
    | false ->
      let c2, rs2 = target src dest e in
      c2, rs1 @ rs2
and target' src (dest, t) (e : Asm.exp) : bool * Id.t list =
  match e with
  (* [XXX] Callがあったら、そこから先は無意味というか逆効果なので追わない。
           そのために「Callがあったかどうか」を返り値の第1要素に含める。 *)
  | Mv(x) when x = src && is_reg dest -> (* 同じレジスタ間でのMv *)
    assert (t <> Type.Unit);
    assert (t <> Type.Float);
    false, [dest]
  | FMv(x) when x = src && is_reg dest -> (* 同じレジスタ間でのMv *)
    assert (t = Type.Float);
    false, [dest]
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2) ->
    let c1, rs1 = target src (dest, t) e1 in
    let c2, rs2 = target src (dest, t) e2 in
    c1 && c2, rs1 @ rs2
  | CallCls(x, ys, zs) ->
    true, (target_args src regs 0 ys @
           target_args src fregs 0 zs @
           if x = src then [reg_cl] else [])
  | CallDir(Id.L(x), ys, zs) ->
    true, (target_args src regs 0 ys @
           target_args src fregs 0 zs)
  | _ -> false, []
and target_args src all n = function (* auxiliary function for Call *)
  | [] -> []
  | y :: ys when src = y -> all.(n) :: target_args src all (n + 1) ys
  | _ :: ys -> target_args src all (n + 1) ys

let rec is_used_before_call reg e regenv : bool =
  match e with
  | Ans(exp) -> List.mem reg (fv_exp exp)
  | Let(_, exp, e) -> match exp with
    | CallCls _ | CallDir _ -> List.mem reg (fv_exp exp)
    | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) | IfGE(x, y, e1, e2) ->
      List.mem reg (x :: fv_id_or_imm y) ||
      is_used_before_call reg e1 regenv || is_used_before_call reg e2 regenv
    | _ -> List.mem reg (fv_exp exp) || is_used_before_call reg e regenv

type alloc_result = (* allocにおいてspillingがあったかどうかを表すデータ型 *)
  | Alloc of Id.t (* allocated register *)
  | Spill of Id.t (* spilled variable *)
let rec alloc dest cont regenv x t =
  (* allocate a register or spill a variable *)
  assert (not (mem x regenv));
  let all =
    match t with
    | Type.Unit -> ["%r0"] (* dummy *)
    | Type.Float -> allfregs
    | _ -> allregs in
  if all = ["%r0"] then Alloc("%r0") else (* [XX] ad hoc optimization *)
  if is_reg x then Alloc(x) else
    let free = fv cont in
    try
      (* prefer : レジスタのlist *)
      let (_, prefer) = target x dest cont in
      let live : S.t = (* 生きているレジスタ *)
        List.fold_left
          (fun live y ->
             if is_reg y then S.add y live else
               try S.add (var2reg y regenv) live
               with Not_found -> live)
          S.empty
          free in
      (if (List.for_all (fun r -> (S.mem r live)) prefer) && prefer <> [] &&
          (let x' = reg2var (List.hd prefer) regenv in not (is_used_before_call x' cont regenv)) then
         ((* Format.eprintf "Forcefully spilling %s@." (List.hd prefer); *)
          Spill(reg2var (List.hd prefer) regenv))
       else
         let r : Id.t = (* そうでないレジスタを探す *)
           List.find
             (fun r -> not (S.mem r live))
             (prefer @ all) in
         (* Format.eprintf "len(prefer) = %d, allocated %s to %s@." (List.length prefer) x r; *)
         Alloc(r))
    with Not_found ->
      Format.eprintf "register allocation failed for %s@." x;
      let y = (* 型の合うレジスタ変数を探す *)
        List.find
          (fun y ->
             not (is_reg y) &&
             try List.mem (var2reg y regenv) all
             with Not_found -> false)
          (List.rev free) in
      Format.eprintf "spilling %s from %s@." y (var2reg y regenv);
      Spill(y)

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

(* auxiliary function for g and g'_and_restore *)
let add x r regenv =
  if is_reg x then (assert (x = r); regenv) else
    (x, r) :: regenv

(* auxiliary functions for g' *)
exception NoReg of Id.t * Type.t
let find x t regenv =
  if is_reg x then x else
    try var2reg x regenv
    with Not_found -> raise (NoReg(x, t))
let find'   (x : id_or_imm) regenv : id_or_imm = match x with | V(x) -> V(find x Type.Int regenv) | _ -> x
let find'_l (x : id_imm_or_label) regenv : id_imm_or_label = match x with | V(x) -> V(find x Type.Int regenv) | _ -> x
let find'_f (x : id_or_fimm) regenv : id_or_fimm = match x with | V(x) -> V(find x Type.Float regenv) | _ -> x

let rec g dest cont regenv = function (* 命令列のレジスタ割り当て (caml2html: regalloc_g) *)
  | Ans(exp) -> g'_and_restore dest cont regenv exp
  | Let((x, t) as xt, exp, e) ->
    assert (not (mem x regenv));
    (* let dest = e in cont をつくる *)
    let cont' = concat e dest cont in
    let (e1', regenv1) = g'_and_restore xt cont' regenv exp in
    (match alloc dest cont' regenv1 x t with
     | Spill(y) ->
       let r = var2reg y regenv1 in
       let (e2', regenv2) = g dest cont (add x r (remove y regenv1)) e in
       let save =
         try Save(var2reg y regenv, y)
         with Not_found -> Nop in
       (seq(save, concat e1' (r, t) e2'), regenv2)
     | Alloc(r) ->
       let (e2', regenv2) = g dest cont (add x r regenv1) e in
       (* let (r, t) = e1' in e2' *)
       (concat e1' (r, t) e2', regenv2))
and g'_and_restore dest cont regenv exp = (* 使用される変数をスタックからレジスタへRestore (caml2html: regalloc_unspill) *)
  try g' dest cont regenv exp
  with NoReg(x, t) ->
    ((* Format.eprintf "restoring %s@." x; *)
     g dest cont regenv (Let((x, t), Restore(x), Ans(exp))))
and g' dest cont regenv = function (* 各命令のレジスタ割り当て (caml2html: regalloc_gprime) *)
  | Nop | Li _ | SetL _ | SetDL _ | Comment _ | Restore _ | FLi _ as exp -> (Ans(exp), regenv)
  | Mv(x) -> (Ans(Mv(find x Type.Int regenv)), regenv)
  | Not(x) -> (Ans(Not(find x Type.Int regenv)), regenv)
  | Neg(x) -> (Ans(Neg(find x Type.Int regenv)), regenv)
  | Xor(x, y') -> (Ans(Xor(find x Type.Int regenv, find' y' regenv)), regenv)
  | Add(x, y') -> (Ans(Add(find x Type.Int regenv, find' y' regenv)), regenv)
  | Sub(x, y') -> (Ans(Sub(find x Type.Int regenv, find' y' regenv)), regenv)
  | Mul(x, y') -> (Ans(Mul(find x Type.Int regenv, find' y' regenv)), regenv)
  | Div(x, y') -> (Ans(Div(find x Type.Int regenv, find' y' regenv)), regenv)
  | Sll(x, y') -> (Ans(Sll(find x Type.Int regenv, find' y' regenv)), regenv)
  | Lw(x, y') -> (Ans(Lw(find x Type.Int regenv, find'_l y' regenv)), regenv)
  | Sw(x, y, z') -> (Ans(Sw(find x Type.Int regenv, find y Type.Int regenv, find'_l z' regenv)), regenv)
  | FMv(x) -> (Ans(FMv(find x Type.Float regenv)), regenv)
  | FNeg(x) -> (Ans(FNeg(find x Type.Float regenv)), regenv)
  | FAdd(x, y) -> (Ans(FAdd(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | FSub(x, y) -> (Ans(FSub(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | FMul(x, y) -> (Ans(FMul(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | FDiv(x, y) -> (Ans(FDiv(find x Type.Float regenv, find y Type.Float regenv)), regenv)
  | FEq(x, y) -> (Ans(FEq(find x Type.Float regenv, find'_f y regenv)), regenv)
  | FLE(x, y) -> (Ans(FLE(find'_f x regenv, find'_f y regenv)), regenv)
  | FAbs(x) -> (Ans(FAbs(find x Type.Float regenv)), regenv)
  | FSqrt(x) -> (Ans(FSqrt(find x Type.Float regenv)), regenv)
  | Flw(x, y') -> (Ans(Flw(find x Type.Int regenv, find'_l y' regenv)), regenv)
  | Fsw(x, y, z') -> (Ans(Fsw(find'_f x regenv, find y Type.Int regenv, find'_l z' regenv)), regenv)
  | IfEq(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfEq(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2
  | IfLE(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfLE(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2
  | IfGE(x, y', e1, e2) as exp -> g'_if dest cont regenv exp (fun e1' e2' -> IfGE(find x Type.Int regenv, find' y' regenv, e1', e2')) e1 e2
  | CallCls(x, iargs, fargs) ->
    (match List.length iargs > Array.length regs - 2 || List.length fargs > Array.length fregs - 1 with
     | true  -> failwith (Format.sprintf "cannot allocate registers for arugments to %s" x)
     | false ->
       let fargs = List.map (fun z -> find z Type.Float regenv) fargs in
       let iargs = List.map (fun y -> find y Type.Int regenv) iargs in
       let e' = Ans(CallCls(find x Type.Int regenv, iargs, fargs)) in
       g'_call dest cont regenv e' [(x, reg_cl)] x iargs fargs)
  | CallDir(Id.L(x), iargs, fargs) ->
    (match List.length iargs > Array.length regs - 1 || List.length fargs > Array.length fregs - 1 with
     | true  -> failwith (Format.sprintf "cannot allocate registers for arugments to %s" x)
     | false ->
       let fargs = List.map (fun z -> find z Type.Float regenv) fargs in
       let iargs = List.map (fun y -> find y Type.Int regenv) iargs in
       let e' = Ans(CallDir(Id.L(x), iargs, fargs)) in
       g'_call dest cont regenv e' [] x iargs fargs)
  | Save(x, y) -> assert false
and g'_if dest cont regenv exp constr e1 e2 = (* ifのレジスタ割り当て (caml2html: regalloc_if) *)
  let (e1', regenv1) = g dest cont regenv e1 in
  let (e2', regenv2) = g dest cont regenv e2 in
  let regenv' = (* 両方に共通のレジスタ変数だけ利用 *)
    List.fold_left
      (fun regenv' x ->
         try
           if is_reg x then regenv' else
             let r1 = var2reg x regenv1 in
             let r2 = var2reg x regenv2 in
             if r1 <> r2 then regenv' else
               (x, r1) :: regenv'
         with Not_found -> regenv')
      []
      (fv cont) in
  (List.fold_left
     (fun e x ->
        if x = fst dest || not (mem x regenv) || mem x regenv' then e else
          seq(Save(var2reg x regenv, x), e)) (* そうでない変数は分岐直前にセーブ *)
     (Ans(constr e1' e2'))
     (fv cont),
   regenv')
and g'_call dest cont regenv e' x_reg_cl f iargs fargs = (* 関数呼び出しのレジスタ割り当て (caml2html: regalloc_call) *)
  let (_, iargs') =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl) (* <- initial value *)
      iargs in
  let (_, fargs') =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      fargs in
  (* fargs alloc *)
  let e' = List.fold_right
      (fun (y, r) e -> Let((r, Type.Float), FMv(y), e))
      (shuffle reg_fsw fargs')
      e'
  in
  (* iargs alloc *)
  let e' = List.fold_right
      (fun (y, r) e -> Let((r, Type.Int), Mv(y), e))
      (shuffle reg_sw iargs')
      e'
  in
  if mem f callee_save_funs then
    (List.fold_left
       (fun (e, regenv') arg ->
          if List.exists (fun (y, r) -> r = arg && (List.mem y (fv cont))) regenv then
            let e' = seq(Save(arg, reg2var arg regenv), e) in
            let regenv' = remove_r arg regenv in
            (e', regenv')
          else (e, regenv'))
       (e', regenv)
       (snd (List.find (fun (n, _) -> n = f) callee_save_funs)))
  else
    let e' =
      List.fold_left
        (fun e x ->
           if x = fst dest || not (mem x regenv) then e else
             seq(Save(var2reg x regenv, x), e))
        e'
        (fv cont)
    in
    (e', [] (* new regenv *))

let h { name = Id.L(x); args = ys; fargs = zs; body = e; ret = t } = (* 関数のレジスタ割り当て (caml2html: regalloc_h) *)
  let regenv = [(x, reg_cl)] in
  let (i, arg_regs, regenv) =
    List.fold_left
      (fun (i, arg_regs, regenv) y ->
         (* Printf.printf "%s: i = %d\n" x i; *)
         let r = regs.(i) in
         (i + 1,
          arg_regs @ [r],
          (assert (not (is_reg y));
           (y, r) :: regenv)))
      (0, [], regenv)
      ys in
  let (d, farg_regs, regenv) =
    List.fold_left
      (fun (d, farg_regs, regenv) z ->
         (* Printf.printf "d = %d\n" d; *)
         let fr = fregs.(d) in
         (d + 1,
          farg_regs @ [fr],
          (assert (not (is_reg z));
           (z, fr) :: regenv)))
      (0, [], regenv)
      zs in
  let a =
    match t with
    | Type.Unit -> Id.gentmp Type.Unit
    | Type.Float -> fregs.(0)
    | _ -> regs.(0) in
  let (e', regenv') = g (a, t) (Ans(Mv(a))) regenv e in
  { name = Id.L(x); args = arg_regs; fargs = farg_regs; body = e'; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体のレジスタ割り当て (caml2html: regalloc_f) *)
  Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";
  let fundefs' = List.map h fundefs in
  let e', regenv' =
    g
      (Id.gentmp Type.Unit, Type.Unit) (* dest *)
      (Ans(Nop)) (* cont *)
      [] (* regenv *)
      e
  in
  Prog(data, fundefs', e')
