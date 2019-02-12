type id_or_imm = [`V of Id.t | `C of int]
type id_imm_or_label = [`V of Id.t | `C of int | `L of Id.l]
type id_or_fimm = [`V of Id.t | `FZero]
type t =
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp =
  | Nop
  | Li of int
  | FLi of Id.l
  | SetL of Id.l
  | SetDL of Id.l
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
  | IfGE of Id.t * id_or_imm * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)

type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
type prog = Prog of (Id.l * float) list * fundef list * t

val print_t : t -> unit
val print_exp : exp -> unit
val string_of_t : ?depth:int -> t -> string
val string_of_exp : ?depth:int -> exp -> string
val print_prog : prog -> unit

val seq : exp * t -> t (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_sp : Id.t
val reg_fp : Id.t
val reg_link : Id.t
val reg_hp : Id.t
val reg_tmp : Id.t
val is_reg : Id.t -> bool

val fv_unwrap : [> `V of 'a] -> 'a list
val fv : t -> Id.t list
val fv_exp : exp -> Id.t list
val has_call : t -> bool
val is_mincaml : string -> bool
val concat : t -> Id.t * Type.t -> t -> t

val callee_save_funs : (string * string list) list
