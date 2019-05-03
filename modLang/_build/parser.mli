
(* The type of tokens. *)

type token = 
  | UNITTYPE
  | TIMES
  | THEN
  | TAKE
  | SETREF
  | SET
  | SEMICOLON
  | RPAREN
  | REFTYPE
  | RBRACKET
  | RBRACE
  | PROC
  | PLUS
  | OPEN
  | NEWREF
  | MODULE
  | MINUS
  | LPAREN
  | LETREC
  | LET
  | LBRACKET
  | LBRACE
  | ISZERO
  | INTTYPE
  | INTERFACE
  | INT of (int)
  | IN
  | IF
  | ID of (string)
  | FROM
  | EQUALS
  | EOF
  | END
  | ELSE
  | DIVIDED
  | DEREF
  | DEBUG
  | COMMA
  | COLON
  | BOOLTYPE
  | BODY
  | BEGIN
  | ARROW

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)
