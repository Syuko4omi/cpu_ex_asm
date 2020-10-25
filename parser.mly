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
%token <Syntax.opr> OPR
%token <Syntax.jmplabel_x> LABEL

%start toplevel
%type <Syntax.command> toplevel
%%

toplevel:
  | LABEL { Top_label $1 }
  | expr NEWLINE { Top $1 }
;

expr:
  | ADD OPR OPR OPR  {Add (reg $2, reg $3, reg $4)}
  | SUB OPR OPR OPR  {Sub (reg $2, reg $3, reg $4)}
  | SLL OPR OPR OPR  {Sll (reg $2, reg $3, reg $4)}
  | SLT OPR OPR OPR  {Slt (reg $2, reg $3, reg $4)}
  | XOR OPR OPR OPR  {Xor (reg $2, reg $3, reg $4)}
  | SRL OPR OPR OPR  {Srl (reg $2, reg $3, reg $4)}
  | SRA OPR OPR OPR  {Sra (reg $2, reg $3, reg $4)}
  | OR OPR OPR OPR   {Or (reg $2, reg $3, reg $4)}
  | ADDI OPR OPR OPR {Addi (reg $2, reg $3, imm $4)}
  | SLTI OPR OPR OPR {Slti (reg $2, reg $3, imm $4)}
  | XORI OPR OPR OPR {Xori (reg $2, reg $3, imm $4)}
  | ORI OPR OPR OPR  {Ori (reg $2, reg $3, imm $4)}
  | ANDI OPR OPR OPR {Andi (reg $2, reg $3, imm $4)}
  | SLLI OPR OPR OPR {Slli (reg $2, reg $3, imm $4)}
  | SRLI OPR OPR OPR {Srli (reg $2, reg $3, imm $4)}
  | SRAI OPR OPR OPR {Srai (reg $2, reg $3, imm $4)}
  | BEQ OPR OPR OPR  {Beq (reg $2, reg $3, jmplabel $4)}
  | BNE OPR OPR OPR  {Bne (reg $2, reg $3, jmplabel $4)}
  | BLT OPR OPR OPR  {Blt (reg $2, reg $3, jmplabel $4)}
  | BGE OPR OPR OPR  {Bge (reg $2, reg $3, jmplabel $4)}
  | LUI OPR OPR      {Lui (reg $2, imm $3)}
  | AUIPC OPR OPR    {Auipc (reg $2, imm $3)}
  | JAL OPR OPR      {Jal (reg $2, jmplabel $3)}
  | JALR OPR OPR OPR {Jalr (reg $2, reg $3, jmplabel $4)}
