exception Invalid_command

type imm_x = int
type imm = Imm of imm_x
type reg_x = int
type reg = Regname of reg_x
type freg_x = int
type freg = Fregname of freg_x
type toplabel_x = string
type toplabel = Toplabel of toplabel_x
type jmplabel_x = string
type jmplabel = Jmplabel of jmplabel_x

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
  | Li of reg * imm
  | Auipc of reg * imm
  | Jal of reg * jmplabel
  | Jalr of reg * reg * imm
  | Lw of reg * imm * reg
  | Sw of reg * imm * reg
  | Mul of reg * reg * reg
  | Div of reg * reg * reg
  | Rem of reg * reg * reg
  | Flw of freg * imm * reg
  | Fsw of freg * imm * reg
  | Fadds of freg * freg * freg
  | Fsubs of freg * freg * freg
  | Fmuls of freg * freg * freg
  | Fdivs of freg * freg * freg
  | Fsqrts of freg * freg
  | Fmvxw of reg * freg
  | Feqs of reg * freg * freg
  | Flts of reg * freg * freg
  | Fles of reg * freg * freg
  | Fmvwx of freg * reg

type command =
  | Top of expr
  | Top_label of jmplabel_x
