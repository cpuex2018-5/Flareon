open Asm

let label_0 = ref (Id.L(""))

let rec g env lenv fenv = function (* 命令列の12bit即値最適化 *)
  | Ans(exp) -> Ans(g' env lenv fenv exp)
  | Let((x, t), Li(i), e) when -2048 <= i && i < 2047 ->
    (* Format.eprintf "found simm12 %s = %d@." x i; *)
    let e' = g (M.add x i env) lenv fenv e in
    if List.mem x (fv e') then Let((x, t), Li(i), e') else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
        e')
  | Let((x, t), FLi(f), e) when f = !label_0 ->
    let e' = g env lenv (x :: fenv) e in
    if List.mem x (fv e') then Let((x, t), FLi(f), e') else e'
  | Let(xt, Sll(y, C(i)), e) when M.mem y env -> (* for array access *)
    (* Format.eprintf "erased redundant Sll on %s@." x; *)
    g env lenv fenv (Let(xt, Li((M.find y env) lsl i), e))
  | Let((x, t), SetDL(l), e) ->
    let e' = g env (M.add x l lenv) fenv e in
    if List.mem x (fv e') then Let((x, t), SetDL(l), e') else e'
  | Let(xt, exp, e) -> Let(xt, g' env lenv fenv exp, g env lenv fenv e)
and g' env lenv fenv = function (* 各命令の12bit即値最適化 *)
  | Xor(x, V(y)) when M.mem y env -> Xor(x, C(M.find y env))
  | Xor(x, V(y)) when M.mem x env -> Xor(y, C(M.find x env))
  | Add(x, V(y)) when M.mem y env -> Add(x, C(M.find y env))
  | Add(x, V(y)) when M.mem x env -> Add(y, C(M.find x env))
  | Sub(x, V(y)) when M.mem y env -> Sub(x, C(M.find y env))
  | Mul(x, V(y)) when M.mem y env -> Mul(x, C(M.find y env))
  | Mul(x, V(y)) when M.mem x env -> Mul(y, C(M.find x env))
  | Div(x, V(y)) when M.mem y env -> Div(x, C(M.find y env))
  | Sll(x, V(y)) when M.mem y env -> Sll(x, C(M.find y env))
  | Lw(x, V(y)) when M.mem y env -> Lw(x, C(M.find y env))
  | Lw(x, V(y)) when M.mem y lenv -> Lw(x, L(M.find y lenv))
  | Lw(x, V(y)) when M.mem x lenv -> Lw(y, L(M.find x lenv))
  | Sw(x, y, V(z)) when M.mem z env -> Sw(x, y, C(M.find z env))
  | Sw(x, y, V(z)) when M.mem z lenv -> Sw(x, y, L(M.find z lenv))
  | Sw(x, y, V(z)) when M.mem y lenv -> Sw(x, z, L(M.find y lenv))
  | Flw(x, V(y)) when M.mem y env -> Flw(x, C(M.find y env))
  | Flw(x, V(y)) when M.mem y lenv -> Flw(x, L(M.find y lenv))
  | Flw(x, V(y)) when M.mem x lenv -> Flw(y, L(M.find x lenv))
  | Fsw(x, y, V(z)) when M.mem z env -> Fsw(x, y, C(M.find z env))
  | Fsw(x, y, V(z)) when M.mem z lenv -> Fsw(x, y, L(M.find z lenv))
  | Fsw(x, y, V(z)) when M.mem y lenv -> Fsw(x, z, L(M.find y lenv))
  | Fsw(V(x), y, z) when List.mem x fenv -> Fsw(FZero, y, z)
  | FEq(x, V(y)) when List.mem x fenv -> FEq(y, FZero)
  | FEq(x, V(y)) when List.mem y fenv -> FEq(x, FZero)
  | FLE(V(x), y) when List.mem x fenv -> FLE(FZero, y)
  | FLE(x, V(y)) when List.mem y fenv -> FLE(x, FZero)
  | IfEq(x, V(y), e1, e2) when M.mem y env -> IfEq(x, C(M.find y env), g env lenv fenv e1, g env lenv fenv e2)
  | IfLE(x, V(y), e1, e2) when M.mem y env -> IfLE(x, C(M.find y env), g env lenv fenv e1, g env lenv fenv e2)
  | IfGE(x, V(y), e1, e2) when M.mem y env -> IfGE(x, C(M.find y env), g env lenv fenv e1, g env lenv fenv e2)
  | IfEq(x, V(y), e1, e2) when M.mem x env -> IfEq(y, C(M.find x env), g env lenv fenv e1, g env lenv fenv e2)
  | IfLE(x, V(y), e1, e2) when M.mem x env -> IfGE(y, C(M.find x env), g env lenv fenv e1, g env lenv fenv e2)
  | IfGE(x, V(y), e1, e2) when M.mem x env -> IfLE(y, C(M.find x env), g env lenv fenv e1, g env lenv fenv e2)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g env lenv fenv e1, g env lenv fenv e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g env lenv fenv e1, g env lenv fenv e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g env lenv fenv e1, g env lenv fenv e2)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の12bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty M.empty [] e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の12bit即値最適化 *)
  label_0 := fst (List.find (fun (l, d) -> d = 0.0) data);
  Prog(data, List.map h fundefs, g M.empty M.empty [] e)
