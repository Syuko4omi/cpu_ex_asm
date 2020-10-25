open Syntax
open Eval

exception Parse_error

type status = {
  row_num : int;
  env     : (string * int) list;
  exprs   : expr list;
  }

let initial_status = {row_num = 0; env = []; exprs = []}

let rec read_eval_print sta =
  print_newline ();
  let cmd = Parser.toplevel Lexer.main (Lexing.from_channel stdin) in
  match cmd with
  | Top exp -> Printf.printf "%x" (make_binary 0 [] exp); read_eval_print {sta with row_num = sta.row_num+1; exprs = exp::sta.exprs}
  (*match cmd with
    | Top_label l -> read_eval_print {sta with env = (l, sta.row_num)::sta.env}
    | Top exp -> read_eval_print {sta with row_num = sta.row_num+1; exprs = exp::sta.exprs}
*)
let _ = read_eval_print initial_status
