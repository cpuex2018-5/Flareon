(* PowerPC assembly with a few virtual instructions *)
external castToInt : float -> int32 = "castToInt"

type id_or_imm = V of Id.t | C of int
type id_imm_or_label = V of Id.t | C of int | L of Id.l
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
  | FEq of Id.t * Id.t
  | FLE of Id.t * Id.t
  | FAbs of Id.t
  | FSqrt of Id.t
  | Flw of Id.t * id_imm_or_label
  | Fsw of Id.t * Id.t * id_imm_or_label
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

let fletd(x, e1, e2) = Let((x, Type.Float), e1, e2)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = (* 26個 *)
  [| "%a0"; "%a1"; "%a2"; "%a3"; "%a4"; "%a5"; "%a6"; "%a7";
     "%s1"; "%s2"; "%s3"; "%s4"; "%s5"; "%s6"; "%s7"; "%s8"; "%s9"; "%s10"; "%s11";
     "%tp"; "%t0"; "%t1"; "%t2"; "%t3"; "%t4"; "%t5"|]
let fregs =
  [| "%fa0"; "%fa1"; "%fa2"; "%fa3"; "%fa4"; "%fa5"; "%fa6"; "%fa7";
     "%fs1"; "%fs2"; "%fs3"; "%fs4"; "%fs5"; "%fs6"; "%fs7"; "%fs8"; "%fs9"; "%fs10"; "%fs11";
     "%ft1"; "%ft2"; "%ft3"; "%ft4"; "%ft5"; "%ft6"; "%ft7"; "%ft8"; "%ft9"; "%ft10"; "%ft11" |]
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = "%s11" (* closure address *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_sp = "%sp" (* stack pointer *)
let reg_fp = "%fp" (* frame pointer *)
let reg_link = "%ra" (* link register *)
let reg_hp = "%gp" (* heap pointer *) (* TODO *)
let reg_tmp = "%t6" (* [XX] ad hoc *)
let is_reg x = (x.[0] = '%')

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm (e : id_or_imm) = match e with V(x) -> [x] | _ -> []
let fv_id_imm_or_label (e : id_imm_or_label) = match e with V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Li(_) | FLi(_) | SetL(_) | SetDL(_) | Comment(_) | Restore(_) -> []
  | Not(x) | Mv(x) | Neg(x) | FMv(x) | FNeg(x) | Save(x, _) | FAbs(x) | FSqrt(x) -> [x]
  | Xor(x, y') | Add(x, y') | Sub(x, y') | Mul(x, y') | Div(x, y') | Sll(x, y') -> x :: fv_id_or_imm y'
  | Lw(x, y') | Flw(x, y') -> x :: fv_id_imm_or_label y'
  | Sw(x, y, z') | Fsw(x, y, z') -> x :: y :: fv_id_imm_or_label z'
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | FEq(x, y) | FLE(x, y) -> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) ->  x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp) -> fv_exp exp
  | Let((x, t), exp, e) ->
    fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

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
