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
| digit as d            { (IMM (int_of_string d))}
| "zero"                { (REG (0))}
| "ra"                  { (REG (1))}
| "sp"                  { (REG (2))}
| "gp"                  { (REG (3))}
| "tp"                  { (REG (4))}
| "t0"                  { (REG (5))}
| "t1"                  { (REG (6))}
| "t2"                  { (REG (7))}
| "s0"                  { (REG (8))}
| "s1"                  { (REG (9))}
| 'a' (reg_num as x)    { (REG ((int_of_string x)+10) )}
| "s2"                  { (REG (18))}
| "s3"                  { (REG (19))}
| "s4"                  { (REG (20))}
| "s5"                  { (REG (21))}
| "s6"                  { (REG (22))}
| "s7"                  { (REG (23))}
| "s8"                  { (REG (24))}
| "s9"                  { (REG (25))}
| "s10"                 { (REG (26))}
| "s11"                 { (REG (27))}
| "t3"                  { (REG (28))}
| "t4"                  { (REG (29))}
| "t5"                  { (REG (30))}
| "t6"                  { (REG (31))}
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
| (text_ele+ as l)      { (JMPLABEL l) }
| _                     { failwith ("Unknown Token: " ^ Lexing.lexeme lexbuf)}
