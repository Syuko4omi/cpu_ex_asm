open Syntax

exception Immediate_out_of_range

let rec find_label_num l env =
  match env with
  | (x, id) :: rest -> if x = l then id else (find_label_num l rest)
  | _ -> 0

let binary_of_op func7 func3 regd reg1 reg2 =
  match reg1, reg2, regd with
  | Regname r1, Regname r2, Regname rd ->
    Int32.of_int ((func7 lsl 25) lor (r2 lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b0110011)

let binary_of_op_imm func3 regd reg1 imm =
  match reg1, regd, imm with
  | Regname r1, Regname rd, Imm imm ->
    if (-2048 <= imm) && (imm <= 2047) then
      Int32.of_int ((imm lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b0010011)
    else
      raise Immediate_out_of_range

let binary_of_op_imm_shift func7 func3 regd reg1 imm =
  match reg1, regd, imm with
  | Regname r1, Regname rd, Imm imm ->
    Int32.of_int ((func7 lsl 25) lor ((imm land 0b11111) lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b0010011)

let binary_of_branch offset func3 reg1 reg2 imm env =
  match reg1, reg2, imm with
  | Regname r1, Regname r2, Jmplabel l ->
    let i = ((find_label_num l env) - offset)*4 in
    Int32.of_int((((i land 4096) lsr 12) lsl 31) lor (((i land 0b11111100000) lsr 5) lsl 25) lor (r2 lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (((i land 0b11110) lsr 1) lsl 8) lor (((i land 2048) lsr 11) lsl 7) lor 0b1100011)

let binary_of_branch_imm offset func3 reg1 reg2 imm env =
  match reg1, reg2, imm with
  | Regname r1, Regname r2, Imm i ->
    Int32.of_int((((i land 4096) lsr 12) lsl 31) lor (((i land 0b11111100000) lsr 5) lsl 25) lor (r2 lsl 20) lor (r1 lsl 15) lor (func3 lsl 12) lor (((i land 0b11110) lsr 1) lsl 8) lor (((i land 2048) lsr 11) lsl 7) lor 0b1100011)

let binary_of_lui regd imm =
  match regd, imm with
  | Regname rd, Imm imm ->
    Int32.of_int((imm lsl 12) lor (rd lsl 7) lor 0b0110111)

let binary_of_auipc regd imm =
  match regd, imm with
  | Regname rd, Imm imm ->
    Int32.of_int((imm lsl 12) lor (rd lsl 7) lor 0b010111)

let binary_of_jal offset regd imm env =
  match regd, imm with
  | Regname rd, Jmplabel l ->
    let imm = ((find_label_num l env) - offset)*4 in
    Int32.of_int((((imm land 1048576) lsr 20) lsl 31) lor (((imm land 0b11111111110) lsr 1) lsl 21) lor (((imm land 0b100000000000) lsr 11) lsl 20) lor (((imm land 1048575) lsr 12) lsl 12) lor (rd lsl 7) lor 0b1101111)

let binary_of_jal_imm offset regd imm env =
  match regd, imm with
  | Regname rd, Imm i ->
    Int32.of_int((((i land 1048576) lsr 20) lsl 31) lor (((i land 0b11111111110) lsr 1) lsl 21) lor (((i land 0b100000000000) lsr 11) lsl 20) lor (((i land 1048575) lsr 12) lsl 12) lor (rd lsl 7) lor 0b1101111)


let binary_of_jalr regd reg1 imm =
  match reg1, regd, imm with
  | Regname r1, Regname rd, Imm imm ->
    Int32.of_int((imm lsl 20) lor (r1 lsl 15) lor (rd lsl 7) lor 0b1100111)

let binary_of_lw regd imm reg1 =
  match regd, imm, reg1 with
  | Regname rd, Imm imm, Regname r1 ->
    Int32.of_int((imm lsl 20) lor (r1 lsl 15) lor (0b010 lsl 12) lor (rd lsl 7) lor 0b11)

let binary_of_sw reg2 imm reg1 =
  match reg2, imm, reg1 with
  | Regname r2, Imm imm, Regname r1 ->
    Int32.of_int((((imm land 0b111111100000) lsr 5) lsl 25) lor (r2 lsl 20) lor (r1 lsl 15) lor (0b010 lsl 12) lor ((imm land 0b11111) lsl 7) lor 0b0100011)

let binary_of_fop func7 func3 fregd freg1 freg2 =
  match fregd, freg1, freg2 with
  | Fregname fd, Fregname f1, Fregname f2 ->
    Int32.of_int((func7 lsl 25) lor (f2 lsl 20) lor (f1 lsl 15) lor (func3 lsl 12) lor (fd lsl 7) lor 0b1010011)

let binary_of_flw fregd imm reg1 =
  match fregd, imm, reg1 with
  | Fregname fd, Imm imm, Regname f1 ->
    Int32.of_int((imm lsl 20) lor (f1 lsl 15) lor (0b010 lsl 12) lor (fd lsl 7) lor 0b111)

let binary_of_fsw freg2 imm reg1 =
  match freg2, imm, reg1 with
  | Fregname f2, Imm imm, Regname f1 ->
    Int32.of_int((((imm land 0b111111100000) lsr 5) lsl 25) lor (f2 lsl 20) lor (f1 lsl 15) lor (0b010 lsl 12) lor ((imm land 0b11111) lsl 7) lor 0b0100111)

let binary_of_fmvxw regd freg1 =
  match regd, freg1 with
  | Regname rd, Fregname f1 ->
    Int32.of_int((0b1110000 lsl 25) lor (f1 lsl 15) lor (rd lsl 7) lor 0b1010011)

let binary_of_fmvwx fregd reg1 =
  match fregd, reg1 with
  | Fregname fd, Regname r1 ->
    Int32.of_int((0b1111000 lsl 25) lor (r1 lsl 15) lor (fd lsl 7) lor 0b1010011)

let binary_of_fbranch func7 func3 regd freg1 freg2 =
  match regd, freg1, freg2 with
  | Regname rd, Fregname f1, Fregname f2 ->
    Int32.of_int((func7 lsl 25) lor (f2 lsl 20) lor (f1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b1010011)

let binary_of_fcvtws func7 func3 regd freg1 =
  match regd, freg1 with
  | Regname rd, Fregname f1 ->
    Int32.of_int((func7 lsl 25) lor (f1 lsl 15) lor (func3 lsl 12) lor (rd lsl 7) lor 0b1010011)

let binary_of_fcvtsw func7 func3 fregd reg1 =
  match fregd, reg1 with
  | Fregname fd, Regname r1 ->
    Int32.of_int((func7 lsl 25) lor (r1 lsl 15) lor (func3 lsl 12) lor (fd lsl 7) lor 0b1010011)


let binary_of_send regd =
  match regd with
  | Regname rd -> Int32.of_int((rd lsl 15) lor 0b0000010)

let binary_of_recv regd =
  match regd with
  | Regname rd -> Int32.of_int((rd lsl 7) lor 0b0000001)

let make_binary offset env e = match e with
  | Add (x, y, z) -> binary_of_op 0 0 x y z
  | Sub (x, y, z) -> binary_of_op 32 0 x y z  (*0b100000 = 32*)
  | Sll (x, y, z) -> binary_of_op 0 1 x y z
  | Slt (x, y, z) -> binary_of_op 0 2 x y z
  | Xor (x, y, z) -> binary_of_op 0 4 x y z
  | Srl (x, y, z) -> binary_of_op 0 5 x y z
  | Sra (x, y, z) -> binary_of_op 32 5 x y z
  | Or (x, y, z) ->  binary_of_op 0 6 x y z
  | And (x, y, z) -> binary_of_op 0 7 x y z
  | Addi (x, y, z) -> binary_of_op_imm 0 x y z
  | Slti (x, y, z) -> binary_of_op_imm 2 x y z
  | Xori (x, y, z) -> binary_of_op_imm 4 x y z
  | Ori (x, y, z) ->  binary_of_op_imm 6 x y z
  | Andi (x, y, z) -> binary_of_op_imm 7 x y z
  | Slli (x, y, z) ->  binary_of_op_imm_shift 0 1 x y z
  | Srli (x, y, z) ->  binary_of_op_imm_shift 0 5 x y z
  | Srai (x, y, z) ->  binary_of_op_imm_shift 32 5 x y z
  | Beq (x, y, z) ->   binary_of_branch offset 0 x y z env
  | Bne (x, y, z) ->  binary_of_branch offset 1 x y z env
  | Blt (x, y, z) ->  binary_of_branch offset 4 x y z env
  | Bge (x, y, z) ->  binary_of_branch offset 5 x y z env
  | Bltu (x, y, z) -> binary_of_branch offset 6 x y z env
  | Bgeu (x, y, z) -> binary_of_branch offset 7 x y z env
  | Beqi (x, y, z) ->  binary_of_branch_imm offset 0 x y z env
  | Bnei (x, y, z) ->  binary_of_branch_imm offset 1 x y z env
  | Blti (x, y, z) ->  binary_of_branch_imm offset 4 x y z env
  | Bgei (x, y, z) ->  binary_of_branch_imm offset 5 x y z env
  | Lui (x, y) ->     binary_of_lui x y
  | Auipc (x, y) ->   binary_of_auipc x y
  | Jal (x, y) ->     binary_of_jal offset x y env
  | Jali (x, y) ->    binary_of_jal_imm offset x y env
  | Jalr (x, y, z) -> binary_of_jalr x y z
  | Lw (x, y, z) ->   binary_of_lw x y z
  | Sw (x, y, z) ->   binary_of_sw x y z
  | Mul (x, y, z) ->  binary_of_op 1 0 x y z
  | Div (x, y, z) ->  binary_of_op 1 4 x y z
  | Rem (x, y, z) ->  binary_of_op 1 5 x y z
  | Flw (x, y, z) ->  binary_of_flw x y z
  | Fsw (x, y, z) ->  binary_of_fsw x y z
  | Fadds (x, y, z) ->   binary_of_fop 0 0 x y z
  | Fsubs (x, y, z) ->   binary_of_fop 4 0 x y z
  | Fmuls (x, y, z) ->   binary_of_fop 8 0 x y z
  | Fdivs (x, y, z) ->   binary_of_fop 12 0 x y z
  | Fsqrts (x, y) ->     binary_of_fop 0b0101100 0 x y (Fregname(0))
  | Fsgnjs (x, y, z) ->  binary_of_fop 0b0010000 0 x y z
  | Fsgnjns (x, y, z) -> binary_of_fop 0b0010000 1 x y z
  | Fcvtws (x, y) ->     binary_of_fcvtws 0b1100000 0 x y
  | Fcvtwsrdn (x, y) ->  binary_of_fcvtws 0b1100000 2 x y
  | Fmvxw (x, y) ->   binary_of_fmvxw x y
  | Feqs (x, y, z) ->   binary_of_fbranch 0b1010000 2 x y z
  | Flts (x, y, z) ->   binary_of_fbranch 0b1010000 1 x y z
  | Fles (x, y, z) ->   binary_of_fbranch 0b1010000 0 x y z
  | Fcvtsw (x, y) ->  binary_of_fcvtsw 0b1101000 0 x y
  | Fcvtswrdn (x, y) -> binary_of_fcvtsw 0b1101000 2 x y
  | Fmvwx (x, y) ->   binary_of_fmvwx x y
  | Ble (x, y, z) ->    binary_of_branch offset 5 y x z env
  | Bgt (x, y, z) ->    binary_of_branch offset 4 y x z env
  | Bgtu (x, y, z) ->   binary_of_branch offset 6 y x z env
  | Fmvs (x, y) ->    binary_of_fop 0b0010000 0 x y y
  | Send (x)     ->   binary_of_send x
  | Recv (x)     ->   binary_of_recv x
  | Four_byte_data (x) -> (match x with
                          | Imm y -> Int32.of_int(y))
