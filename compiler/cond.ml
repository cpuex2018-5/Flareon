open Asm

type cmp_typ =
  | Eq  of Id.t * id_or_imm
  | Neq of Id.t * id_or_imm
  | LE  of Id.t * id_or_imm
  | GT  of Id.t * id_or_imm
  | GE  of Id.t * id_or_imm
  | LT  of Id.t * id_or_imm

(* 同じ比較演算が複数回行われている部分がなぜかあったので、それを避ける最適化 *)
let rec g cenv e =
  match e with
  | Let(xt, IfEq(x, y, e1, e2), e) when List.mem (Eq(x, y)) cenv -> concat (g cenv e1) xt (g cenv e)
  | Let(xt, IfEq(x, y, e1, e2), e) when List.mem (Neq(x, y)) cenv -> concat (g cenv e2) xt (g cenv e)
  | Let(xt, IfEq(x, y, e1, e2), e) ->
    Let(xt, IfEq(x, y, g (Eq(x, y) :: cenv) e1, g (Neq(x, y) :: cenv) e2), g cenv e)
  | Let(xt, IfLE(x, y, e1, e2), e) when List.mem (LE(x, y)) cenv -> concat (g cenv e1) xt (g cenv e)
  | Let(xt, IfLE(x, y, e1, e2), e) when List.mem (GT(x, y)) cenv -> concat (g cenv e2) xt (g cenv e)
  | Let(xt, IfLE(x, y, e1, e2), e) ->
    Let(xt, IfLE(x, y, g (LE(x, y) :: cenv) e1, g (GT(x, y) :: cenv) e2), g cenv e)
  | Let(xt, IfGE(x, y, e1, e2), e) when List.mem (GE(x, y)) cenv -> concat (g cenv e1) xt (g cenv e)
  | Let(xt, IfGE(x, y, e1, e2), e) when List.mem (LT(x, y)) cenv -> concat (g cenv e2) xt (g cenv e)
  | Let(xt, IfGE(x, y, e1, e2), e) ->
    Let(xt, IfGE(x, y, g (GE(x, y) :: cenv) e1, g (LT(x, y) :: cenv) e2), g cenv e)
  | Let(xt, exp, e) -> Let(xt, exp, g cenv e)

  | Ans(IfEq(x, y, e1, e2)) when List.mem (Eq(x, y)) cenv -> g cenv e1
  | Ans(IfEq(x, y, e1, e2)) when List.mem (Neq(x, y)) cenv -> g cenv e2
  | Ans(IfEq(x, y, e1, e2)) -> Ans(IfEq(x, y, g (Eq(x, y) :: cenv) e1, g (Neq(x, y) :: cenv) e2))
  | Ans(IfLE(x, y, e1, e2)) when List.mem (LE(x, y)) cenv -> g cenv e1
  | Ans(IfLE(x, y, e1, e2)) when List.mem (GT(x, y)) cenv -> g cenv e2
  | Ans(IfLE(x, y, e1, e2)) -> Ans(IfLE(x, y, g (LE(x, y) :: cenv) e1, g (GT(x, y) :: cenv) e2))
  | Ans(IfGE(x, y, e1, e2)) when List.mem (GE(x, y)) cenv -> g cenv e1
  | Ans(IfGE(x, y, e1, e2)) when List.mem (LT(x, y)) cenv -> g cenv e2
  | Ans(IfGE(x, y, e1, e2)) -> Ans(IfGE(x, y, g (GE(x, y) :: cenv) e1, g (LT(x, y) :: cenv) e2))
  | _ -> e

let f (Prog(fimm, fundefs, body))  =
  Prog(fimm, List.map (fun f -> { f with body = g [] f.body }) fundefs, g [] body)
