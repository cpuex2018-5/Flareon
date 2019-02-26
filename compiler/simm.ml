open Asm

let label_1 = ref (Id.L(""))

let rec g env lenv fenv f1env = function (* 命令列の12bit即値最適化 *)
  | Ans(exp) -> Ans(g' env lenv fenv f1env exp)
  | Let((x, t), Li(i), e) when -2048 <= i && i < 2047 ->
    (* Format.eprintf "found simm12 %s = %d@." x i; *)
    let e' = g (M.add x i env) lenv fenv f1env e in
    if List.mem x (fv e') then Let((x, t), Li(i), e') else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
        e')
  | Let((x, t), FMv("%fzero"), e) ->
    let e' = g env lenv (x :: fenv) f1env e in
    if List.mem x (fv e') then Let((x, t), FMv("%fzero"), e') else e'
  | Let((x, t), FLi(l), e) when l = !label_1 ->
    let e' = g env lenv fenv (x :: f1env) e in
    if List.mem x (fv e') then Let((x, t), FLi(l), e') else e'
  | Let(xt, Sll(y, `C(i)), e) when M.mem y env -> (* for array access *)
    (* Format.eprintf "erased redundant Sll on %s@." x; *)
    g env lenv fenv f1env (Let(xt, Li((M.find y env) lsl i), e))
  | Let((x, t), SetDL(l), e) ->
    let e' = g env (M.add x l lenv) fenv f1env e in
    if List.mem x (fv e') then Let((x, t), SetDL(l), e') else e'
  | Let(xt, exp, e) -> Let(xt, g' env lenv fenv f1env exp, g env lenv fenv f1env e)
and g' env lenv fenv f1env = function (* 各命令の12bit即値最適化 *)
  | Xor(x, `V(y)) when M.mem y env -> Xor(x, `C(M.find y env))
  | Xor(x, `V(y)) when M.mem x env -> Xor(y, `C(M.find x env))
  | Add(x, `V(y)) when M.mem y env -> Add(x, `C(M.find y env))
  | Add(x, `V(y)) when M.mem x env -> Add(y, `C(M.find x env))
  | Sub(x, `V(y)) when M.mem y env -> Sub(x, `C(M.find y env))
  | Mul(x, `V(y)) when M.mem y env -> Mul(x, `C(M.find y env))
  | Mul(x, `V(y)) when M.mem x env -> Mul(y, `C(M.find x env))
  | Div(x, `V(y)) when M.mem y env -> Div(x, `C(M.find y env))
  | Sll(x, `V(y)) when M.mem y env -> Sll(x, `C(M.find y env))
  | Lw(`V(x), y) when M.mem x env -> Lw(`C(M.find x env), y)
  | Lw(`V(x), y) when M.mem x lenv -> Lw(`L(M.find x lenv), y)
  | Lw(`V(x), `V(y)) when M.mem y lenv -> Lw(`L(M.find y lenv), `V(x))
  | Lw(`C(x), `V(y)) when M.mem y lenv -> Lw(`L(M.find y lenv), `C(x))
  | Sw(x, `V(y), z) when M.mem y env  -> Sw(x, `C(M.find y env), z)
  | Sw(x, `V(y), z) when M.mem y lenv -> Sw(x, `L(M.find y lenv), z)
  | Sw(x, `V(y), `V(z)) when M.mem z lenv -> Sw(x, `L(M.find z lenv), `V(y))
  | Sw(x, `C(y), `V(z)) when M.mem z lenv -> Sw(x, `L(M.find z lenv), `C(y))
  | Sw(`V(x), y, z) when M.mem x env && M.find x env = 0 -> Sw(`Zero, y, z)
  | FDiv(x, y) when List.mem x f1env -> FInv(y)
  | Flw(`V(x), y) when M.mem x env -> Flw(`C(M.find x env), y)
  | Flw(`V(x), y) when M.mem x lenv -> Flw(`L(M.find x lenv), y)
  | Flw(`V(x), `V(y)) when M.mem y lenv -> Flw(`L(M.find y lenv), `V(x))
  | Flw(`C(n), `V(y)) when M.mem y lenv -> Flw(`L(M.find y lenv), `C(n))
  | Fsw(x, `V(y), z) when M.mem y env      -> Fsw(x, `C(M.find y env), z)
  | Fsw(x, `V(y), z) when M.mem y lenv     -> Fsw(x, `L(M.find y lenv), z)
  | Fsw(x, `V(y), `V(z)) when M.mem z lenv -> Fsw(x, `L(M.find z lenv), `V(y))
  | Fsw(x, `C(y), `V(z)) when M.mem z lenv -> Fsw(x, `L(M.find z lenv), `C(y))
  | Fsw(`V(x), y, z) when List.mem x fenv  -> Fsw(`FZero, y, z)
  | FEq(x, `V(y)) when List.mem x fenv -> FEq(y, `FZero)
  | FEq(x, `V(y)) when List.mem y fenv -> FEq(x, `FZero)
  | FLE(`V(x), y) when List.mem x fenv -> FLE(`FZero, y)
  | FLE(x, `V(y)) when List.mem y fenv -> FLE(x, `FZero)
  | IfEq(x, `V(y), e1, e2) when M.mem y env && (let n = M.find y env in n >= -16 && n < 16) ->
    IfEq(x, `C(M.find y env), g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfLE(x, `V(y), e1, e2) when M.mem y env && (let n = M.find y env in n >= -16 && n < 16) ->
    IfLE(x, `C(M.find y env), g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfGE(x, `V(y), e1, e2) when M.mem y env && (let n = M.find y env in n >= -16 && n < 16) ->
    IfGE(x, `C(M.find y env), g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfEq(x, `V(y), e1, e2) when M.mem x env && (let n = M.find x env in n >= -16 && n < 16) ->
    IfEq(y, `C(M.find x env), g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfLE(x, `V(y), e1, e2) when M.mem x env && (let n = M.find x env in n >= -16 && n < 16) ->
    IfGE(y, `C(M.find x env), g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfGE(x, `V(y), e1, e2) when M.mem x env && (let n = M.find x env in n >= -16 && n < 16) ->
    IfLE(y, `C(M.find x env), g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g env lenv fenv f1env e1, g env lenv fenv f1env e2)
  | e -> e

let rec loop e n =
  if n = 0 then e else
    let e' = g M.empty M.empty [] [] e in
    if e' = e then e else
      loop e' (n - 1)

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の12bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = loop e 5; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の12bit即値最適化 *)
  if (List.exists (fun (_, f) -> f = 1.0) data) then
    label_1 := fst (List.find (fun (_, f) -> f = 1.0) data);
  Prog(data, List.map h fundefs, loop e 5)
