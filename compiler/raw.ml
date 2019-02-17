type id_or_imm = [`V of Id.t | `C of int]
type imm_or_label = [`C of int | `L of Id.l]
type id_or_fimm = [`V of Id.t | `FZero]
type t =
  | Li of Id.t * int
  | FLi of Id.t * Id.l
  | SetL of Id.t * Id.l
  | SetDL of Id.t * Id.l (* set data label *)
  | Mv of Id.t * Id.t
  | Not of Id.t * Id.t
  | Neg of Id.t * Id.t
  | Xor of Id.t * Id.t * id_or_imm
  | Add of Id.t * Id.t * id_or_imm
  | Sub of Id.t * Id.t * id_or_imm
  | Mul of Id.t * Id.t * id_or_imm
  | Div of Id.t * Id.t * id_or_imm
  | Sll of Id.t * Id.t * id_or_imm
  | Lw of Id.t * imm_or_label * id_or_imm * string option
  | Sw of [`V of Id.t | `Zero] * imm_or_label * id_or_imm * string option
  | FMv  of Id.t * Id.t
  | FNeg of Id.t * Id.t
  | FAdd of Id.t * Id.t * Id.t
  | FSub of Id.t * Id.t * Id.t
  | FMul of Id.t * Id.t * Id.t
  | FDiv of Id.t * Id.t * Id.t
  | FEq of Id.t * Id.t * id_or_fimm
  | FLE of Id.t * id_or_fimm * id_or_fimm
  | FAbs  of Id.t * Id.t
  | FSqrt of Id.t * Id.t
  | Flw of Id.t * imm_or_label * id_or_imm * string option
  | Fsw of id_or_fimm * imm_or_label * id_or_imm * string option
  | Write of Id.t
  | Comment of string
  | Call of Id.l
  | Bc of string * Id.t * id_or_imm * Id.l (* branch on condition *)
  | B of Id.l
  | Jalr (* jalr ra, ra, 0 *)
  | Ret (* jr ra *)
type func = (Id.l list * t list) list

let print_func (e : func) =
  List.iter (fun (l, x) -> Id.print_labels l; print_int (List.length x); print_newline ()) e

let reg r =
  if Asm.is_reg r
  then String.sub r 1 (String.length r - 1)
  else r

let comment s = match s with
  | Some s -> "\t# " ^ s
  | None -> ""
let str' x = match x with
  | `V(x) -> x
  | `Zero -> "zero"
  | `FZero -> "fzero"

let output_buffer' oc e = match e with
  | Li(x, n) -> Printf.fprintf oc "\tli\t%s, %d\n" (reg x) n
  | FLi(x, Id.L(l)) -> Printf.fprintf oc "\tfli\t%s, %s\n" (reg x) l
  | SetL(x, Id.L(y)) -> Printf.fprintf oc "\tla\t%s, %s\n" (reg x) y
  | SetDL(x, Id.L(y)) -> Printf.fprintf oc "\tlda\t%s, %s\n" (reg x) y
  | Mv(x, y) when x = y -> ()
  | Mv(x, y) -> Printf.fprintf oc "\tmv\t%s, %s\n" (reg x) (reg y)
  | Not(x, y) -> Printf.fprintf oc "\txori\t%s, %s, 1\t# boolean not\n" (reg x) (reg y)
  | Neg(x, y) -> Printf.fprintf oc "\tneg\t%s, %s\n" (reg x) (reg y)
  | Xor(x, y, `V(z)) -> Printf.fprintf oc "\txor\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | Xor(x, y, `C(z)) -> Printf.fprintf oc "\txori\t%s, %s, %d\n" (reg x) (reg y) z
  | Add(x, y, `V(z)) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | Add(x, y, `C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) z
  | Sub(x, y, `V(z)) -> Printf.fprintf oc "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | Sub(x, y, `C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) (-1 * z)
  | Mul(x, y, `V(z)) -> Printf.fprintf oc "\tmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)    (* アセンブラ非対応 *)
  | Mul(x, y, `C(z)) when z = 4 -> Printf.fprintf oc "\tslli\t%s, %s, 2\n" (reg x) (reg y) (* built-in *)
  | Mul(x, y, `C(z)) -> Printf.fprintf oc "\tmuli\t%s, %s, %d\n" (reg x) (reg y) z         (* アセンブラ非対応 *)
  | Div(x, y, `V(z)) -> Printf.fprintf oc "\tdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)    (* アセンブラ非対応 *)
  | Div(x, y, `C(z)) when z = 2 -> Printf.fprintf oc "\tsrai\t%s, %s, 1\n" (reg x) (reg y) (* built-in *)
  | Div(x, y, `C(z)) -> Printf.fprintf oc "\tdivi\t%s, %s, %d\n" (reg x) (reg y) z         (* アセンブラ非対応 *)
  | Sll(x, y, `V(z)) -> Printf.fprintf oc "\tsll\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | Sll(x, y, `C(z)) -> Printf.fprintf oc "\tslli\t%s, %s, %d\n" (reg x) (reg y) z
  | Lw(x, `L(Id.L(l)), `V(y), _) -> Printf.fprintf oc "\tlwl\t%s, %s(%s)\n" (reg x) l (reg y)
  | Lw(x, `L(Id.L(l)), `C(y), _) -> Printf.fprintf oc "\tlwd\t%s, %s(%d)\n" (reg x) l y
  | Lw(x, `C(n), `V(y), s)       -> Printf.fprintf oc "\tlw\t%s, %d(%s)%s\n" (reg x) n (reg y) (comment s)
  | Lw(x, `C(_), `C(_), _)       -> assert false
  | Sw(x, `L(Id.L(l)), `V(y), _) -> Printf.fprintf oc "\tswl\t%s, %s(%s)\n" (reg (str' x)) l (reg y)
  | Sw(x, `L(Id.L(l)), `C(y), _) -> Printf.fprintf oc "\tswd\t%s, %s(%d)\n" (reg (str' x)) l y
  | Sw(x, `C(n), `V(y), s)       -> Printf.fprintf oc "\tsw\t%s, %d(%s)%s\n" (reg (str' x)) n (reg y) (comment s)
  | Sw(x, `C(_), `C(_), _)       -> assert false
  | FMv(x, y) when x = y -> ()
  | FMv(x, y)  -> Printf.fprintf oc "\tfmv\t%s, %s\n" (reg x) (reg y)
  | FNeg(x, y) -> Printf.fprintf oc "\tfneg\t%s, %s\n" (reg x) (reg y)
  | FAdd(x, y, z) -> Printf.fprintf oc "\tfadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | FSub(x, y, z) -> Printf.fprintf oc "\tfsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | FMul(x, y, z) -> Printf.fprintf oc "\tfmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | FDiv(x, y, z) -> Printf.fprintf oc "\tfdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | FEq(x, y, z)  -> Printf.fprintf oc "\tfeq\t%s, %s, %s\n" (reg x) (reg y) (reg (str' z))
  | FLE(x, y, z)   -> Printf.fprintf oc "\tfle\t%s, %s, %s\n" (reg x) (reg (str' y)) (reg (str' z))
  | FAbs(x, y)  -> Printf.fprintf oc "\tfabs\t%s, %s\n" (reg x) (reg y)
  | FSqrt(x, y) -> Printf.fprintf oc "\tfsqrt\t%s, %s\n" (reg x) (reg y)
  | Flw(x, `L(Id.L(l)), `V(y), _) -> Printf.fprintf oc "\tflwl\t%s, %s(%s)\n" (reg x) l (reg y)
  | Flw(x, `L(Id.L(l)), `C(y), _) -> Printf.fprintf oc "\tflwd\t%s, %s(%d)\n" (reg x) l y
  | Flw(x, `C(n), `V(y), s)       -> Printf.fprintf oc "\tflw\t%s, %d(%s)%s\n" (reg x) n (reg y) (comment s)
  | Flw(x, `C(_), `C(_), _)       -> assert false
  | Fsw(x, `L(Id.L(l)), `V(y), _)  -> Printf.fprintf oc "\tfswl\t%s, %s(%s)\n"  (reg (str' x)) l (reg y)
  | Fsw(x, `L(Id.L(l)), `C(y), _)  -> Printf.fprintf oc "\tfswd\t%s, %s(%d)\n"  (reg (str' x)) l y
  | Fsw(x, `C(n), `V(y), s)        -> Printf.fprintf oc "\tfsw\t%s, %d(%s)%s\n" (reg (str' x)) n (reg y) (comment s)
  | Fsw(x, `C(_), `C(_), _)        -> assert false
  | Write(x)   -> Printf.fprintf oc "\tw\t%s\n" (reg x)
  | Comment(s) -> Printf.fprintf oc "#\t%s\n" s
  | Call(Id.L(f)) -> Printf.fprintf oc "\tcall\t%s\n" f
  | Bc(b, x, `V(y), Id.L(z)) -> Printf.fprintf oc "\t%s\t%s, %s, %s\n"  b (reg x) (reg y) z
  | Bc(b, x, `C(0), Id.L(z)) -> Printf.fprintf oc "\t%s\t%s, zero, %s\n" b (reg x) z
  | Bc(b, x, `C(y), Id.L(z)) -> Printf.fprintf oc "\t%si\t%s, %d, %s\n" b (reg x) y z
  | B(Id.L(l)) -> Printf.fprintf oc "\tb\t%s\n" l
  | Jalr -> Printf.fprintf oc "\tjalr\tra, ra, 0\n"
  | Ret  -> Printf.fprintf oc "\tjr\tra\n"

let output_buffer oc buf =
  List.iter (fun (l, e) ->
      List.iter (fun (Id.L(l')) -> Printf.fprintf oc "%s:\n" l') l;
      List.iter (fun e' -> output_buffer' oc e') e ) buf
