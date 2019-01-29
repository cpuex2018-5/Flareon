(* PowerPC assembly with a few virtual instructions *)
external castToInt : float -> int32 = "castToInt"

type id_or_imm = [`V of Id.t | `C of int]
type id_imm_or_label = [`V of Id.t | `C of int | `L of Id.l]
type id_or_fimm = [`V of Id.t | `FZero]
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Li of int
  | FLi of Id.l
  | SetL of Id.l
  | SetDL of Id.l (* set data label *)
  | Mv of Id.t
  | Not of Id.t
  | Neg of Id.t
  | Xor of Id.t * id_or_imm
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | Sll of Id.t * id_or_imm
  | Lw of Id.t * id_imm_or_label
  | Sw of Id.t * Id.t * id_imm_or_label
  | FMv of Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | FEq of Id.t * id_or_fimm
  | FLE of id_or_fimm * id_or_fimm
  | FAbs of Id.t
  | FSqrt of Id.t
  | Flw of Id.t * id_imm_or_label
  | Fsw of id_or_fimm * Id.t * id_imm_or_label
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* 左右対称ではないので必要 *)
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 *)
type prog = Prog of (Id.l * float) list * fundef list * t
type global = {
  single_array : (string * int * string) list;
  nested_tuple : (string * string list) list;
  tuple_array  : (string * int * int list) list;
  sub_array    : (string * int * string) list;
}

let rec string_of_t ?(depth = 0) e =
  let indent = String.make (depth * 2) ' ' in
  match e with
  | Ans exp -> indent ^ string_of_exp ~depth:depth exp
  | Let((x, t), exp, e') -> indent ^ "LET " ^ x ^ " = " ^ string_of_exp ~depth:0 exp ^ " IN\n" ^ string_of_t ~depth:depth e'
and string_of_exp ?(depth = 0) (exp : exp) : string =
  let unwrap x = match x with
    | `C(f) -> string_of_int f
    | `V(f) -> f
    | `L(Id.L(f)) -> f
    | `FZero -> "0.0"
  in
  let indent = String.make (depth * 2) ' ' in
  let cmd =
    match exp with
    | Nop -> "Nop"
    | Li n         -> Printf.sprintf "Li %d" n
    | FLi Id.L(f)  -> Printf.sprintf "FLi %s" f
    | SetL Id.L(f) -> Printf.sprintf "La %s" f
    | SetDL Id.L(f)-> Printf.sprintf "LDA %s" f
    | Mv(x)        -> Printf.sprintf "Mv %s" x
    | Not(x)       -> Printf.sprintf "Not %s" x
    | Neg(x)       -> Printf.sprintf "Neg %s" x
    | Xor(x, y)    -> Printf.sprintf "Xor %s %s" x (unwrap y)
    | Add(x, y)    -> Printf.sprintf "Add %s %s" x (unwrap y)
    | Sub(x, y)    -> Printf.sprintf "Sub %s %s" x (unwrap y)
    | Mul(x, y)    -> Printf.sprintf "Mul %s %s" x (unwrap y)
    | Div(x, y)    -> Printf.sprintf "Div %s %s" x (unwrap y)
    | Sll(x, y)    -> Printf.sprintf "Sll %s %s" x (unwrap y)
    | Lw(x, y)     -> Printf.sprintf "Lw %s %s" x (unwrap y)
    | Sw(x, y, z)  -> Printf.sprintf "Sw %s %s(%s)" x (unwrap z) y
    | FMv(x)       -> Printf.sprintf "FMv %s" x
    | FNeg(x)      -> Printf.sprintf "FNeg %s" x
    | FAdd(x, y)   -> Printf.sprintf "FAdd %s %s" x y
    | FSub(x, y)   -> Printf.sprintf "FSub %s %s" x y
    | FMul(x, y)   -> Printf.sprintf "FMul %s %s" x y
    | FDiv(x, y)   -> Printf.sprintf "FDiv %s %s" x y
    | FEq(x, y)    -> Printf.sprintf "FEq %s %s" x (unwrap y)
    | FLE(x, y)    -> Printf.sprintf "FLE %s %s" (unwrap x) (unwrap y)
    | FAbs(x)      -> Printf.sprintf "FAbs %s" x
    | FSqrt(x)     -> Printf.sprintf "FSqrt %s" x
    | Flw(x, y)    -> Printf.sprintf "Flw %s %s" x (unwrap y)
    | Fsw(x, y, z) -> Printf.sprintf "Fsw %s %s(%s)" (unwrap x) (unwrap z) y
    | Comment _    -> ""
    | IfEq(x, y, e1, e2)  -> Printf.sprintf "(If %s = %s THEN\n%s ELSE\n%s)"  x (unwrap y) (string_of_t ~depth:(depth + 1) e1) (string_of_t ~depth:(depth + 1) e2)
    | IfLE(x, y, e1, e2)  -> Printf.sprintf "(If %s <= %s THEN\n%s ELSE\n%s)" x (unwrap y) (string_of_t ~depth:(depth + 1) e1) (string_of_t ~depth:(depth + 1) e2)
    | IfGE(x, y, e1, e2)  -> Printf.sprintf "(If %s >= %s THEN\n%s ELSE\n%s)" x (unwrap y) (string_of_t ~depth:(depth + 1) e1) (string_of_t ~depth:(depth + 1) e2)
    | CallCls(f, args, fargs) -> Printf.sprintf "%s(%s, %s)" f (String.concat ", " args) (String.concat ", " fargs)
    | CallDir(L(f), args, fargs) -> Printf.sprintf "%s(%s, %s)" f (String.concat ", " args) (String.concat ", " fargs)
    | Save(x, y) -> Printf.sprintf "Save %s %s" x y
    | Restore(x) -> Printf.sprintf "Restore %s" x
  in
  indent ^ cmd

let print_t e = print_endline (string_of_t e)
let print_exp e = print_endline (string_of_exp e)

let print_fundef { name = Id.L(f); args = a; fargs = fa; body = e; ret = _ } =
  let str = f ^ " (" ^ (String.concat ", " (a @ fa)) ^ ") = \n" in
  print_endline (str ^ string_of_t e ~depth:1)

let print_prog (Prog (_, fundefs, body)) =
  List.iter print_fundef fundefs;
  print_t body

let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = (* 26個 *)
  [| "%a0"; "%a1"; "%a2"; "%a3"; "%a4"; "%a5"; "%a6"; "%a7";
     "%s1"; "%s2"; "%s3"; "%s4"; "%s5"; "%s6"; "%s7"; "%s8"; "%s9"; "%s10"; "%s11";
     "%tp"; "%t0"; "%t1"; "%t2"; "%t3"; "%t4"; "%t5"|]
let fregs =
  [| "%fa0"; "%fa1"; "%fa2"; "%fa3"; "%fa4"; "%fa5"; "%fa6"; "%fa7";
     "%fs1"; "%fs2"; "%fs3"; "%fs4"; "%fs5"; "%fs6"; "%fs7"; "%fs8"; "%fs9"; "%fs10"; "%fs11";
     "%ft1"; "%ft2"; "%ft3"; "%ft4"; "%ft5"; "%ft6"; "%ft7"; "%ft8" |]
(* ft9, ft10 : free for libs *)
(* ft11 : fzero *)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = "%s11" (* closure address *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_sp = "%sp" (* stack pointer *)
let reg_fp = "%fp" (* frame pointer *)
let reg_link = "%ra" (* link register *)
let reg_hp = "%gp" (* heap pointer *)
let reg_tmp = "%t6" (* [XX] ad hoc *)
let is_reg x = (x.[0] = '%')

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_unwrap e = match e with `V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Li(_) | FLi(_) | SetL(_) | SetDL(_) | Comment(_) | Restore(_) -> []
  | Not(x) | Mv(x) | Neg(x) | FMv(x) | FNeg(x) | Save(x, _) | FAbs(x) | FSqrt(x) -> [x]
  | Xor(x, y') | Add(x, y') | Sub(x, y') | Mul(x, y') | Div(x, y') | Sll(x, y') -> x :: fv_unwrap y'
  | Lw(x, y') | Flw(x, y') -> x :: fv_unwrap y'
  | Sw(x, y, z') -> x :: y :: fv_unwrap z'
  | Fsw(x, y, z') -> (fv_unwrap x) @ y :: fv_unwrap z'
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) -> [x; y]
  | FEq(x, y) -> x :: (fv_unwrap y)
  | FLE(x, y) -> (fv_unwrap x) @ (fv_unwrap y)
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) ->  x :: fv_unwrap y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp) -> fv_exp exp
  | Let((x, t), exp, e) ->
    fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

let rec has_call (e : t) =
  match e with
  | Ans(exp) -> is_call exp
  | Let(xt, exp, e') -> match is_call exp with
    | true  -> true
    | false -> has_call e'
and is_call (e : exp) = match e with
  | CallCls _ | CallDir _ -> true
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2) -> has_call e1 || has_call e2
  | _ -> false

let rec is_mincaml (n : string) =
  String.length n >= 9 && String.sub n 0 9 = "min_caml_"

(* let xt = e1 in e2 をつくる *)
let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp) -> Let(xt, exp, e2)
  | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)

let single_array = [
  ("min_caml_n_objects",             1, Printf.sprintf "%ld" @@ Int32.of_int 0);
  ("min_caml_dirvecs",               5, Printf.sprintf "%ld" @@ Int32.of_int 0);
  ("min_caml_intsec_rectside",       1, Printf.sprintf "%ld" @@ Int32.of_int 0);
  ("min_caml_intersected_object_id", 1, Printf.sprintf "%ld" @@ Int32.of_int 0);
  ("min_caml_image_size",            2, Printf.sprintf "%ld" @@ Int32.of_int 0);
  ("min_caml_image_center",          2, Printf.sprintf "%ld" @@ Int32.of_int 0);
  ("min_caml_n_reflections",         1, Printf.sprintf "%ld" @@ Int32.of_int 0);
  ("min_caml_screen",                3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_viewpoint",             3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_light",                 3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_beam",                  1, Printf.sprintf "%ld" @@ castToInt 255.0);
  ("min_caml_solver_dist",           1, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_tmin",                  1, Printf.sprintf "%ld" @@ castToInt 1000000000.0);
  ("min_caml_intersection_point",    3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_nvector",               3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_texture_color",         3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_diffuse_ray",           3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_rgb",                   3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_startp",                3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_startp_fast",           3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_scan_pitch",            1, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_screenx_dir",           3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_screeny_dir",           3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_screenz_dir",           3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_ptrace_dirvec",         3, Printf.sprintf "%ld" @@ castToInt 0.0);
  ("min_caml_and_net",              50, ".min_caml_and_net_1");
  ("min_caml_or_net",                1, ".min_caml_or_net_1");
]
let nested_tuple = [
  ("min_caml_light_dirvec", [".min_caml_light_dirvec_v3"; ".min_caml_light_dirvec_consts"]);
]
let tuple_array = [
  ("min_caml_objects", 60, [0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0]);
  ("min_caml_reflections", 180, [0; 0; 0; 0]);
]
let sub_array = [
  (".min_caml_light_dirvec_consts", 60, Printf.sprintf "%ld" @@ Int32.of_int 0);
  (".min_caml_and_net_1",            1, Printf.sprintf "%ld" @@ Int32.of_int(-1));
  (".min_caml_or_net_1",             1, ".min_caml_and_net_1");
  (".min_caml_light_dirvec_v3",      3, Printf.sprintf "%ld" @@ castToInt 0.0);
]
let globals =
  { single_array = single_array;
    nested_tuple = nested_tuple;
    tuple_array = tuple_array;
    sub_array = sub_array; }
let global_size () =
  let global_size = List.fold_left (fun acc (_, len, _) -> len + acc) 0 globals.single_array in
  let global_size = global_size + List.fold_left (fun acc (_, labels) -> List.length labels + acc) 0 globals.nested_tuple in
  let global_size = global_size + List.fold_left (fun acc (_, len, x) -> len + len * (List.length x) + acc) 0 globals.tuple_array in
  let global_size = global_size + List.fold_left (fun acc (_, len, _) -> len + acc) 0 globals.sub_array in
  global_size

let callee_save_funs =
  (* callee-saveの関数 * saveされないレジスタ *)
  [("min_caml_print_char", []);
   ("min_caml_print_newline", []);
   ("min_caml_print_int", ["%a0"]);
   ("min_caml_print_hex", ["%a0"]);
   ("min_caml_print_float", ["%fa0"]);
   ("min_caml_read_int", ["%a0"]);
   ("min_caml_read_float", ["%fa0"]);
   ("min_caml_create_array", ["%a0"]);
   ("min_caml_create_float_array", ["%a0"]);
   ("min_caml_atan", ["%fa0"; "%s1"; "%ft0"; "%ft8"]);
   ("min_caml_sin", ["%fa0"; "%s1"; "%t2"; "%ft0"; "%ft7"; "%ft8"]);
   ("min_caml_cos", ["%fa0"; "%s1"; "%t2"; "%ft0"; "%ft7"; "%ft8"]);
   ("min_caml_floor", ["%fa0"]);
   ("min_caml_float_of_int", ["%a0"; "%fa0"]);
   ("min_caml_int_of_float", ["%fa0"; "%a0"])]
