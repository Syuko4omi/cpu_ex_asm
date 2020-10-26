%{
  open Syntax
%}

%token NEWLINE
%token ADD SUB SLL SLT XOR SRL SRA OR AND
%token ADDI SLTI XORI ORI ANDI
%token SLLI SRLI SRAI
%token BEQ BNE BLT BGE
%token LUI AUIPC
%token JAL
%token JALR
%token LW SW
%token <int> IMM
%token <int> REG
%token <string> JMPLABEL
%token <Syntax.jmplabel_x> LABEL

%start toplevel
%type <Syntax.command> toplevel
%%

toplevel:
  | LABEL { Top_label $1 }
  | expr NEWLINE { Top $1 }
;

expr:
  | ADD REG REG REG      {Add (Regname($2), Regname($3), Regname($4))}
  | SUB REG REG REG      {Sub (Regname($2), Regname($3), Regname($4))}
  | SLL REG REG REG      {Sll (Regname($2), Regname($3), Regname($4))}
  | SLT REG REG REG      {Slt (Regname($2), Regname($3), Regname($4))}
  | XOR REG REG REG      {Xor (Regname($2), Regname($3), Regname($4))}
  | SRL REG REG REG      {Srl (Regname($2), Regname($3), Regname($4))}
  | SRA REG REG REG      {Sra (Regname($2), Regname($3), Regname($4))}
  | OR REG REG REG       {Or (Regname($2), Regname($3), Regname($4))}
  | ADDI REG REG IMM     {Addi (Regname($2), Regname($3), Imm($4))}
  | SLTI REG REG IMM     {Slti ( Regname($2),  Regname($3), Imm($4))}
  | XORI REG REG IMM     {Xori ( Regname($2),  Regname($3),  Imm($4))}
  | ORI REG REG IMM      {Ori ( Regname($2),  Regname($3),  Imm($4))}
  | ANDI REG REG IMM     {Andi ( Regname($2),  Regname($3),  Imm($4))}
  | SLLI REG REG IMM     {Slli ( Regname($2),  Regname($3),  Imm($4))}
  | SRLI REG REG IMM     {Srli ( Regname($2),  Regname($3),  Imm($4))}
  | SRAI REG REG IMM     {Srai ( Regname($2),  Regname($3),  Imm($4))}
  | BEQ REG REG JMPLABEL {Beq ( Regname($2),  Regname($3), Jmplabel($4))}
  | BNE REG REG JMPLABEL {Bne ( Regname($2),  Regname($3), Jmplabel($4))}
  | BLT REG REG JMPLABEL {Blt ( Regname($2),  Regname($3), Jmplabel($4))}
  | BGE REG REG JMPLABEL {Bge ( Regname($2),  Regname($3), Jmplabel($4))}
  | LUI REG IMM          {Lui ( Regname($2), Imm($3))}
  | AUIPC REG IMM        {Auipc ( Regname($2),  Imm($3))}
  | JAL REG JMPLABEL     {Jal ( Regname($2),  Jmplabel($3))}
  | JALR REG REG IMM     {Jalr ( Regname($2),  Regname($3),  Imm($4))}
