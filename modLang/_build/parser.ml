
module MenhirBasics = struct
  
  exception Error
  
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
    | INT of (
# 22 "parser.mly"
       (int)
# 36 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 23 "parser.mly"
       (string)
# 43 "parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState127
  | MenhirState126
  | MenhirState124
  | MenhirState118
  | MenhirState117
  | MenhirState115
  | MenhirState114
  | MenhirState113
  | MenhirState112
  | MenhirState110
  | MenhirState109
  | MenhirState107
  | MenhirState105
  | MenhirState103
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState82
  | MenhirState81
  | MenhirState80
  | MenhirState78
  | MenhirState76
  | MenhirState75
  | MenhirState70
  | MenhirState68
  | MenhirState61
  | MenhirState59
  | MenhirState57
  | MenhirState54
  | MenhirState51
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState41
  | MenhirState38
  | MenhirState35
  | MenhirState31
  | MenhirState28
  | MenhirState26
  | MenhirState24
  | MenhirState18
  | MenhirState14
  | MenhirState9
  | MenhirState8
  | MenhirState6
  | MenhirState4
  | MenhirState0

# 8 "parser.mly"
  
open Ast

# 141 "parser.ml"

let rec _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (x : (Ast.expr list)) = _v in
        let _v : (Ast.expr list) = 
# 144 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( x )
# 153 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : (Ast.expr list)) = _v in
        let ((_menhir_stack, _menhir_s, (x : (Ast.expr))), _) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr list) = 
# 243 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 165 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run76 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | DEBUG ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | DEREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | FROM ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | ID _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | IF ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | INT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | ISZERO ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LET ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LETREC ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NEWREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | OPEN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | DEBUG ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | DEREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | FROM ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | ID _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | IF ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | INT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | ISZERO ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LET ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LETREC ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | NEWREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | OPEN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run84 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | DEBUG ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | DEREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | FROM ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | ID _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | IF ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | INT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | ISZERO ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LET ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LETREC ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | NEWREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | OPEN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | DEBUG ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | DEREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | FROM ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | ID _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | IF ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | INT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | ISZERO ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LET ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LETREC ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | NEWREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | OPEN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_goto_list_vdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdef list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.vdef))), _, (xs : (Ast.vdef list))) = _menhir_stack in
        let _v : (Ast.vdef list) = 
# 213 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 354 "parser.ml"
         in
        _menhir_goto_list_vdef_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (ds : (Ast.vdef list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.module_body) = 
# 137 "parser.mly"
                                            ( AModBody (ds) )
# 372 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (b : (Ast.module_body)) = _v in
            let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 380 "parser.ml"
            ))), (i : (Ast.interface))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.mdecl) = 
# 127 "parser.mly"
                  ( AMod (x,i,b) )
# 388 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | MODULE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | BEGIN | DEBUG | DEREF | FROM | ID _ | IF | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | OPEN | PROC | SET | SETREF ->
                _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.texpr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState78 | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState75 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (x : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr list) = 
# 241 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( [ x ] )
# 498 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_expr_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75)
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) = 
# 175 "parser.mly"
                                  ( Mul(e1,e2) )
# 513 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState81
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | OPEN | PLUS | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 173 "parser.mly"
                                 ( Add(e1,e2) )
# 532 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81)
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
        let _2 = () in
        let _v : (Ast.expr) = 
# 176 "parser.mly"
                                    ( Div(e1,e2) )
# 547 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState85
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | MINUS | NEWREF | OPEN | PLUS | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 174 "parser.mly"
                                  ( Sub(e1,e2) )
# 566 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState86 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 183 "parser.mly"
                                      ( DeRef(e) )
# 596 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86)
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState88 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState89
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89)
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState90 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91)
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | OPEN | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))), _), _, (e3 : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 185 "parser.mly"
                                                      ( ITE(e1,e2,e3) )
# 747 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92)
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState93 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 181 "parser.mly"
                                       ( IsZero(e) )
# 777 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93)
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState95 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95)
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | OPEN | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 864 "parser.ml"
            ))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 177 "parser.mly"
                                                    ( Let(x,e1,e2) )
# 872 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState98 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99)
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState98
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | OPEN | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((((_menhir_stack, _menhir_s), _, (tr : (Ast.texpr))), (x : (
# 23 "parser.mly"
       (string)
# 957 "parser.ml"
            ))), (y : (
# 23 "parser.mly"
       (string)
# 961 "parser.ml"
            ))), _, (targ : (Ast.texpr))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 178 "parser.mly"
                                                                                                            ( Letrec(tr,x,y,targ,e1,e2) )
# 972 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState101 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 190 "parser.mly"
                                      ( Sub(Int 0, e) )
# 1002 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState103 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 188 "parser.mly"
                               (e)
# 1061 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103)
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState105 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 180 "parser.mly"
                                           ( App(e1,e2) )
# 1096 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState107 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 182 "parser.mly"
                                       ( NewRef(e) )
# 1128 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | OPEN | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1155 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 192 "parser.mly"
                             ( Open(x,e) )
# 1162 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState110 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1188 "parser.ml"
            ))), _, (t : (Ast.texpr))), _, (e : (Ast.expr))) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 179 "parser.mly"
                                                                             ( Proc(x,t,e) )
# 1199 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | BEGIN | COMMA | DEBUG | DEREF | ELSE | END | EOF | FROM | ID _ | IF | IN | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | OPEN | PROC | RBRACE | RBRACKET | RPAREN | SEMICOLON | SET | SETREF | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 1226 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 186 "parser.mly"
                                    ( Set(x,e) )
# 1233 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState113 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState114
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113)
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState115 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 184 "parser.mly"
                                                          ( SetRef(e1,e2) )
# 1324 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | ID _ | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (x : (
# 23 "parser.mly"
       (string)
# 1351 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.vdef) = 
# 141 "parser.mly"
                               ( AValDef(x,e) )
# 1357 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | RBRACKET ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117)
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIVIDED ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState127 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (ms : (Ast.mdecl list))), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _v : (
# 90 "parser.mly"
       (Ast.prog)
# 1392 "parser.ml"
            ) = 
# 122 "parser.mly"
                                   ( AProg (ms,e) )
# 1396 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (
# 90 "parser.mly"
       (Ast.prog)
# 1403 "parser.ml"
            )) = _v in
            Obj.magic _1
        | MINUS ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | PLUS ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | TIMES ->
            _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (xs : (Ast.expr list)) = _v in
    let _v : (Ast.expr list) = let es = 
# 232 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( xs )
# 1427 "parser.ml"
     in
    
# 196 "parser.mly"
                                            ( es )
# 1432 "parser.ml"
     in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (es : (Ast.expr list))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ast.expr) = 
# 187 "parser.mly"
                             ( BeginEnd(es) )
# 1449 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.vdef list) = 
# 211 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 1464 "parser.ml"
     in
    _menhir_goto_list_vdef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 1471 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_texpr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.texpr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t1 : (Ast.texpr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.texpr) = 
# 203 "parser.mly"
                                 ( t1 )
# 1547 "parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _ | RBRACKET | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t1 : (Ast.texpr))), _, (t2 : (Ast.texpr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.texpr) = 
# 202 "parser.mly"
                                    ( FuncType(t1,t2) )
# 1570 "parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _ | RBRACKET | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t1 : (Ast.texpr))) = _menhir_stack in
            let _1 = () in
            let _v : (Ast.texpr) = 
# 204 "parser.mly"
                          ( RefType(t1) )
# 1593 "parser.ml"
             in
            _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _ | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (x : (
# 23 "parser.mly"
       (string)
# 1614 "parser.ml"
            ))), _, (t : (Ast.texpr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.vdecl) = 
# 133 "parser.mly"
                                ( AValDecl(x,t) )
# 1620 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
            | RBRACKET ->
                _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState18
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | DEBUG ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | DEREF ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | FROM ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | ID _v ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
                | IF ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | INT _v ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
                | ISZERO ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | LET ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | LETREC ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | LPAREN ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | NEWREF ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | OPEN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | PROC ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | SET ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | SETREF ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LPAREN ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | COLON ->
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        (match _tok with
                        | BOOLTYPE ->
                            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                        | INTTYPE ->
                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                        | LPAREN ->
                            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                        | REFTYPE ->
                            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                        | UNITTYPE ->
                            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let _menhir_stack = Obj.magic _menhir_stack in
                        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQUALS ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BEGIN ->
                    _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | DEBUG ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | DEREF ->
                    _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | FROM ->
                    _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | ID _v ->
                    _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
                | IF ->
                    _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | INT _v ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
                | ISZERO ->
                    _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | LET ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | LETREC ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | LPAREN ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | NEWREF ->
                    _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | OPEN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | PROC ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | SET ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | SETREF ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState31
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | BOOLTYPE ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | INTTYPE ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | LPAREN ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | REFTYPE ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | UNITTYPE ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DEBUG ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | DEREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | FROM ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ID _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IF ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | ISZERO ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LET ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LETREC ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MINUS ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState44 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
    | NEWREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | OPEN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQUALS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BEGIN ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | DEBUG ->
                _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | DEREF ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | FROM ->
                _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | ID _v ->
                _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | IF ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | INT _v ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | ISZERO ->
                _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LET ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LETREC ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LPAREN ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | NEWREF ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | OPEN ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | PROC ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SET ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SETREF ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run58 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
       (int)
# 2371 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (i : (
# 22 "parser.mly"
       (int)
# 2379 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 170 "parser.mly"
              ( Int i )
# 2384 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | DEBUG ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | DEREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | FROM ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | ID _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | IF ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | INT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | ISZERO ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LET ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LETREC ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | NEWREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | OPEN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61

and _menhir_run62 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 2434 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 23 "parser.mly"
       (string)
# 2442 "parser.ml"
    )) = _v in
    let _v : (Ast.expr) = 
# 171 "parser.mly"
             ( Var x )
# 2447 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run63 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TAKE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (y : (
# 23 "parser.mly"
       (string)
# 2475 "parser.ml"
                )) = _v in
                let ((_menhir_stack, _menhir_s), (x : (
# 23 "parser.mly"
       (string)
# 2480 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (Ast.expr) = 
# 191 "parser.mly"
                                 ( QualVar(x,y) )
# 2487 "parser.ml"
                 in
                _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 172 "parser.mly"
            ( Debug )
# 2571 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BEGIN ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | DEBUG ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | DEREF ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | FROM ->
        _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | ID _v ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | IF ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | INT _v ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | ISZERO ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LET ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LETREC ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | NEWREF ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | OPEN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | PROC ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | SET ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | SETREF ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | END ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState70 in
        let _v : (Ast.expr list) = 
# 142 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2619 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_expr__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_goto_list_vdecl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.vdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.vdecl))), _, (xs : (Ast.vdecl list))) = _menhir_stack in
        let _v : (Ast.vdecl list) = 
# 213 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 2638 "parser.ml"
         in
        _menhir_goto_list_vdecl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACKET ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _, (ds : (Ast.vdecl list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.interface) = 
# 130 "parser.mly"
                                             ( ASimpleInterface (ds) )
# 2656 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | BODY ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LBRACKET ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | ID _v ->
                        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
                    | RBRACKET ->
                        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState24
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.texpr) = 
# 201 "parser.mly"
               ( UnitType )
# 2710 "parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | INTTYPE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | REFTYPE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | UNITTYPE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.texpr) = 
# 199 "parser.mly"
              ( IntType )
# 2764 "parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.texpr) = 
# 200 "parser.mly"
               ( BoolType )
# 2776 "parser.ml"
     in
    _menhir_goto_texpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_mdecl_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.mdecl list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.mdecl))), _, (xs : (Ast.mdecl list))) = _menhir_stack in
        let _v : (Ast.mdecl list) = 
# 213 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( x :: xs )
# 2791 "parser.ml"
         in
        _menhir_goto_list_mdecl_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BEGIN ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | DEBUG ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | DEREF ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | FROM ->
            _menhir_run63 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | ID _v ->
            _menhir_run62 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | IF ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | INT _v ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | ISZERO ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LET ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LETREC ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | NEWREF ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | OPEN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | PROC ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | SET ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | SETREF ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126)
    | _ ->
        _menhir_fail ()

and _menhir_reduce27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.vdecl list) = 
# 211 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 2843 "parser.ml"
     in
    _menhir_goto_list_vdecl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
       (string)
# 2850 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOLTYPE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | INTTYPE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | LPAREN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | REFTYPE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | UNITTYPE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState118 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState115 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState113 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState112 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState110 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState109 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState103 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState101 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState100 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState99 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState97 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState96 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState95 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState93 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState89 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState88 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState86 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState85 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState82 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState75 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState70 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState68 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState61 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState59 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState57 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState51 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.mdecl list) = 
# 211 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
    ( [] )
# 3133 "parser.ml"
     in
    _menhir_goto_list_mdecl_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | INTERFACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACKET ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
                | RBRACKET ->
                    _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState4
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 90 "parser.mly"
       (Ast.prog)
# 3201 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MODULE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | BEGIN | DEBUG | DEREF | FROM | ID _ | IF | INT _ | ISZERO | LET | LETREC | LPAREN | NEWREF | OPEN | PROC | SET | SETREF ->
        _menhir_reduce25 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "/home/imgomez/.opam/default/lib/menhir/standard.mly"
  

# 3227 "parser.ml"
