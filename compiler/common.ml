(* [WEEK2 Q2] Eliminate common subexpression *)
(* 置換可能な右辺式と、それが代入された変数(左辺)のリスト *)
type letenv = (KNormal.t * Id.t) list
type tupleenv = (Id.t * (Id.t * Type.t) list) list
type imm = I of int | F of float

let print_letenv (env : letenv) =
  let string_of_letenv (env : letenv) =
    String.concat "" (List.map (fun (e, x) -> x ^ " = " ^ KNormal.string_of_t e) env)
  in print_endline ("env:" ^ string_of_letenv env)

let rec may_have_side_effect (exp : KNormal.t) : bool =
  match exp with
  | IfEq (_, _, e1, e2) | IfLE (_, _, e1, e2) | Let (_, e1, e2) ->
    (may_have_side_effect e1) || (may_have_side_effect e2)
  | LetRec (_, e) | LetTuple (_, _, e) -> may_have_side_effect e
  | MakeArray _ | App _ | Put _ | Get _ -> true
  | ExtFunApp("read_float", _) | ExtFunApp("read_int", _) | ExtFunApp("print_int", _) | ExtFunApp("create_array", _)
  | ExtFunApp("print_newline", _) | ExtFunApp("print_char", _) -> true
  | _ -> false

(* Equality of KNotmal.t *)
let eq_v x y ienv =
  match List.assoc_opt x ienv, List.assoc_opt y ienv with
  | Some n, Some m -> n = m
  | _ -> x = y
let rec eq_t (e1 : KNormal.t) (e2 : KNormal.t) ienv : bool =
  match (e1, e2) with
  | Not(x), Not(y) -> eq_v x y ienv
  | Neg(x), Neg(y) -> eq_v x y ienv
  | Xor(x1, x2), Xor(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | Add(x1, x2), Add(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | Sub(x1, x2), Sub(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | Mul(x1, x2), Mul(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | Div(x1, x2), Div(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | FNeg x, FNeg y -> eq_v x y ienv
  | FAdd(x1, x2), FAdd(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | FSub(x1, x2), FSub(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | FMul(x1, x2), FMul(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | FDiv(x1, x2), FDiv(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | FEq(x1, x2), FEq(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | FLE(x1, x2), FLE(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | IfEq(e11, e12, e1t, e1f), IfEq(e21, e22, e2t, e2f) ->
    eq_v e11 e21 ienv && eq_v e12 e22 ienv && (eq_t e1t e2t ienv) && (eq_t e1f e2f ienv)
  | IfLE(e11, e12, e1t, e1f), IfLE(e21, e22, e2t, e2f) ->
    eq_v e11 e21 ienv && eq_v e12 e22 ienv && (eq_t e1t e2t ienv) && (eq_t e1f e2f ienv)
  | Let((x1, t1), e11, e12), Let((x2, t2), e21, e22) ->
    eq_t e11 e21 ienv && eq_t e12 (KNormal.id_subst e22 x2 x1) ienv
  | Var(x), Var(y) -> eq_v x y ienv
  | LetRec(f1, e1'), LetRec(f2, e2') ->
    f1 = f2 && (eq_t e1' e2' ienv)
  | Tuple(xs), Tuple(ys) -> List.for_all2 (fun x y -> eq_v x y ienv) xs ys
  | Get(x1, x2), Get(y1, y2) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv
  | Put(x1, x2, x3), Put(y1, y2, y3) -> eq_v x1 y1 ienv && eq_v x2 y2 ienv && eq_v x3 y3 ienv
  | LetTuple(l1, e11, e12), LetTuple(l2, e21, e22) ->
    l1 = l2 && e11 = e21 && eq_t e12 e22 ienv
  | _ -> e1 = e2

(* essential part of the common subexpression elimination *)
let rec g (env : letenv) (tenv : tupleenv) ienv (exp : KNormal.t) : KNormal.t =
  match exp with
  | IfEq(x, y, e1, e2) -> IfEq(x, y, (g env tenv ienv e1), (g env tenv ienv e2))
  | IfLE(x, y, e1, e2) -> IfLE(x, y, (g env tenv ienv e1), (g env tenv ienv e2))
  (* TODO: ほどよく近くにある同じIntの値を使うようにする *)
  | Let((x, t), Int n, e2) -> Let((x, t), Int n, g env tenv ((x, I(n)) :: ienv) e2)
  | Let((x, t), Float 0.0, e2) -> Let((x, t), Float 0.0, g env tenv ((x, F(0.0)) :: ienv) e2)
  | Let((x, t), e1, e2) ->
    let e1 = g env tenv ienv e1 in
    (match List.find_opt (fun (e, _) -> eq_t e e1 ienv) env with
     | Some (_, y) -> Let((x, t), Var y, g env tenv ienv e2)
     | None ->
       (* 'e1' is unknown -> register it to the 'env' *)
       (match may_have_side_effect e1 with
        | true  -> Let ((x, t), e1, g env tenv ienv e2)
        | false -> Let ((x, t), e1, g ((e1, x) :: env) tenv ienv e2)))
  | LetRec(e1, e2) ->
    (* 関数を超えての共通部分式は削除しない *)
    LetRec({ e1 with body = g [] [] [] e1.body }, (g env tenv ienv e2))
  | LetTuple(xts, y, e) ->
    (match List.find_opt (fun (x, _) -> x = y) tenv with
     | None ->
       LetTuple(xts, y, g env ((y, xts) :: tenv) ienv e)
     | Some (_, xts') ->
       let (xs, ts) = List.split xts in
       let (xs', ts') = List.split xts' in
       assert (List.for_all2 (fun t t' -> t = t') ts ts');
       let table = List.combine xs xs' in
       let e' = List.fold_left (fun e (x, y) -> KNormal.id_subst e x y) e table in
       g env tenv ienv e')
  | _ -> exp

let f exp = g [] [] [] exp
