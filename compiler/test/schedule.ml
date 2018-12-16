let a = Array.make 10 1 in
let b = a.(0) in
a.(b) <- 3;
let c = a.(1) in
let d = b + b in
let e = d - c in
print_int e

(*
00: LET Ti3_20 = Li 1 IN
01: LET Ti4_21 = Li 10 IN
02: LET a_8 = min_caml_create_array(Ti3_20, Ti4_21, ) IN
03: LET b_9 = Lw a_8 0 IN
04: LET c_10 = Lw a_8 4 IN
05: LET d_11 = Add b_9 c_10 IN
06: LET e_12 = Mul b_9 c_10 IN
07: LET f_13 = Lw a_8 8 IN
08: LET g_14 = Mul f_13 f_13 IN
09: LET Tu2_15 = min_caml_print_int(d_11, ) IN
10: LET Tu1_16 = min_caml_print_int(e_12, ) IN
11: min_caml_print_int(g_14, )

let a = Array.make 1 10 in
let b = a.(0) in
let c = a.(1) in
let d = if b > c then let e = b + c in e else let e = b * c in e in
let e = b * c in
let f = a.(2) in
let g = f * f in
print_int d;
print_int e;
print_int g
*)
