exception Invalid_command

type imm_x = int
type imm = [`Imm of imm_x]
type reg_x = int
type reg = [`Regname of reg_x]
type jmplabel_x = string
type jmplabel = [`Jmplabel of jmplabel_x]
type opr = [`Imm of imm_x | `Regname of reg_x | `Jmplabel of jmplabel_x]

type expr =
  | Add of reg * reg * reg
  | Sub of reg * reg * reg
  | Sll of reg * reg * reg
  | Slt of reg * reg * reg
  | Xor of reg * reg * reg
  | Srl of reg * reg * reg
  | Sra of reg * reg * reg
  | Or of reg * reg * reg
  | And of reg * reg * reg
  | Addi of reg * reg * imm
  | Slti of reg * reg * imm
  | Xori of reg * reg * imm
  | Ori of reg * reg * imm
  | Andi of reg * reg * imm
  | Slli of reg * reg * imm
  | Srli of reg * reg * imm
  | Srai of reg * reg * imm
  | Beq of reg * reg * jmplabel
  | Bne of reg * reg * jmplabel
  | Blt of reg * reg * jmplabel
  | Bge of reg * reg * jmplabel
  | Lui of reg * imm
  | Auipc of reg * imm
  | Jal of reg * jmplabel
  | Jalr of reg * reg * jmplabel
(*  | Lw of reg * reg * imm
  | Sw of reg * reg * imm *)

let reg = function #reg as x -> x | _ -> raise Invalid_command
let imm = function #imm as x -> x | _ -> raise Invalid_command
let jmplabel = function #jmplabel as x -> x | _ -> raise Invalid_command

type command =
  | Top of expr
  | Top_label of jmplabel_x

let print_operand e =
  match e with
  | `Imm a -> string_of_int a
  | `Regname a -> "x" ^ (string_of_int a)
  | `Jmplabel a -> a

let print_expr_sub_2 op x y =
  Printf.sprintf "%s %s, %s\n" op (print_operand x) (print_operand y)

let print_expr_sub_3 op x y z =
  Printf.sprintf "%s %s, %s, %s\n" op (print_operand x) (print_operand y) (print_operand z)


let rec print_expr e =
  match e with
  | Add (x, y, z) -> print_expr_sub_3 "add" x y z
  | Sub (x, y, z) -> print_expr_sub_3 "sub" x y z
  | Sll (x, y, z) -> print_expr_sub_3 "sll" x y z
  | Slt (x, y, z) -> print_expr_sub_3 "slt" x y z
  | Xor (x, y, z) -> print_expr_sub_3 "xor" x y z
  | Srl (x, y, z) -> print_expr_sub_3 "srl" x y z
  | Sra (x, y, z) -> print_expr_sub_3 "sra" x y z
  | Or (x, y, z) -> print_expr_sub_3 "or" x y z
  | And (x, y, z) -> print_expr_sub_3 "and" x y z
  | Addi (x, y, z) -> print_expr_sub_3 "addi" x y z
  | Slti (x, y, z) -> print_expr_sub_3 "slti" x y z
  | Xori (x, y, z) -> print_expr_sub_3 "xori" x y z
  | Ori (x, y, z) -> print_expr_sub_3 "ori" x y z
  | Andi (x, y, z) -> print_expr_sub_3 "andi" x y z
  | Slli (x, y, z) -> print_expr_sub_3 "slli" x y z
  | Srli (x, y, z) -> print_expr_sub_3 "srli" x y z
  | Srai (x, y, z) -> print_expr_sub_3 "srai" x y z
  | Beq (x, y, z) -> print_expr_sub_3 "beq" x y z
  | Bne (x, y, z) -> print_expr_sub_3 "bne" x y z
  | Blt (x, y, z) -> print_expr_sub_3 "blt" x y z
  | Bge (x, y, z) -> print_expr_sub_3 "bge" x y z
  | Lui (x, y) -> print_expr_sub_2 "lui" x y
  | Auipc (x, y) -> print_expr_sub_2 "auipc" x y
  | Jal (x, y) -> print_expr_sub_2 "jal" x y
  | Jalr (x, y, z) -> print_expr_sub_3 "jalr" x y z
(*  | Lw (x, y, z) -> print_expr_sub_3 "lw" x y z
  | Sw (x, y, z) -> print_expr_sub_3 "sw" x y z *)
