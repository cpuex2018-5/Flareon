open Raw

let is_redundant (_, e) = match e with [B _] -> true | _ -> false

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
  | x :: xs -> (match x with
      | Li(rd, n) when List.mem (rd, n) env -> cond env xs
      | Bc("bne", rs1, `C(n), _) -> x :: cond ((rs1, n) :: env) xs
      | SetL(y, _) | Mv(y, _) | Not(y, _) | Neg(y, _) | Xor(y, _, _)
      | Add(y, _, _) | Sub(y, _, _) | Mul(y, _, _) | Div(y, _, _)
      | Sll(y, _, _) | Lw(y, _, _, _) when Id.mem y env ->
        x :: cond (List.filter (fun (z, _) -> z <> y) env) xs
      | _ -> x :: cond env xs)

let f (e : func) =
  let e = List.rev (g (List.rev e)) in
  let e = List.map (fun (x, body) -> (x, cond [] body)) e in
  e
