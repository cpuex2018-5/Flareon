open Raw

let subst (a : Id.l list) (b : Id.l) (e : func) =
  let subst_ inst = match inst with
    | Bc(br, x, y, z) when List.mem z a -> Bc(br, x, y, b)
    | B(l) when List.mem l a -> B(b)
    | _ -> inst
  in
  List.map (fun (l, body) -> l, List.map subst_ body) e

let dir_ret (a : Id.l list) (ret : t list) (e : func) =
  let inner_ inst = match inst with
    | B(l) when List.mem l a -> ret
    | _ -> [inst]
  in
  List.map (fun (l, body) -> l, List.concat @@ List.map inner_ body) e

let rec appear_label label func =
  let rec appear_label' label e = match e with
    | [] -> false
    | x :: xs -> match x with
      | B(l) | Bc(_, _, _, l) when l = label -> true
      | _ -> appear_label' label xs
  in
  match func with
  | [] -> false
  | (_, x) :: xs -> appear_label' label x || appear_label label xs

let rec elim_label (e : func) = match e with
  | ([x], e1) :: (((l, e2) :: xs') as xs) ->
    if appear_label x xs then (([x], e1) :: elim_label xs)
    else elim_label ((l, e2 @ e1) :: xs')
  | _ -> e

let rec g (e : func) = match e with
  | [] -> []
  | (x, [B f]) :: xs -> ([], [B f]) :: g (subst x f xs)
  | (x, [Ret]) :: xs -> (x, [Ret]) :: g (dir_ret x [Ret] xs)
  | (x, ([_; Ret] as ret)) :: xs -> (x, ret) :: g (dir_ret x ret xs)
  | (x, ([_; _; Ret] as ret)) :: xs -> (x, ret) :: g (dir_ret x ret xs)
  | xe :: xs -> xe :: (g xs)

(*
    bne     a0, zero, .solver_rect_else_24
    li      a0, 0
  のような無駄なliを減らす
*)
let rec cond env (e : Raw.t list) = match e with
  | [] -> []
  | Li(rd1, n) :: Li(rd2, m) :: xs when rd1 = rd2 -> cond env (Li(rd2, m) :: xs)
  | x :: xs -> (match x with
      | Li(rd, n) when List.mem (rd, n) env -> cond env xs
      | Li(rd, n) -> x :: cond ((rd, n) :: (List.filter (fun (z, _) -> z <> rd) env)) xs
      | Bc("bne", rs1, `C(n), l) when Id.mem rs1 env && (List.assoc rs1 env) <> n -> [B(l)]
      | Bc("bne", rs1, `C(n), _) when List.mem (rs1, n) env -> cond ((rs1, n) :: env) xs
      | Bc("beq", rs1, `C(n), l) when List.mem (rs1, n) env -> [B(l)]
      | Bc("bne", rs1, `C(n), _) -> x :: cond ((rs1, n) :: env) xs
      | SetL(y, _) | Mv(y, _) | Not(y, _) | Neg(y, _) | Xor(y, _, _)
      | Add(y, _, _) | Sub(y, _, _) | Mul(y, _, _) | Div(y, _, _)
      | Sll(y, _, _) | Lw(y, _, _, _) | FEq(y, _, _) | FLE(y, _, _) when Id.mem y env ->
        x :: cond (List.filter (fun (z, _) -> z <> y) env) xs
      | Call _ -> x :: cond [] xs
      | Ret -> [x]
      | _ -> x :: cond env xs)

let f (e : func) =
  let rec inner_ e n =
    if n = 0 then e else
      (let e' = List.rev (elim_label @@ g (List.rev e)) in
       let e' = List.map (fun (x, body) -> (x, cond [] body)) e' in
       if e' = e then e else inner_ e' (n - 1))
  in inner_ e 5
