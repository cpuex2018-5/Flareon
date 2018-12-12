type t = string (* name of variables (caml2html: id_t) *)
type l = L of string (* label for toplevel function or global variables (caml2html: id_l) *)

let rec pp_list = function
  | [] -> ""
  | [x] -> x
  | x :: xs -> x ^ " " ^ pp_list xs

let counter = ref 0
let genid s =
  incr counter;
  Printf.sprintf "%s_%d" s !counter

let rec id_of_typ = function
  | Type.Unit -> "u"
  | Type.Bool -> "b"
  | Type.Int -> "i"
  | Type.Float -> "d"
  | Type.Fun _ -> "f"
  | Type.Tuple _ -> "t"
  | Type.Array _ -> "a" 
  | Type.Var _ -> assert false
let gentmp typ =
  incr counter;
  Printf.sprintf "T%s%d" (id_of_typ typ) !counter

let string_of_ids (l : t list) =
  String.concat ", " l

let print_tlist (l : t list) =
  print_endline (string_of_ids l)
