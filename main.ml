open Syntax
open Eval

exception Parse_error

let channel = if (Array.length Sys.argv) < 2 then stdin else (open_in Sys.argv.(1))

type status = {
  row_num : int;
  env     : (string * int) list;
  exprs   : expr list;
  }

let initial_status = {row_num = 0; env = []; exprs = []}

let rec read_eval sta =
  try
    let cmd = Parser.toplevel Lexer.main (Lexing.from_channel channel) in
    match cmd with
    | Top_label l -> read_eval {sta with env = (l, sta.row_num)::sta.env}
    | Top exp -> read_eval {sta with row_num = sta.row_num+1; exprs = exp::sta.exprs}
  with
    End_of_file -> (List.rev(sta.env), List.rev(sta.exprs))

let rec make_binary_list env exprs temp =
  match exprs with
  | r :: rest -> (make_binary temp env r) :: (make_binary_list env rest (temp+1))
  | [] -> []

let assemble env exprs =
  let l = make_binary_list env exprs 0 in
    let rec hoge temp =
      match temp with
        | [] -> print_string "hoge\n"
        | r :: rest -> Printf.printf "%x\n" r; hoge rest in
      hoge l

let _ =
  let (env, exprs) = read_eval initial_status in
  assemble env exprs





(*let _ =
  let (env, exprs) = read_eval initial_status in
    let rec hoge temp ex =
    match ex with
      | a :: rest -> hoge (temp+1) rest
      | [] -> temp
    in Printf.printf "%x " (hoge 0 exprs)*)


(*match cmd with
| Top exp -> Printf.printf "%x" (make_binary 0 [] exp); read_eval {sta with row_num = sta.row_num+1; exprs = exp::sta.exprs}
*)
