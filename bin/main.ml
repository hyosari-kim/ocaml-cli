let useage_msg =
  {|
  **This is CLI using OCaml**

  API examples:
    ./cli add 1 2
    ./cli concat a b
    ./cli read src/MyFile.res
    ./cli rename src/MyFile.res foo.res
|}

let verbose = ref false
let input_list = ref []
let output_file = ref ""
let anon_fun arg = input_list := arg :: !input_list

let sepclist =
  [
    ("-verbose", Arg.Set verbose, "Output debug information");
    ("-o", Arg.Set_string output_file, "Set output file name");
  ]

let () = Arg.parse sepclist anon_fun useage_msg

let _ =
  let args = List.rev !input_list in
  (* Add command cases  *)
  match args with
  | [ "add"; a; b ] -> Printf.printf "%s\n" (a ^ b)
  | [ "concat"; a; b ] -> Printf.printf "%s\n" (a ^ b)
  | [ "read"; a ] -> Printf.printf "%s\n" a
  | [ "rename"; a; b ] -> Printf.printf "%s\n" (a ^ b)
  | _ -> prerr_endline useage_msg
