open KNormal

let is_verbose = ref false

let rec effect = function (* whether there's a side effect (caml2html: elim_effect) *)
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) -> effect e1 || effect e2
  | LetRec(_, e) | LetTuple(_, _, e) -> effect e
  | App _ | Put _ | ExtFunApp _ -> true
  | _ -> false

let rec g = function
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g e1, g e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g e1, g e2)
  | Let((x, t), e1, e2) ->
    let e1' = g e1 in
    let e2' = g e2 in
    if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2') else
      (if !is_verbose then
         Format.eprintf "eliminating variable %s@." x;
       e2')
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
    let e2' = g e2 in
    if S.mem x (fv e2') then
      LetRec({ name = (x, t); args = yts; body = g e1 }, e2')
    else
      (if !is_verbose then
         Format.eprintf "eliminating function %s@." x;
       e2')
  | LetTuple(xts, y, e) ->
    let xs = List.map fst xts in
    let e' = g e in
    let live = fv e' in
    if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e') else
      (if !is_verbose then
         Format.eprintf "eliminating variables %s@." (Id.pp_list xs);
       e')
  | e -> e

let f b e = is_verbose := b; g e
