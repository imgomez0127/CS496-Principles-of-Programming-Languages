open Ast
open Ds


let init_env = EmptyEnv
    
let rec eval_expr (en:env) (e:expr) :exp_val =
  match e with
  | Int n          -> NumVal n
  | Var id          ->
    (match apply_env en id with
    | None -> failwith @@ "Variable "^id^" undefined"
    | Some ev -> ev)
  | Add(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) + (numVal_to_num v2))
  | Sub(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) - (numVal_to_num v2))
  | IsZero(e) ->
    let v1 = eval_expr en e  in
    BoolVal (numVal_to_num v1=0)
  |  ITE(e1,e2,e3) -> let boolean = (boolVal_to_bool (eval_expr en e1)) in if boolean then eval_expr en e2 else eval_expr en e3
  | Let(x, e1, e2) -> eval_expr (extend_env en x (eval_expr en e1)) e2
  | Proc(x,e)      -> ProcVal (x,e,en)
  | App(e1,e2)     -> let f = eval_expr en e1
    in (match f with
    |  ProcVal(x,e,env) -> eval_expr (extend_env env x (eval_expr env e2)) e
    | _ -> failwith("Not a procVal"))
  | _ -> failwith("Not implemented")
and
  eval_prog (AProg e) = eval_expr init_env e



(***********************************************************************)
(* Everything above this is essentially the same as we saw in lecture. *)
(***********************************************************************)

(* Parse a string into an ast *)


let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast

let lexer s =
  let lexbuf = Lexing.from_string s
  in Lexer.read lexbuf 


(* Interpret an expression *)
let interp (e:string) : exp_val =
  e |> parse |> eval_prog 

let ex1 = "
let x = 7  
in let y = 2 
   in let y = let x = x-1 
              in x-y 
      in (x-8)- y"

