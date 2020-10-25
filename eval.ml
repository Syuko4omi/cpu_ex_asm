open Syntax

exception Invalid_command

type reg_var = [`Regname of reg_x]

let rec find_label_num l env =
  match env with
  | (x, id) :: rest -> if x = l then id else (find_label_num l rest)
  | _ -> 0

let binary_of_op func7 func3 regd reg1 reg2 =
  match (reg1 :> reg_var), (reg2 :> reg_var), (regd :> reg_var) with
  | `Regname r1, `Regname r2, `Regname rd ->
    (func7 lsl 25) lor (r2 lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b0110011
  | _ -> raise Invalid_command

let binary_of_op_imm func3 regd reg1 imm =
  match (reg1 :> reg_var), (regd :> reg_var), (imm :> opr) with
  | `Regname r1, `Regname rd, `Imm imm ->
    (imm lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b0010011
  | _ -> raise Invalid_command

let binary_of_op_imm_shift func7 func3 regd reg1 imm =
  match (reg1 :> reg_var), (regd :> reg_var), (imm :> opr) with
  | `Regname r1, `Regname rd, `Imm imm ->
    (func7 lsl 25) lor ((imm land 0b11111) lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b0010011
  | _ -> raise Invalid_command

let binary_of_branch func3 reg1 reg2 imm env =
  match (reg1 :> reg_var), (reg2 :> reg_var), (imm :> opr) with
  | `Regname r1, `Regname r2, (`Jmplabel _ as l) ->
    let imm = find_label_num l env in
    (((imm land 4096) lsr 12) lsl 31) lor (((imm land 0b1111100000) lsr 5) lsl 25) lor (r2 lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (((imm land 0b11110) lsr 1) lsl 8) lor (((imm land 2048) lsr 11) lsl 7) lor 0b1100011
  | _ -> raise Invalid_command

let binary_of_lui regd imm =
  match (regd :> reg_var), (imm :> opr) with
  | `Regname rd, `Imm imm->
    ((imm lsr 12) lsl 12) lor (rd lsl 7) lor 0b110111
  | _ -> raise Invalid_command

let binary_of_auipc regd imm =
  match (regd :> reg_var), (imm :> opr) with
  | `Regname rd, `Imm imm ->
    ((imm lsr 12) lsl 12) lor (rd lsl 7) lor 0b010111
  | _ -> raise Invalid_command

let binary_of_jal regd imm env =
  match (regd :> reg_var), (imm :> opr) with
  | `Regname rd, (`Jmplabel _ as l) ->
    let imm = find_label_num l env in
    (((imm land 2097151) lsr 20) lsl 31) lor (((imm land 0b11111111110) lsr 1) lsl 21) lor (((imm land 0b100000000000) lsr 11) lsl 20) lor (((imm land 1048575) lsr 12) lsl 12) lor (rd lsl 7) lor 0b110111
  | _ -> raise Invalid_command

let binary_of_jalr reg1 regd imm env =
  match (reg1 :> reg_var), (regd :> reg_var), (imm :> opr) with
  | `Regname r1, `Regname rd, (`Jmplabel _ as l) ->
    let imm = find_label_num l env in
    (imm lsl 20) lor (r1 lsl 15) lor (rd lsl 7) lor 0b1100111
  | _ -> raise Invalid_command

(*lw, sw*)

let make_binary offset env e = match e with
  | Add (x, y, z) -> binary_of_op 0 0 x y z
  | Sub (x, y, z) -> binary_of_op 0b100000 0 x y z
  | Sll (x, y, z) -> binary_of_op 0 1 x y z
  | Slt (x, y, z) -> binary_of_op 0 2 x y z
  | Xor (x, y, z) -> binary_of_op 0 4 x y z
  | Srl (x, y, z) -> binary_of_op 0 5 x y z
  | Sra (x, y, z) -> binary_of_op 0b100000 5 x y z
  | Or (x, y, z) -> binary_of_op 0 6 x y z
  | And (x, y, z) -> binary_of_op 0 7 x y z
  | Addi (x, y, z) -> binary_of_op_imm 0 x y z
  | Slti (x, y, z) -> binary_of_op_imm 2 x y z
  | Xori (x, y, z) -> binary_of_op_imm 4 x y z
  | Ori (x, y, z) -> binary_of_op_imm 6 x y z
  | Andi (x, y, z) -> binary_of_op_imm 7 x y z
  | Slli (x, y, z) -> binary_of_op_imm_shift 0 1 x y z
  | Srli (x, y, z) -> binary_of_op_imm_shift 0 5 x y z
  | Srai (x, y, z) -> binary_of_op_imm_shift 0b100000 5 x y z
  | Beq (x, y, z) -> binary_of_branch 0 x y z env
  | Bne (x, y, z) -> binary_of_branch 1 x y z env
  | Blt (x, y, z) -> binary_of_branch 4 x y z env
  | Bge (x, y, z) -> binary_of_branch 5 x y z env
  | Lui (x, y) -> binary_of_lui x y
  | Auipc (x, y) -> binary_of_auipc x y
  | Jal (x, y) -> binary_of_jal x y env
  | Jalr (x, y, z) -> binary_of_jalr x y z env
  | _ -> raise Invalid_command
