(* translation into PowerPC assembly with infinite number of virtual registers *)

open Asm

let data = ref [] (* constant lookup table for floating point numbers (caml2html: virtual_data) *)

let print_env (env : Type.t M.t) =
  print_string "env: ";
  print_endline (String.concat ", " (List.map fst (M.bindings env)))

let classify (xts : (Id.t * Type.t) list) ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
       match t with
       | Type.Unit -> acc
       | Type.Float -> addf acc x
       | _ -> addi acc x t)
    ini
    xts

(* separate int arguments and float arguments *)
let separate xts =
  classify
    xts
    ([], [])
    (fun (iargs, fargs) x -> (iargs, fargs @ [x]))
    (fun (iargs, fargs) x _ -> (iargs @ [x], fargs))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
       (offset + 4, addf x offset acc))
    (fun (offset, acc) x t ->
       (offset + 4, addi x t offset acc))

let rec g env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit -> Ans(Nop)
  | Closure.Int(i) -> Ans(Li(i))
  | Closure.Float(0.0) ->
    Ans(FMv("%fzero"))
  | Closure.Float(d) ->
    let l =
      try
        (* すでに定数テーブルにあったら再利用 *)
        let (l, _) = List.find (fun (_, d') -> d = d') !data in
        l
      with Not_found ->
        let l = Id.L(Id.genDataId "l_data") in
        data := (l, d) :: !data;
        l in
    Ans(FLi(l))
  | Closure.Not(x) -> Ans(Not(x))
  | Closure.Neg(x) -> Ans(Neg(x))
  | Closure.Xor(x, y) -> Ans(Xor(x, V(y)))
  | Closure.Add(x, y) -> Ans(Add(x, V(y)))
  | Closure.Sub(x, y) -> Ans(Sub(x, V(y)))
  | Closure.Mul(x, y) -> Ans(Mul(x, V(y)))
  | Closure.Div(x, y) -> Ans(Div(x, V(y)))
  | Closure.FNeg(x) -> Ans(FNeg(x))
  | Closure.FAdd(x, y) -> Ans(FAdd(x, y))
  | Closure.FSub(x, y) -> Ans(FSub(x, y))
  | Closure.FMul(x, y) -> Ans(FMul(x, y))
  | Closure.FDiv(x, y) -> Ans(FDiv(x, y))
  | Closure.FEq(x, y) -> Ans(FEq(x, V(y)))
  | Closure.FLE(x, y) -> Ans(FLE(V(x), V(y)))
  | Closure.IfEq(x, y, e1, e2) ->
    (match M.find x env with
     | Type.Bool | Type.Int -> Ans(IfEq(x, V(y), g env e1, g env e2))
     | Type.Float -> failwith "unreached"
     | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2) ->
    (match M.find x env with
     | Type.Bool | Type.Int -> Ans(IfLE(x, V(y), g env e1, g env e2))
     | Type.Float -> failwith "unreached"
     | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2) ->
    let e1' = g env e1 in
    let e2' = g (M.add x t1 env) e2 in
    concat e1' (x, t1) e2'
  | Closure.Var(x) ->
    (match M.find x env with
     | Type.Unit -> Ans(Nop)
     | Type.Float -> Ans(FMv(x))
     | _ -> Ans(Mv(x)))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2) ->
    (* Closureのアドレスをセットしてから、自由変数の値をストア *)
    let e2' = g (M.add x t env) e2 in
    let offset, store_fv =
      expand
        (List.map (fun y -> (y, M.find y env)) ys)
        (4, e2')
        (fun y offset store_fv -> seq(Fsw(V(y), x, C(offset)), store_fv))
        (fun y _ offset store_fv -> seq(Sw(y, x, C(offset)), store_fv)) in
    Let((x, t), Mv(reg_hp),
        Let((reg_hp, Type.Int), Add(reg_hp, C(offset)),
            let z = Id.genid "l" in
            Let((z, Type.Int), SetL(l),
                seq(Sw(z, x, C(0)),
                    store_fv))))
  | Closure.AppCls(x, ys) ->
    let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
    Ans(CallCls(x, int, float))
  | Closure.AppDir(Id.L("min_caml_abs_float"), [x]) -> Ans(FAbs(x))
  | Closure.AppDir(Id.L("min_caml_fabs"), [x]) -> Ans(FAbs(x))
  | Closure.AppDir(Id.L("min_caml_sqrt"), [x]) -> Ans(FSqrt(x))
(*
  | Closure.AppDir(Id.L("min_caml_float_of_int"), [x]) ->
    let tf = Id.gentmp Type.Float in
    let ti = Id.gentmp Type.Int in
    let x' = Id.gentmp Type.Int in
    let ans = Id.gentmp Type.Float in
    let ans' = Id.gentmp Type.Float in
    let e_pos = Let((x', Type.Int), Add(ti, V(x)),
                    seq(Sw(x', reg_sp, C(-4)),
                        Let((ans, Type.Float), Flw(reg_sp, C(-4)), Ans(FSub(ans, tf))))) in
    let e_neg = Let((x', Type.Int), Sub(ti, V(x)),
                    seq(Sw(x', reg_sp, C(-4)),
                        Let((ans, Type.Float), Flw(reg_sp, C(-4)),
                            Let((ans', Type.Float), FSub(ans, tf), Ans(FNeg(ans')))))) in
    Let((tf, Type.Float), FLi(Id.L("L_8388608")),
        Let((ti, Type.Int), Li(1258291200),
            Ans(IfGE(x, C(0), e_neg, e_pos))))
*)
(*
  | Closure.AppDir(Id.L("min_caml_int_of_float"), [x]) ->
    let tf = Id.gentmp Type.Float in
    let ti = Id.gentmp Type.Int in
    let is_pos = Id.gentmp Type.Int in
    let x1 = Id.gentmp Type.Float in
    let x2 = Id.gentmp Type.Float in
    let x3 = Id.gentmp Type.Int in
    let x4 = Id.gentmp Type.Int in
    let e_pos = Let((x1, Type.Float), FAdd(x, tf),
                    seq(Fsw(V(x1), reg_sp, C(-4)),
                        Let((x3, Type.Int), Lw(reg_sp, C(-4)),
                            Ans(Sub(x3, V(ti)))))) in
    let e_neg = Let((x1, Type.Float), FAbs(x),
                    Let((x2, Type.Float), FAdd(x1, tf),
                        seq(Fsw(V(x2), reg_sp, C(-4)),
                            Let((x3, Type.Int), Lw(reg_sp, C(-4)),
                                Let((x4, Type.Int), Sub(x3, V(ti)), Ans(Neg(x4))))))) in
    Let((tf, Type.Float), FLi(Id.L("L_8388608")),
        Let((ti, Type.Int), Li(1258291200),
            Let((is_pos, Type.Int), FLE(FZero, V(x)),
                Ans(IfEq(is_pos, C(0), e_neg, e_pos)))))
*)
  | Closure.AppDir(Id.L(x), ys) ->
    let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
    Ans(CallDir(Id.L(x), int, float))
  | Closure.Tuple(xs) ->
    let y = Id.genid "t" in
    let (offset, store) =
      expand
        (List.map (fun x -> (x, M.find x env)) xs)
        (0, Ans(Mv(y)))
        (fun x offset store -> seq(Fsw(V(x), y, C(offset)), store))
        (fun x _ offset store -> seq(Sw(x, y, C(offset)), store))  in
    Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mv(reg_hp),
        Let((reg_hp, Type.Int), Add(reg_hp, C(offset)),
            store))
  | Closure.LetTuple(xts, y, e2) ->
    let s = Closure.fv e2 in
    let (offset, load) =
      expand
        xts
        (0, g (M.add_list xts env) e2)
        (fun x offset load ->
           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
             fletd(x, Flw(y, C(offset)), load))
        (fun x t offset load ->
           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
             Let((x, t), Lw(y, C(offset)), load)) in
    load
  | Closure.Get(x, y) ->
    let offset = Id.genid "o" in
    (match M.find x env with
     | Type.Array(Type.Unit) -> Ans(Nop)
     | Type.Array(Type.Float) ->
       Let((offset, Type.Int), Sll(y, C(2)),
           Ans(Flw(x, V(offset))))
     | Type.Array(_) ->
       Let((offset, Type.Int), Sll(y, C(2)),
           Ans(Lw(x, V(offset))))
     | _ -> assert false)
  | Closure.Put(x, y, z) ->
    let offset = Id.genid "o" in
    (match M.find x env with
     | Type.Array(Type.Unit) -> Ans(Nop)
     | Type.Array(Type.Float) ->
       Let((offset, Type.Int), Sll(y, C(2)),
           Ans(Fsw(V(z), x, V(offset))))
     | Type.Array(_) ->
       Let((offset, Type.Int), Sll(y, C(2)),
           Ans(Sw(z, x, V(offset))))
     | _ -> assert false)
  | Closure.ExtArray(Id.L(x)) -> Ans(SetDL(Id.L("min_caml_" ^ x)))
  | Closure.ExtTuple(Id.L(x)) -> Ans(SetDL(Id.L("min_caml_" ^ x)))
  | Closure.MakeArray(V(x), (y, Type.Float)) ->
    g env (Closure.AppDir(Id.L("min_caml_create_float_array"), [x; y]))
  | Closure.MakeArray(V(x), (y, _)) ->
    g env (Closure.AppDir(Id.L("min_caml_create_array"), [x; y]))
  | Closure.MakeArray(C(n), (y, Type.Float)) ->
    let t = Id.genid "t" in
    let e = Let((reg_hp, Type.Int), Add(reg_hp, C(n * 4)), Ans(Mv(t))) in
    let e = Let((t, Type.Int), Mv(reg_hp), e) in
    let rec inner_ n e =
      if n = 0 then e else
        inner_ (n - 1) (seq(Fsw(V(y), reg_hp, C((n - 1) * 4)), e))
    in inner_ n e
  | Closure.MakeArray(C(n), (y, _)) ->
    let t = Id.genid "t" in
    let e = Let((reg_hp, Type.Int), Add(reg_hp, C(n * 4)), Ans(Mv(t))) in
    let e = Let((t, Type.Int), Mv(reg_hp), e) in
    let rec inner_ n e =
      if n = 0 then e else
        inner_ (n - 1) (seq(Sw(y, reg_hp, C((n - 1) * 4)), e))
    in inner_ n e

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, Flw(x, C(offset)), load))
      (fun z t offset load -> Let((z, t), Lw(x, C(offset)), load)) in
  match t with
  | Type.Fun(_, t2) ->
    { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!data, fundefs, e)
