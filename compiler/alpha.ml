(* rename identifiers to make them unique (alpha-conversion) *)

open KNormal

let find x env = try M.find x env with Not_found -> x

let rec g env = function (* where alpha-conversion happens (caml2html: alpha_g) *)
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(d) -> Float(d)
  | Not(x) -> Not(find x env)
  | Neg(x) -> Neg(find x env)
  | Xor(x, y) -> Xor(find x env, find y env)
  | Add(x, y) -> Add(find x env, find y env)
  | Sub(x, y) -> Sub(find x env, find y env)
  | Mul(x, y) -> Mul(find x env, find y env)
  | Div(x, y) -> Div(find x env, find y env)
  | FNeg(x) -> FNeg(find x env)
  | FAdd(x, y) -> FAdd(find x env, find y env)
  | FSub(x, y) -> FSub(find x env, find y env)
  | FMul(x, y) -> FMul(find x env, find y env)
  | FDiv(x, y) -> FDiv(find x env, find y env)
  | FEq(x, y)  -> FEq(find x env, find y env)
  | FLE(x, y)  -> FLE(find x env, find y env)
  | IfEq(x, y, e1, e2) -> IfEq(find x env, find y env, g env e1, g env e2)
  | IfLE(x, y, e1, e2) -> IfLE(find x env, find y env, g env e1, g env e2)
  | Let((x, t), e1, e2) ->
    let x' = Id.genid x in
    Let((x', t), g env e1, g (M.add x x' env) e2)
  | Var(x) -> Var(find x env)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
    let env = M.add x (Id.genid x) env in
    let ys = List.map fst yts in
    let env' = M.add_list2 ys (List.map Id.genid ys) env in
    LetRec({ name = (find x env, t);
             args = List.map (fun (y, t) -> (find y env', t)) yts;
             body = g env' e1 },
           g env e2)
  | App(x, ys) -> App(find x env, List.map (fun y -> find y env) ys)
  | Tuple(xs) -> Tuple(List.map (fun x -> find x env) xs)
  | LetTuple(xts, y, e) ->
    let xs = List.map fst xts in
    let env' = M.add_list2 xs (List.map Id.genid xs) env in
    LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
             find y env,
             g env' e)
  | Get(x, y) -> Get(find x env, find y env)
  | Put(x, y, z) -> Put(find x env, find y env, find z env)
  | ExtArray(x) -> ExtArray(x)
  | ExtTuple(x) -> ExtTuple(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, List.map (fun y -> find y env) ys)
  | MakeArray(V(x), (y, t)) -> MakeArray(V(find x env), (find y env, t))
  | MakeArray(C(n), (y, t)) -> MakeArray(C(n), (find y env, t))

let f = g M.empty
