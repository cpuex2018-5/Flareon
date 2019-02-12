open Raw

let is_redundant (_, e) = match e with [B _] -> true | _ -> false

let subst (a : Id.l list) (b : Id.l) (e : func) =
  let subst_ inst = match inst with
    | Bc(br, x, y, z) when List.mem z a -> Bc(br, x, y, b)
    | B(l) when List.mem l a -> B(b)
    | _ -> inst
  in
  List.map (fun (l, body) -> l, List.map subst_ body) e

let rec g (e : func) = match e with
  | [] -> []
  | (x, [B f]) :: xs -> ([], [B f]) :: g (subst x f xs)
  | xe :: xs -> xe :: (g xs)

let f (e : func) =
  List.rev (g (List.rev e))
