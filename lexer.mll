{
  open Parser
}

let natural_num = ['1'-'9'] ['0'-'9']* | '0'
let digit = '-'? natural_num
let reg_num = ['1'-'2']? ['0'-'9'] | ['3'] ['0'-'1']
let space = ' ' | '\t' | '\r'
let text_ele = ['a'-'z' 'A'-'Z' '_' '0'-'9' '-']

rule main = parse
| space+ | ','          { main lexbuf } (*skip blank*)
| '\n'                  { NEWLINE }
| (text_ele+ as l) ':'  { LABEL l }
| digit as d            { OPR (`Imm (int_of_string  d))}
| "zero"                { OPR (`Regname (  0))}
| "ra"                  { OPR (`Regname (  1))}
| "sp"                  { OPR (`Regname (  2))}
| "gp"                  { OPR (`Regname (  3))}
| "tp"                  { OPR (`Regname (  4))}
| "t0"                  { OPR (`Regname (  5))}
| "t1"                  { OPR (`Regname (  6))}
| "t2"                  { OPR (`Regname (  7))}
| "s0"                  { OPR (`Regname (  8))}
| "s1"                  { OPR (`Regname (  9))}
| 'a' (reg_num as x)    { OPR (`Regname ((int_of_string x)+10) )}
| "s2"                  { OPR (`Regname (  18))}
| "s3"                  { OPR (`Regname (  19))}
| "s4"                  { OPR (`Regname (  20))}
| "s5"                  { OPR (`Regname (  21))}
| "s6"                  { OPR (`Regname (  22))}
| "s7"                  { OPR (`Regname (  23))}
| "s8"                  { OPR (`Regname (  24))}
| "s9"                  { OPR (`Regname (  25))}
| "s10"                 { OPR (`Regname (  26))}
| "s11"                 { OPR (`Regname (  27))}
| "t3"                  { OPR (`Regname (  28))}
| "t4"                  { OPR (`Regname (  29))}
| "t5"                  { OPR (`Regname (  30))}
| "t6"                  { OPR (`Regname (  31))}
| "add"                 { ADD }
| "sub"                 { SUB }
| "sll"                 { SLL }
| "slt"                 { SLT }
| "xor"                 { XOR }
| "srl"                 { SRL }
| "sra"                 { SRA }
| "or"                  { OR }
| "and"                 { AND }
| "addi"                { ADDI }
| "slti"                { SLTI }
| "xori"                { XORI }
| "ori"                 { ORI }
| "andi"                { ANDI }
| "slli"                { SLLI }
| "srli"                { SRLI }
| "srai"                { SRAI }
| "beq"                 { BEQ }
| "bne"                 { BNE }
| "blt"                 { BLT }
| "bge"                 { BGE }
| "lui"                 { LUI }
| "auipc"               { AUIPC }
| "jal"                 { JAL }
| "jalr"                { JALR }
(*| "lw"                  { LW }
| "sw"                  { SW }*)
| eof                   { raise End_of_file }
| (text_ele+ as l)      { OPR (`Jmplabel l) }
| _                     { failwith ("Unknown Token: " ^ Lexing.lexeme lexbuf)}
