open Syntax
open Eval

exception Parse_error

let channel = if (Array.length Sys.argv) = 1 then stdin else (open_in Sys.argv.(1))

type status = {
  row_num : int;
  env     : (string * int) list;
  exprs   : expr list;
  }

let initial_status = {row_num = 0; env = []; exprs = []}

let rec read_eval_print sta =
  try
    let cmd = Parser.toplevel Lexer.main (Lexing.from_channel channel) in
    match cmd with
    | Top_label l -> read_eval_print {sta with env = (l, sta.row_num)::sta.env}
    | Top exp -> read_eval_print {sta with row_num = sta.row_num+1; exprs = exp::sta.exprs}
  with
    End_of_file -> (sta.env, sta.exprs)

let assemble env exprs =
  Array.map (make_binary 0 env) exprs

let _ =
  let (env, exprs) = read_eval_print initial_status in
  assemble env exprs


(*match cmd with
| Top exp -> Printf.printf "%x" (make_binary 0 [] exp); read_eval_print {sta with row_num = sta.row_num+1; exprs = exp::sta.exprs}
*)
