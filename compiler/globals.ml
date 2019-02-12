external castToInt : float -> int32 = "castToInt"

type global = {
  single_array : (string * int * string) list;
  nested_tuple : (string * string list) list;
  tuple_array  : (string * int * int list) list;
  sub_array    : (string * int * string) list;
}

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

let print_globals oc globals =
  List.iter
    (fun (str, len, init) ->
       Printf.fprintf oc "%s:\n" str;
       for i = 1 to len do
         Printf.fprintf oc "\t.word\t%s\n" init;
       done)
    globals.single_array;
  List.iter
    (fun (str, init) ->
       Printf.fprintf oc "%s:\n" str;
       List.iter (fun s -> Printf.fprintf oc "\t.word\t%s\n" s) init)
    globals.nested_tuple;
  List.iter
    (fun (str, len, init) ->
       Printf.fprintf oc "%s:\n" str;
       for i = 1 to len do
         Printf.fprintf oc "\t.word\t.%s_%d\n" str i;
       done)
    globals.tuple_array;
  List.iter
    (fun (str, len, init) ->
       for i = 1 to len do
         (Printf.fprintf oc ".%s_%d:\n" str i;
          List.iter (fun v -> Printf.fprintf oc "\t.word\t%ld\n" (Int32.of_int v)) init);
       done)
    globals.tuple_array;
  List.iter
    (fun (str, len, init) ->
       Printf.fprintf oc "%s:\n" str;
       for i = 1 to len do
         Printf.fprintf oc "\t.word\t%s\n" init;
       done)
    globals.sub_array
