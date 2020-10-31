type token =
  | NEWLINE
  | ADD
  | SUB
  | SLL
  | SLT
  | XOR
  | SRL
  | SRA
  | OR
  | AND
  | ADDI
  | SLTI
  | XORI
  | ORI
  | ANDI
  | SLLI
  | SRLI
  | SRAI
  | BEQ
  | BNE
  | BLT
  | BGE
  | LUI
  | AUIPC
  | JAL
  | JALR
  | LW
  | SW
  | MUL
  | DIV
  | REM
  | FLW
  | FSW
  | FADDS
  | FSUBS
  | FMULS
  | FDIVS
  | FSQRTS
  | FMVXW
  | FEQS
  | FLTS
  | FLES
  | FMVWX
  | LPAR
  | RPAR
  | IMM of (int)
  | REG of (int)
  | FREG of (int)
  | JMPLABEL of (string)
  | LABEL of (Syntax.jmplabel_x)

val toplevel :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Syntax.command
