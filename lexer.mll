{
  open Parser
}

let natural_num = ['1'-'9'] ['0'-'9']* | '0'
let digit = '-'? natural_num
let hexa_decimal = '0' 'x' ['0'-'9' 'a'-'f']*
let reg_num = ['1'-'2']? ['0'-'9'] | ['3'] ['0'-'1']
let space = ' ' | '\t' | '\r'
let text_ele = ['a'-'z' 'A'-'Z' '_' '0'-'9' '-' '.']

rule main = parse
| space+ | ','          { main lexbuf } (*skip blank*)
| '\n'                  { NEWLINE }
| (text_ele+ as l) ':'  { LABEL l }
| digit as d            { (IMM (int_of_string d)) }
| hexa_decimal as h     { (IMM (int_of_string h)) }
| "zero"                { (REG (0)) }
| "ra"                  { (REG (1)) }
| "sp"                  { (REG (2)) }
| "gp"                  { (REG (3)) }
| "tp"                  { (REG (4)) }
| "t0"                  { (REG (5)) }
| "t1"                  { (REG (6)) }
| "t2"                  { (REG (7)) }
| "fp"                  { (REG (8)) }
| "s0"                  { (REG (8)) }
| "s1"                  { (REG (9)) }
| 'a' (reg_num as x)    { (REG ((int_of_string x)+10)) }
| "s2"                  { (REG (18)) }
| "s3"                  { (REG (19)) }
| "s4"                  { (REG (20)) }
| "s5"                  { (REG (21)) }
| "s6"                  { (REG (22)) }
| "s7"                  { (REG (23)) }
| "s8"                  { (REG (24)) }
| "s9"                  { (REG (25)) }
| "s10"                 { (REG (26)) }
| "s11"                 { (REG (27)) }
| "t3"                  { (REG (28)) }
| "t4"                  { (REG (29)) }
| "t5"                  { (REG (30)) }
| "t6"                  { (REG (31)) }
| "ft0"                 { (FREG (0)) }
| "ft1"                 { (FREG (1)) }
| "ft2"                 { (FREG (2)) }
| "ft3"                 { (FREG (3)) }
| "ft4"                 { (FREG (4)) }
| "ft5"                 { (FREG (5)) }
| "ft6"                 { (FREG (6)) }
| "ft7"                 { (FREG (7)) }
| "fs0"                 { (FREG (8)) }
| "fs1"                 { (FREG (9)) }
| "fa" (reg_num as x)   { (FREG ((int_of_string x)+10)) }
| "fs2"                 { (FREG (18)) }
| "fs3"                 { (FREG (19)) }
| "fs4"                 { (FREG (20)) }
| "fs5"                 { (FREG (21)) }
| "fs6"                 { (FREG (22)) }
| "fs7"                 { (FREG (23)) }
| "fs8"                 { (FREG (24)) }
| "fs9"                 { (FREG (25)) }
| "fs10"                { (FREG (26)) }
| "fs11"                { (FREG (27)) }
| "ft8"                 { (FREG (28)) }
| "ft9"                 { (FREG (29)) }
| "ft10"                { (FREG (30)) }
| "ft11"                { (FREG (31)) }
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
| "beq_i"               { BEQI }
| "bne"                 { BNE }
| "bne_i"               { BNEI }
| "blt"                 { BLT }
| "blt_i"               { BLTI }
| "bge"                 { BGE }
| "bge_i"               { BGEI }
| "bltu"                { BLTU }
| "bgeu"                { BGEU }
| "lui"                 { LUI }
| "auipc"               { AUIPC }
| "jal"                 { JAL }
| "jal_i"               { JALI }
| "jalr"                { JALR }
| "lw"                  { LW }
| "sw"                  { SW }
| "mul"                 { MUL }
| "div"                 { DIV }
| "rem"                 { REM }
| "flw"                 { FLW }
| "fsw"                 { FSW }
| "fadd.s"              { FADDS }
| "fsub.s"              { FSUBS }
| "fmul.s"              { FMULS }
| "fdiv.s"              { FDIVS }
| "fsqrt.s"             { FSQRTS }
| "fsgnj.s"             { FSGNJS }
| "fsgnjn.s"            { FSGNJNS }
| "fcvt.w.s"            { FCVTWS }
| "fcvt.w.s.rdn"        { FCVTWSRDN }
| "fmv.x.w"             { FMVXW }
| "feq.s"               { FEQS }
| "flt.s"               { FLTS }
| "fle.s"               { FLES }
| "fcvt.s.w"            { FCVTSW }
| "fcvt.s.w.rdn"        { FCVTSWRDN }
| "fmv.w.x"             { FMVWX }
| "sendb"               { SEND_B }
| "recvb"               { RECV_B }
| "ble"                 { BLE }
| "bgt"                 { BGT }
| "bgtu"                { BGTU }
| "fmv.s"               { FMVS }
| ".4byte"              { FOUR_BYTE_DATA }
| "("                   { LPAR }
| ")"                   { RPAR }
| eof                   { raise End_of_file }
| (text_ele+ as l)      { (JMPLABEL l) }
| _                     { failwith ("Unknown Token: " ^ Lexing.lexeme lexbuf)}
