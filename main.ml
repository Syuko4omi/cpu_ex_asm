open Syntax
open Eval

exception Parse_error

let channel = if (Array.length Sys.argv) < 2 then stdin else (open_in Sys.argv.(1))

let lexbuf = Lexing.from_channel channel

type status = {
  row_num : int;
  env     : (string * int) list;
  exprs   : expr list;
  }

let initial_status = {row_num = 0; env = []; exprs = []}

let rec read_eval sta =
  try
    let cmd = Parser.toplevel Lexer.main lexbuf in
    match cmd with
      | Top_label l -> read_eval {sta with env = (l, sta.row_num)::sta.env}
      | Top exp ->
        (match exp with
        | Li (x, Imm imm) ->
          let exp1 = Lui (x, Imm (imm lsr 12)) in
          let exp2 = Addi (x, x, Imm (imm land 0b111111111111)) in
          read_eval {sta with row_num = sta.row_num+2; exprs = exp2::(exp1::sta.exprs)}
        | _ -> read_eval {sta with row_num = sta.row_num+1; exprs = exp::sta.exprs})
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
        | [] -> print_string "\n"
        | r :: rest -> Printf.printf "%x\n" r; hoge rest in
      hoge l

let _ =
  let (env, exprs) = read_eval initial_status in
  assemble env exprs
