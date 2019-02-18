open Asm

type inst = (Id.t * Type.t) * exp

type node =
  {
    parents : int list ref; (* index *)
    children : int list ref; (* index *)
    inst : inst;
    pri : int ref; (* priority *)
  }
type graph = node array

(* プログラム全体 *)
type program = graph * t (* 最後の命令(Ansなど) *)

let print_intlist l =
  print_endline (String.concat ", " (List.map string_of_int l))

let string_of_node node =
  Printf.sprintf "par = [%s]; chi = [%s]; pri = %d; inst = %s"
    (String.concat ", " (List.map string_of_int !(node.parents)))
    (String.concat ", " (List.map string_of_int !(node.children)))
    !(node.pri)
    (let (x, t), e = node.inst in Printf.sprintf "LET %s = %s" x (string_of_exp e))

let print_graph graph =
  let print_node i node = print_endline (Printf.sprintf "%d: %s" i (string_of_node node)) in
  Array.iteri (fun i n -> print_node i n) graph

(* lの要素のうち、述語fを満たすようなもののインデックスを全て返す *)
let rec find_all (f : 'a -> bool) (l : 'a list) : int list =
  let rec inner_ f l n acc =
    match l with
    | [] -> acc
    | x :: xs when f x ->
      inner_ f xs (n + 1) (n :: acc)
    | x :: xs ->
      inner_ f xs (n + 1) acc
  in List.rev (inner_ f l 0 [])

(* lの要素のうち、述語fを満たすようなもののインデックスを全て返す *)
let rec find_all_a (f : 'a -> int -> bool) (l : 'a array) : int list =
  let rec inner_ f l i acc =
    if i < 0 then
      acc
    else if f l.(i) i then
      inner_ f l (i - 1) (i :: acc)
    else
      inner_ f l (i - 1) acc
  in inner_ f l (Array.length l - 1) []

(* graphに辺を張る *)
let rec set_edges graph insts =
  let is_mem_fv (x : Id.t) (inst : inst) =
    let yt, e = inst in List.mem x (fv (Let(yt, e, Ans(Nop))))
  in
  let effect (inst : inst) = (* 副作用があるかどうか *)
    match snd inst with
    | Lw _ | Sw _ | Flw _ | Fsw _ | CallDir _ | CallCls _ -> true
    | _ -> false
  in
  let rec inner_ graph insts n =
    match insts with
    | [] -> graph
    | ((x, t), e) :: xl ->
      let children = List.map (fun x -> x + n + 1) (find_all (fun i -> is_mem_fv x i) xl) in
      let current = graph.(n) in
      current.children := children;
      List.iter (fun ch -> let node = graph.(ch) in node.parents := n :: !(node.parents)) children;
      (match e with
       | CallCls _ | CallDir _ ->
         (* 関数呼び出し後の命令であって副作用を伴いうるものは必ず関数呼び出し後に実行するという制約を追加 *)
         let children = List.map (fun x -> x + n + 1) (find_all (fun i -> effect i) xl) in
         current.children := children @ !(current.children);
         List.iter (fun ch -> let node = graph.(ch) in node.parents := n :: !(node.parents)) children;
         inner_ graph xl (n + 1)
       | Lw(_, `V(x)) | Flw(_, `V(x)) ->
         (* WARの順番を守るという制約を追加 *)
         let effect_ (x : Id.t) (inst : inst) =
           match snd inst with
           | Sw _ | Fsw _ -> is_mem_fv x inst (* xが書き換えられるなら副作用がある *)
           | CallDir _ | CallCls _ -> true (* どのアドレスが書き換えられるかわからないので、副作用があることにする *)
           | _ -> false
         in
         let children = List.map (fun x -> x + n + 1) (find_all (fun i -> effect_ x i) xl) in
         current.children := children @ !(current.children);
         List.iter (fun ch -> let node = graph.(ch) in node.parents := n :: !(node.parents)) children;
         inner_ graph xl (n + 1)
       | Sw(_, _, `V(y)) | Fsw(_, _, `V(y)) ->
         (* RAW, WAWの順番を守るという制約を追加 *)
         let children = List.map (fun x -> x + n + 1) (find_all (fun i -> is_mem_fv y i && effect i) xl) in
         current.children := children @ !(current.children);
         List.iter (fun ch -> let node = graph.(ch) in node.parents := n :: !(node.parents)) children;
         inner_ graph xl (n + 1)
       | _ -> inner_ graph xl (n + 1))
  in inner_ graph insts 0

let maximum_score graph indexes =
  let costs = List.map (fun i -> let node = graph.(i) in !(node.pri)) indexes in
  let maxcost = List.fold_left (fun a b -> max a b) 0 costs in
  (List.find (fun i -> let node = graph.(i) in !(node.pri) = maxcost) indexes, maxcost)

let minimum_score graph indexes =
  let costs = List.map (fun i -> let node = graph.(i) in !(node.pri)) indexes in
  let mincost = List.fold_left (fun a b -> min a b) 100 costs in
  (List.find (fun i -> let node = graph.(i) in !(node.pri) = mincost) indexes, mincost)

let rec inst_of_t schedule (e : t) : (inst list * t) =
  match e with
  | Ans(exp) -> ([], Ans(exp))
  | Let(("%gp", _) as xt, e1, e2) ->
    (* gpを変化させる命令をまたいでスケジューリングしない *)
    ([], Let(xt, e1, schedule (program_of_t schedule e2)))
  | Let(xt, e1, e2) ->
    let e1 =
      match e1 with
      (* 分岐先の命令列は別の塊としてその中でスケジューリングする *)
      | IfEq(x, y, e3, e4) -> IfEq(x, y, schedule (program_of_t schedule e3), schedule (program_of_t schedule e4))
      | IfLE(x, y, e3, e4) -> IfLE(x, y, schedule (program_of_t schedule e3), schedule (program_of_t schedule e4))
      | IfGE(x, y, e3, e4) -> IfGE(x, y, schedule (program_of_t schedule e3), schedule (program_of_t schedule e4))
      | _ -> e1
    in let (i, ans) = inst_of_t schedule e2 in ((xt, e1) :: i, ans)
and
  program_of_t (schedule : program -> t) (e : t) : program =
  let (insts, ans) = inst_of_t schedule e in
  let graph = Array.of_list (List.map (fun i -> { parents = ref []; children = ref []; inst = i; pri = ref 0 }) insts) in
  let graph = set_edges graph insts in
  (graph, ans)

let rec construct_new_prog (graph, ans) taken =
  let rec inner_ graph taken acc =
    match taken with
    | [] -> acc
    | x :: xs ->
      let node = graph.(x) in
      let (xt, e) = node.inst in
      inner_ graph xs (Let(xt, e, acc))
  in
  inner_ graph taken ans

(********* 資源制約優先 *********)
(* グラフのアップデート *)
let update_parents graph taken next_inst =
  let len = Array.length graph in
  let rec inner_ i =
    if i >= len then
      graph
    else if List.mem i taken then
      inner_ (i + 1)
    else
      let n = graph.(i) in
      n.parents := List.filter (fun x -> x <> next_inst) !(n.parents);
      inner_ (i + 1)
  in inner_ 0

let rec resource (graph, ans) : t =
  (* グラフの各ノードの重みの初期化 *)
  let len = Array.length graph in
  for i = 0 to len - 1 do
    let node = graph.(i) in
    match !(node.parents) with
    | [] -> () (* scoreはそのまま(0) *)
    | _  -> node.pri := (snd (maximum_score graph !(node.parents))) + 4
  done;
  let rec inner_ graph taken =
    (* takenはすでにスケジューリングされた命令のインデックスを保持するint listである *)
    print_endline "------------"; print_graph graph;
    if (List.length taken) == (Array.length graph) then
      (print_string "taken = "; print_intlist taken;
       construct_new_prog (graph, ans) taken)
    else
      let ready_set = find_all_a (fun n i -> !(n.parents) = [] && not (List.mem i taken)) graph in
      print_string "taken = "; print_intlist taken;
      print_string "ready_set = "; print_intlist ready_set;
      (* コスト=優先度が最大のものを次の命令にする *)
      let next = fst (maximum_score graph ready_set) in
      let graph = update_parents graph taken next in
      inner_ graph (next :: taken)
  in inner_ graph []

(********* 実行時間優先 *********)
(* グラフのアップデート & 時間の更新 *)
let update_parents_with_score graph taken next_inst =
  let len = Array.length graph in
  let rec inner_ i =
    if i >= len then
      graph
    else if List.mem i taken then
      inner_ (i + 1)
    else
      let n = graph.(i) in
      n.parents := List.filter (fun x -> x <> next_inst) !(n.parents);
      if !(n.parents) = [] then
        n.pri := !(n.pri) - 1;
      inner_ (i + 1)
  in inner_ 0

let rec exec_time (graph, ans) : t =
  (* グラフの各ノードの重みの初期化 *)
  let len = Array.length graph in
  for i = 0 to len - 1 do
    let node = graph.(i) in
    match !(node.parents) with
    | [] -> () (* scoreはそのまま(0) *)
    | _  -> node.pri := 4
  done;
  let rec inner_ graph taken =
    (* print_endline "------------"; print_graph graph; *)
    if (List.length taken) == (Array.length graph) then
      ((* print_string "taken = "; print_intlist taken; *)
        construct_new_prog (graph, ans) taken)
    else
      (let ready_set = find_all_a (fun n i -> !(n.parents) = [] && not (List.mem i taken)) graph in
       (* print_string "taken = "; print_intlist taken;
          print_string "ready_set = "; print_intlist ready_set; *)
       let next = fst (minimum_score graph ready_set) in
       let graph = update_parents_with_score graph taken next in
       inner_ graph (next :: taken))
  in inner_ graph []

let f (schedule : program -> t) (Prog(f, fundefs, e)) =
  (* scheduleはどちらの優先方式でスケジュールするかで、main.mlで指定される *)
  let fundefs = List.map (fun f ->
      { name = f.name; args = f.args; fargs = f.fargs; body = schedule (program_of_t schedule f.body); ret = f.ret }) fundefs in
  let e = schedule (program_of_t schedule e) in
  Prog(f, fundefs, e)
