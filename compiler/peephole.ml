open Raw

exception LabelNotFound

let subst (a : Id.l list) (b : Id.l) (e : func) =
  let subst_ inst = match inst with
    | Bc(br, x, y, z) when List.mem z a -> Bc(br, x, y, b)
    | B(l) when List.mem l a -> B(b)
    | _ -> inst
  in
  List.map (fun (l, body) -> l, List.map subst_ body) e

module Sl =
  Set.Make
    (struct
      type t = Id.l
      let compare = compare
    end)

let rec get_body (l : Id.t) (e : func) = match e with
  | [] -> None
  | (x, y) :: xs -> if List.mem (Id.L(l)) x then Some y else get_body l xs

let rec tailb_label (e : t list) = match e with
  | [] -> None
  | [B(l)] -> Some l
  | x :: xs -> tailb_label xs

let rec appear_label' label e = match e with
  | [] -> false
  | x :: xs -> match x with
    | B(l) | Bc(_, _, _, l) when l = label -> true
    | _ -> appear_label' label xs
let rec appear_label label func =
  match func with
  | [] -> false
  | (_, x) :: xs -> appear_label' label x || appear_label label xs

(* 使われていないラベルを消す *)
let rec elim_label (e : func) = match e with
  | [] -> []
  | (x, e1) :: (((l, e2) :: xs') as xs) ->
    (match List.filter (fun y -> appear_label y xs) x with
     | [] -> elim_label ((l, e2 @ e1) :: xs')
     | x' -> (x', e1) :: (elim_label xs))
  | x :: xs -> x :: elim_label xs

let dir_ret (a : Id.l list) (ret : t list) (e : func) = (* helper function *)
  let inner_ inst = match inst with
    | B(l) when List.mem l a -> ret
    | _ -> [inst]
  in
  List.map (fun (l, body) -> l, List.concat @@ List.map inner_ body) e

(* tail duplicationのようなことをする *)
let rec early_return (e : func) = match e with
  | [] -> []
  | (x, [B f]) :: xs -> ([], [B f]) :: early_return (subst x f xs)
  | (x, [Ret]) :: xs -> (x, [Ret]) :: early_return (dir_ret x [Ret] xs)
  | (x, ([_; Ret] as ret)) :: xs -> (x, ret) :: early_return (dir_ret x ret xs)
  | (x, ([_; _; Ret] as ret)) :: xs -> (x, ret) :: early_return (dir_ret x ret xs)
  | (x, ret) :: xs when List.length ret < 30 -> (match tailb_label ret with
      | Some _ -> (x, ret) :: early_return (dir_ret x ret xs)
      | None -> (x, ret) :: (early_return xs))
  | xe :: xs -> xe :: (early_return xs)

(* 静的に判断可能な分岐をまとめる *)
let extra_labels : Sl.t ref = ref Sl.empty
let extra_labels_added : Sl.t ref = ref Sl.empty
let rec add_extra_labels (e : func) = match e with
  | [] -> []
  | (l, e) :: xs when List.exists (fun x -> Sl.mem x !extra_labels) l ->
    let target_labels = Sl.filter (fun x -> List.mem x l) (Sl.diff !extra_labels !extra_labels_added) in
    let new_labels = List.map
        (fun (Id.L(l)) -> Id.L(l ^ "+4"))
        (Sl.elements (Sl.filter (fun x -> List.mem x l) (Sl.diff !extra_labels !extra_labels_added))) in
    extra_labels_added := Sl.union target_labels !extra_labels_added;
    (l, [List.hd e]) ::
    (new_labels, List.tl e) ::
    add_extra_labels xs
  | x :: xs -> x :: (add_extra_labels xs)

(*
        li   a6, 0
        b    hoge
    hoge:
        beqi a6, 0, fuga
  のような部分があったときに、条件分岐beqをliの後につなげるようにする -> 分岐結果の静的な解析が可能に
*)
let rec elevate_bc (e : func) = match e with
  | [] -> []
  | (l, e) :: xs ->
    let rec elevate_bc' (e : t list) = match e with
      | [] -> []
      | [Li(rd, n); B(Id.L(l))] ->
        (match get_body l xs with
         | Some(Bc("beq", rd', `C(m), l') :: xs') when rd = rd' ->
           if n = m then
             [Li(rd, n); B(l')]
           else
             (extra_labels := Sl.add (Id.L(l)) !extra_labels;
              [Li(rd, n); B(Id.L(l ^ "+4"))])
         | Some(Bc("bne", rd', `C(m), l') :: xs') when rd = rd' ->
           if n <> m then
             [Li(rd, n); B(l')]
           else
             (extra_labels := Sl.add (Id.L(l)) !extra_labels;
              [Li(rd, n); B(Id.L(l ^ "+4"))])
         | _ -> e)
      | x :: xs -> x :: (elevate_bc' xs)
    in
    (l, elevate_bc' e) :: elevate_bc xs

let defined (e : t) = match e with
  | Li(rd, _) | FLi(rd, _) | SetL(rd, _) | SetDL(rd, _) | Mv(rd, _)
  | Not(rd, _) | Neg(rd, _)
  | Xor(rd, _, _) | Add(rd, _, _) | Sub(rd, _, _) | Mul(rd, _, _) | Div(rd, _, _)
  | Sll(rd, _, _) | Lw(rd, _, _, _)
  | FMv(rd, _) | FNeg(rd, _) | FInv(rd, _)
  | FAdd(rd, _, _) | FSub(rd, _, _) | FMul(rd, _, _) | FDiv(rd, _, _)
  | FEq(rd, _, _) | FLE(rd, _, _)
  | FAbs(rd, _) | FSqrt(rd, _) | Flw(rd, _, _, _) -> [rd]
  | _ -> []

let eq rs x = match rs with `V(y) -> y = x | _ -> false
let used (x : Id.t) (e : t) = match e with
  | Mv(_, rs) | Not(_, rs) | Neg(_, rs) | FMv(_, rs) | FNeg(_, rs) | FInv(_, rs) | FAbs(_, rs) | FSqrt(_, rs)
  | Lw(_, _, `V(rs), _) -> rs = x
  | Sw(rs1, _, rs2, _) -> eq rs1 x || eq rs2 x
  | Xor(_, rs1, rs2) | Add(_, rs1, rs2) | Sub(_, rs1, rs2) | Mul(_, rs1, rs2) | Div(_, rs1, rs2)
  | Sll(_, rs1, rs2) -> rs1 = x || eq rs2 x
  | FAdd(_, rs1, rs2) | FSub(_, rs1, rs2) | FMul(_, rs1, rs2) | FDiv(_, rs1, rs2)
    -> rs1 = x || rs2 = x
  | FEq(_, rs1, rs2) -> rs1 = x || eq rs2 x
  | FLE(_, rs1, rs2) -> eq rs1 x || eq rs2 x
  | Flw(_, _, rs, _) -> eq rs x
  | Fsw(rs1, _, rs2, _) -> eq rs1 x || eq rs2 x
  | Write(rs) -> rs = x
  | Bc _ | B _ | Call _ | Ret -> true
  | _ -> false

let rec overwritten_before_use r cont = match cont with
  | x :: xs when not (used r x) && (defined x) = [r] -> true
  | x :: xs when not (used r x) -> overwritten_before_use r xs
  | x :: xs -> false
  | [] -> false

(*
    bne     a0, zero, .solver_rect_else_24
    li      a0, 0
  のような無駄なliを減らす
*)
let rec cond env (e : Raw.t list) = match e with
  | [] -> []
  | x :: xs when (defined x <> []) &&
                 overwritten_before_use (List.hd @@ defined x) xs ->
    cond env xs
  | x :: xs -> (match x with
      | Li(rd, n) when List.mem (rd, n) env -> cond env xs
      | Li(rd, n) -> x :: cond ((rd, n) :: (List.filter (fun (z, _) -> z <> rd) env)) xs
      | Bc("bne", rs1, `C(n), l) when Id.mem rs1 env && (List.assoc rs1 env) <> n -> [B(l)]
      | Bc("bne", rs1, `C(n), _) when List.mem (rs1, n) env -> cond env xs
      | Bc("bne", rs1, `C(n), _) -> x :: cond ((rs1, n) :: env) xs
      | Bc("beq", rs1, `C(n), l) when List.mem (rs1, n) env -> [B(l)]
      | Bc("beq", rs1, `C(n), l) when Id.mem rs1 env && (List.assoc rs1 env) <> n -> cond env xs
      | SetL(y, _) | Mv(y, _) | Not(y, _) | Neg(y, _) | Xor(y, _, _)
      | Add(y, _, _) | Sub(y, _, _) | Mul(y, _, _) | Div(y, _, _)
      | Sll(y, _, _) | Lw(y, _, _, _) | FEq(y, _, _) | FLE(y, _, _) when Id.mem y env ->
        x :: cond (List.filter (fun (z, _) -> z <> y) env) xs
      | Call _ -> x :: cond [] xs
      | Ret -> [x]
      | _ -> x :: cond env xs)

(* labelやbodyが空のエントリがあったら前後とつなげる *)
let rec concat (e : func) = match e with
  | [] -> []
  | ([], []) :: xs -> concat xs
  | (l, x) :: ([], y) :: xs -> concat ((l, x @ y) :: xs)
  | (l1, []) :: (l2, e') :: xs -> concat ((l1 @ l2, e') :: xs)
  | x :: xs -> x :: (concat xs)

(* 重複する部分をつぶす *)
let rec squash (e : func) = match e with
  | [] -> []
  | (x, e1) :: (y, e2) :: xs when e1 = e2 ->
    squash @@ (x, e1) :: (subst y (List.hd x) xs)
  | ([x], e1) :: (y, e2) :: (z, e3) :: xs when e3 = (e2 @ [B x]) ->
    squash @@ ([x], e1) :: (y, e2) :: (subst z (List.hd y) xs)
  | x :: xs -> x :: (squash xs)

let f (e : func) =
  let rec inner_ e n =
    if n = 0 then e else
      (let e' = concat e in
       let e' = List.rev (squash @@ elim_label @@ early_return (List.rev e')) in
       let e' = elevate_bc e' in
       let e' = List.map (fun (x, body) -> (x, cond [] body)) e' in
       let e' = add_extra_labels e' in
       if e' = e then e else inner_ e' (n - 1))
  in
  inner_ e 100
