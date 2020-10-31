%{
  open Syntax
%}

%token NEWLINE
%token ADD SUB SLL SLT XOR SRL SRA OR AND
%token ADDI SLTI XORI ORI ANDI
%token SLLI SRLI SRAI
%token BEQ BNE BLT BGE
%token LUI AUIPC
%token JAL JALR
%token LW SW
%token MUL DIV REM
%token FLW FSW
%token FADDS FSUBS FMULS FDIVS FSQRTS FMVXW FEQS FLTS FLES FMVWX
%token LPAR RPAR
%token <int> IMM
%token <int> REG
%token <int> FREG
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
  | ADD REG REG REG               {Add (Regname($2), Regname($3), Regname($4))}
  | SUB REG REG REG               {Sub (Regname($2), Regname($3), Regname($4))}
  | SLL REG REG REG               {Sll (Regname($2), Regname($3), Regname($4))}
  | SLT REG REG REG               {Slt (Regname($2), Regname($3), Regname($4))}
  | XOR REG REG REG               {Xor (Regname($2), Regname($3), Regname($4))}
  | SRL REG REG REG               {Srl (Regname($2), Regname($3), Regname($4))}
  | SRA REG REG REG               {Sra (Regname($2), Regname($3), Regname($4))}
  | OR REG REG REG                {Or (Regname($2), Regname($3), Regname($4))}
  | ADDI REG REG IMM              {Addi (Regname($2), Regname($3), Imm($4))}
  | SLTI REG REG IMM              {Slti ( Regname($2),  Regname($3), Imm($4))}
  | XORI REG REG IMM              {Xori ( Regname($2),  Regname($3),  Imm($4))}
  | ORI REG REG IMM               {Ori ( Regname($2),  Regname($3),  Imm($4))}
  | ANDI REG REG IMM              {Andi ( Regname($2),  Regname($3),  Imm($4))}
  | SLLI REG REG IMM              {Slli ( Regname($2),  Regname($3),  Imm($4))}
  | SRLI REG REG IMM              {Srli ( Regname($2),  Regname($3),  Imm($4))}
  | SRAI REG REG IMM              {Srai ( Regname($2),  Regname($3),  Imm($4))}
  | BEQ REG REG JMPLABEL          {Beq ( Regname($2),  Regname($3), Jmplabel($4))}
  | BNE REG REG JMPLABEL          {Bne ( Regname($2),  Regname($3), Jmplabel($4))}
  | BLT REG REG JMPLABEL          {Blt ( Regname($2),  Regname($3), Jmplabel($4))}
  | BGE REG REG JMPLABEL          {Bge ( Regname($2),  Regname($3), Jmplabel($4))}
  | LUI REG IMM                   {Lui ( Regname($2), Imm($3))}
  | AUIPC REG IMM                 {Auipc ( Regname($2),  Imm($3))}
  | JAL REG JMPLABEL              {Jal ( Regname($2),  Jmplabel($3))}
  | JALR REG REG IMM              {Jalr ( Regname($2),  Regname($3),  Imm($4))}
  | LW REG IMM LPAR REG RPAR      {Lw ( Regname($2),  Imm($3),  Regname($5))}
  | SW REG IMM LPAR REG RPAR      {Sw ( Regname($2),  Imm($3),  Regname($5))}
  | MUL REG REG REG               {Mul (Regname($2), Regname($3), Regname($4))}
  | DIV REG REG REG               {Div (Regname($2), Regname($3), Regname($4))}
  | REM REG REG REG               {Rem (Regname($2), Regname($3), Regname($4))}
  | FLW FREG IMM LPAR FREG RPAR   {Flw ( Fregname($2),  Imm($3),  Fregname($5))}
  | FSW FREG IMM LPAR FREG RPAR   {Fsw ( Fregname($2),  Imm($3),  Fregname($5))}
  | FADDS FREG FREG FREG          {Fadds (Fregname($2), Fregname($3), Fregname($4))}
  | FSUBS FREG FREG FREG          {Fsubs (Fregname($2), Fregname($3), Fregname($4))}
  | FMULS FREG FREG FREG          {Fmuls (Fregname($2), Fregname($3), Fregname($4))}
  | FDIVS FREG FREG FREG          {Fdivs (Fregname($2), Fregname($3), Fregname($4))}
  | FSQRTS FREG FREG              {Fsqrts (Fregname($2), Fregname($3))}
  | FMVXW REG FREG                {Fmvxw (Regname($2), Fregname($3))}
  | FEQS REG FREG FREG            {Feqs (Regname($2), Fregname($3), Fregname($4))}
  | FLTS REG FREG FREG            {Flts (Regname($2), Fregname($3), Fregname($4))}
  | FLES REG FREG FREG            {Fles (Regname($2), Fregname($3), Fregname($4))}
  | FMVWX FREG REG                {Fmvwx (Fregname($2), Regname($3))}
