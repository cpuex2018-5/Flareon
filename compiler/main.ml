let limit = ref 1000
let is_verbose = ref false
let print_k = ref false
let print_closure = ref false
let print_asm = ref false

let rec iter n e = (* optimization (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else (
    let e' = Common.f e in
    let e' = Beta.f !is_verbose e' in
    let e' = Assoc.f e' in
    let e' = Inline.f !is_verbose e' in
    let e' = ConstFold.f e' in
    let e' = Elim.f !is_verbose e' in
    if e = e' then e else
      iter (n - 1) e'
  )

let lexbuf outchan l = (* compile the buffer and put it to outchan (caml2html: main_lexbuf) *)
  Id.counter := 0;
  let e = Parser.exp Lexer.token l in
  let e = Typing.f e in
  let e = KNormal.f e in
  (* print_endline "-----------After KNormal.f--------------"; *)
  let e = Alpha.f e in
  let e = iter !limit e in
  (* let e = Lift.f e in *)
  if !print_k then KNormal.print_t e;
  let e = Closure.f !is_verbose e in
  (* print_endline "-----------After Closure.f-----------------"; *)
  if !print_closure then Closure.print_prog e;
  (* let e = TupleOpt.f e in *)
  (* print_endline "-----------After Virtual.f-----------------"; *)
  let e = Virtual.f e in
  let e = Simm.f e in
  let e = Simm.f e in
  let e = Cond.f e in
  (* let e = Schedule.f Schedule.resource e in *)
  if !print_asm then Asm.print_prog e;
  let e = RegAlloc.f e in
  Emit.f outchan Globals.globals e

let string s = lexbuf stdout (Lexing.from_string s) (* compile a string and put it to stdout (caml2html: main_string) *)

let file f = (* compile a file and put it to stdout (caml2html: main_file) *)
  let ofilename = (String.sub f 0 ((String.length f) - 3)) ^ ".s" in
  let inchan = open_in f in
  let outchan = open_out ofilename in
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* entry point for compiler (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse [
    ("-v", Arg.Unit(fun () -> is_verbose := true), "make compiler verbose");
    ("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
    ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
    ("-asm", Arg.Unit(fun () -> print_asm := true), "print Asm.prog");
    ("-cls", Arg.Unit(fun () -> print_closure := true), "print Closure.prog");
    ("-k", Arg.Unit(fun () -> print_k := true), "print KNormal.t")
  ]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
