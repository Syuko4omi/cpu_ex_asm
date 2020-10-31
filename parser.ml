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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Syntax
# 58 "parser.ml"
let yytransl_const = [|
  257 (* NEWLINE *);
  258 (* ADD *);
  259 (* SUB *);
  260 (* SLL *);
  261 (* SLT *);
  262 (* XOR *);
  263 (* SRL *);
  264 (* SRA *);
  265 (* OR *);
  266 (* AND *);
  267 (* ADDI *);
  268 (* SLTI *);
  269 (* XORI *);
  270 (* ORI *);
  271 (* ANDI *);
  272 (* SLLI *);
  273 (* SRLI *);
  274 (* SRAI *);
  275 (* BEQ *);
  276 (* BNE *);
  277 (* BLT *);
  278 (* BGE *);
  279 (* LUI *);
  280 (* AUIPC *);
  281 (* JAL *);
  282 (* JALR *);
  283 (* LW *);
  284 (* SW *);
  285 (* MUL *);
  286 (* DIV *);
  287 (* REM *);
  288 (* FLW *);
  289 (* FSW *);
  290 (* FADDS *);
  291 (* FSUBS *);
  292 (* FMULS *);
  293 (* FDIVS *);
  294 (* FSQRTS *);
  295 (* FMVXW *);
  296 (* FEQS *);
  297 (* FLTS *);
  298 (* FLES *);
  299 (* FMVWX *);
  300 (* LPAR *);
  301 (* RPAR *);
    0|]

let yytransl_block = [|
  302 (* IMM *);
  303 (* REG *);
  304 (* FREG *);
  305 (* JMPLABEL *);
  306 (* LABEL *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\001\000\002\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\003\000\003\000\
\003\000\004\000\006\000\006\000\004\000\004\000\004\000\006\000\
\006\000\004\000\004\000\004\000\004\000\003\000\003\000\004\000\
\004\000\004\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\001\000\044\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\023\000\024\000\025\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\038\000\039\000\000\000\000\000\000\000\
\043\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\
\010\000\011\000\012\000\013\000\014\000\015\000\016\000\017\000\
\018\000\019\000\020\000\021\000\022\000\026\000\000\000\000\000\
\029\000\030\000\031\000\000\000\000\000\034\000\035\000\036\000\
\037\000\040\000\041\000\042\000\000\000\000\000\000\000\000\000\
\027\000\028\000\032\000\033\000"

let yydgoto = "\002\000\
\045\000\046\000"

let yysindex = "\007\000\
\254\254\000\000\251\254\252\254\253\254\255\254\000\255\002\255\
\003\255\004\255\005\255\006\255\007\255\008\255\009\255\010\255\
\011\255\012\255\013\255\014\255\015\255\016\255\017\255\018\255\
\019\255\020\255\021\255\022\255\023\255\024\255\025\255\026\255\
\027\255\028\255\029\255\030\255\031\255\032\255\034\255\035\255\
\036\255\037\255\038\255\000\000\000\000\044\255\040\255\041\255\
\042\255\043\255\045\255\046\255\047\255\048\255\049\255\050\255\
\051\255\052\255\053\255\054\255\055\255\056\255\057\255\058\255\
\059\255\060\255\039\255\062\255\061\255\064\255\063\255\066\255\
\067\255\068\255\069\255\071\255\072\255\065\255\073\255\074\255\
\075\255\076\255\077\255\078\255\079\255\080\255\082\255\000\000\
\083\255\084\255\085\255\086\255\087\255\088\255\089\255\090\255\
\092\255\093\255\094\255\095\255\096\255\097\255\098\255\099\255\
\070\255\100\255\101\255\102\255\000\000\000\000\000\000\106\255\
\103\255\104\255\107\255\108\255\109\255\113\255\114\255\105\255\
\111\255\112\255\115\255\000\000\000\000\116\255\117\255\118\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\120\255\121\255\
\000\000\000\000\000\000\122\255\123\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\124\255\127\255\128\255\129\255\
\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000"

let yytablesize = 174
let yytable = "\003\000\
\004\000\005\000\006\000\007\000\008\000\009\000\010\000\001\000\
\011\000\012\000\013\000\014\000\015\000\016\000\017\000\018\000\
\019\000\020\000\021\000\022\000\023\000\024\000\025\000\026\000\
\027\000\028\000\029\000\030\000\031\000\032\000\033\000\034\000\
\035\000\036\000\037\000\038\000\039\000\040\000\041\000\042\000\
\043\000\047\000\048\000\049\000\088\000\050\000\051\000\044\000\
\052\000\053\000\054\000\055\000\056\000\057\000\058\000\059\000\
\060\000\061\000\062\000\063\000\064\000\065\000\066\000\067\000\
\068\000\069\000\070\000\071\000\072\000\073\000\074\000\075\000\
\000\000\076\000\077\000\078\000\079\000\080\000\081\000\082\000\
\083\000\084\000\085\000\086\000\109\000\087\000\089\000\090\000\
\091\000\092\000\000\000\093\000\094\000\095\000\096\000\097\000\
\098\000\099\000\100\000\101\000\102\000\103\000\104\000\105\000\
\106\000\107\000\108\000\110\000\113\000\111\000\112\000\114\000\
\120\000\115\000\116\000\117\000\118\000\119\000\146\000\000\000\
\121\000\122\000\123\000\124\000\125\000\126\000\127\000\128\000\
\129\000\130\000\131\000\132\000\133\000\134\000\135\000\136\000\
\137\000\138\000\139\000\140\000\141\000\142\000\143\000\144\000\
\145\000\000\000\151\000\152\000\147\000\148\000\149\000\150\000\
\158\000\153\000\154\000\155\000\156\000\157\000\159\000\160\000\
\000\000\000\000\161\000\162\000\163\000\164\000\165\000\166\000\
\169\000\167\000\168\000\170\000\171\000\172\000"

let yycheck = "\002\001\
\003\001\004\001\005\001\006\001\007\001\008\001\009\001\001\000\
\011\001\012\001\013\001\014\001\015\001\016\001\017\001\018\001\
\019\001\020\001\021\001\022\001\023\001\024\001\025\001\026\001\
\027\001\028\001\029\001\030\001\031\001\032\001\033\001\034\001\
\035\001\036\001\037\001\038\001\039\001\040\001\041\001\042\001\
\043\001\047\001\047\001\047\001\001\001\047\001\047\001\050\001\
\047\001\047\001\047\001\047\001\047\001\047\001\047\001\047\001\
\047\001\047\001\047\001\047\001\047\001\047\001\047\001\047\001\
\047\001\047\001\047\001\047\001\047\001\047\001\047\001\047\001\
\255\255\048\001\048\001\048\001\048\001\048\001\048\001\048\001\
\047\001\047\001\047\001\047\001\046\001\048\001\047\001\047\001\
\047\001\047\001\255\255\047\001\047\001\047\001\047\001\047\001\
\047\001\047\001\047\001\047\001\047\001\047\001\047\001\047\001\
\047\001\047\001\047\001\046\001\046\001\049\001\047\001\046\001\
\048\001\047\001\047\001\047\001\046\001\046\001\049\001\255\255\
\048\001\048\001\048\001\048\001\048\001\048\001\048\001\048\001\
\047\001\047\001\047\001\047\001\047\001\047\001\047\001\047\001\
\047\001\046\001\046\001\046\001\046\001\046\001\046\001\046\001\
\046\001\255\255\044\001\044\001\049\001\049\001\049\001\046\001\
\048\001\047\001\047\001\047\001\044\001\044\001\048\001\048\001\
\255\255\255\255\048\001\048\001\048\001\048\001\047\001\047\001\
\045\001\048\001\048\001\045\001\045\001\045\001"

let yynames_const = "\
  NEWLINE\000\
  ADD\000\
  SUB\000\
  SLL\000\
  SLT\000\
  XOR\000\
  SRL\000\
  SRA\000\
  OR\000\
  AND\000\
  ADDI\000\
  SLTI\000\
  XORI\000\
  ORI\000\
  ANDI\000\
  SLLI\000\
  SRLI\000\
  SRAI\000\
  BEQ\000\
  BNE\000\
  BLT\000\
  BGE\000\
  LUI\000\
  AUIPC\000\
  JAL\000\
  JALR\000\
  LW\000\
  SW\000\
  MUL\000\
  DIV\000\
  REM\000\
  FLW\000\
  FSW\000\
  FADDS\000\
  FSUBS\000\
  FMULS\000\
  FDIVS\000\
  FSQRTS\000\
  FMVXW\000\
  FEQS\000\
  FLTS\000\
  FLES\000\
  FMVWX\000\
  LPAR\000\
  RPAR\000\
  "

let yynames_block = "\
  IMM\000\
  REG\000\
  FREG\000\
  JMPLABEL\000\
  LABEL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Syntax.jmplabel_x) in
    Obj.repr(
# 29 "parser.mly"
          ( Top_label _1 )
# 321 "parser.ml"
               : Syntax.command))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 30 "parser.mly"
                 ( Top _1 )
# 328 "parser.ml"
               : Syntax.command))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 34 "parser.mly"
                         (Add (Regname(_2), Regname(_3), Regname(_4)))
# 337 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 35 "parser.mly"
                         (Sub (Regname(_2), Regname(_3), Regname(_4)))
# 346 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 36 "parser.mly"
                         (Sll (Regname(_2), Regname(_3), Regname(_4)))
# 355 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 37 "parser.mly"
                         (Slt (Regname(_2), Regname(_3), Regname(_4)))
# 364 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 38 "parser.mly"
                         (Xor (Regname(_2), Regname(_3), Regname(_4)))
# 373 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 39 "parser.mly"
                         (Srl (Regname(_2), Regname(_3), Regname(_4)))
# 382 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 40 "parser.mly"
                         (Sra (Regname(_2), Regname(_3), Regname(_4)))
# 391 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 41 "parser.mly"
                         (Or (Regname(_2), Regname(_3), Regname(_4)))
# 400 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 42 "parser.mly"
                         (Addi (Regname(_2), Regname(_3), Imm(_4)))
# 409 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 43 "parser.mly"
                         (Slti ( Regname(_2),  Regname(_3), Imm(_4)))
# 418 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 44 "parser.mly"
                         (Xori ( Regname(_2),  Regname(_3),  Imm(_4)))
# 427 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 45 "parser.mly"
                         (Ori ( Regname(_2),  Regname(_3),  Imm(_4)))
# 436 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 46 "parser.mly"
                         (Andi ( Regname(_2),  Regname(_3),  Imm(_4)))
# 445 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 47 "parser.mly"
                         (Slli ( Regname(_2),  Regname(_3),  Imm(_4)))
# 454 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 48 "parser.mly"
                         (Srli ( Regname(_2),  Regname(_3),  Imm(_4)))
# 463 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 49 "parser.mly"
                         (Srai ( Regname(_2),  Regname(_3),  Imm(_4)))
# 472 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 50 "parser.mly"
                         (Beq ( Regname(_2),  Regname(_3), Jmplabel(_4)))
# 481 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 51 "parser.mly"
                         (Bne ( Regname(_2),  Regname(_3), Jmplabel(_4)))
# 490 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 52 "parser.mly"
                         (Blt ( Regname(_2),  Regname(_3), Jmplabel(_4)))
# 499 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 53 "parser.mly"
                         (Bge ( Regname(_2),  Regname(_3), Jmplabel(_4)))
# 508 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 54 "parser.mly"
                         (Lui ( Regname(_2), Imm(_3)))
# 516 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 55 "parser.mly"
                         (Auipc ( Regname(_2),  Imm(_3)))
# 524 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
                         (Jal ( Regname(_2),  Jmplabel(_3)))
# 532 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 57 "parser.mly"
                         (Jalr ( Regname(_2),  Regname(_3),  Imm(_4)))
# 541 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 58 "parser.mly"
                                  (Lw ( Regname(_2),  Imm(_3),  Regname(_5)))
# 550 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 59 "parser.mly"
                                  (Sw ( Regname(_2),  Imm(_3),  Regname(_5)))
# 559 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 60 "parser.mly"
                         (Mul (Regname(_2), Regname(_3), Regname(_4)))
# 568 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 61 "parser.mly"
                         (Div (Regname(_2), Regname(_3), Regname(_4)))
# 577 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 62 "parser.mly"
                         (Rem (Regname(_2), Regname(_3), Regname(_4)))
# 586 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 63 "parser.mly"
                                 (Flw ( Fregname(_2),  Imm(_3),  Fregname(_5)))
# 595 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 64 "parser.mly"
                                 (Fsw ( Fregname(_2),  Imm(_3),  Fregname(_5)))
# 604 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 65 "parser.mly"
                         (Fadds (Fregname(_2), Fregname(_3), Fregname(_4)))
# 613 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 66 "parser.mly"
                         (Fsubs (Fregname(_2), Fregname(_3), Fregname(_4)))
# 622 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 67 "parser.mly"
                         (Fmuls (Fregname(_2), Fregname(_3), Fregname(_4)))
# 631 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 68 "parser.mly"
                         (Fdivs (Fregname(_2), Fregname(_3), Fregname(_4)))
# 640 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 69 "parser.mly"
                         (Fsqrts (Fregname(_2), Fregname(_3)))
# 648 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 70 "parser.mly"
                        (Fmvxw (Regname(_2), Fregname(_3)))
# 656 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 71 "parser.mly"
                        (Feqs (Regname(_2), Fregname(_3), Fregname(_4)))
# 665 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 72 "parser.mly"
                        (Flts (Regname(_2), Fregname(_3), Fregname(_4)))
# 674 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 73 "parser.mly"
                        (Fles (Regname(_2), Fregname(_3), Fregname(_4)))
# 683 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 74 "parser.mly"
                        (Fmvwx (Fregname(_2), Regname(_3)))
# 691 "parser.ml"
               : 'expr))
(* Entry toplevel *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let toplevel (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Syntax.command)
