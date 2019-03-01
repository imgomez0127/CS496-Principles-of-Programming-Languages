open Ast
open Ds

let rec eval (en:env) (e:expr):exp_val =
  match e with
  | Int n           -> NumVal n
  | Var x           -> lookup en x
  | Let(x, e1, e2)  ->
    let v1 = eval en e1  in
    eval (extend_env en x v1) e2
  | IsZero(e1)      ->
    let v1 = eval en e1  in
    let n1 = numVal_to_num v1 in
    BoolVal (n1 = 0)
  | ITE(e1, e2, e3) ->
    let v1 = eval en e1  in
    let b1 = boolVal_to_bool v1 in
    if b1 then eval en e2 else eval en e3
  | Sub(e1, e2)     ->
    let v1 = eval en e1 in
    let v2 = eval en e2  in
    NumVal ((numVal_to_num v1) - (numVal_to_num v2))
  | Add(e1, e2)     -> NumVal((numVal_to_num (eval en e1)) + (numVal_to_num (eval en e2)))
  | Div(e1, e2)     -> NumVal((numVal_to_num (eval en e1)) - (numVal_to_num (eval en e2)))
  | Mul(e1, e2)     -> NumVal((numVal_to_num (eval en e1)) * (numVal_to_num (eval en e2)))
  | Abs(e1)         -> NumVal (abs (numVal_to_num (eval en e1)))
  | Cons(e1, e2)    -> ListVal((eval en e1)::(listVal_to_list (eval en e2)))
  | Hd(e1) -> let lst = (listVal_to_list (eval en e1)) in 
              (match lst with
              | [] -> failwith "The list is empty" 
              | x::xs -> x)
  | Tl(e1) -> let lst = (listVal_to_list (eval en e1)) in 
              (match lst with
              | [] -> failwith "The list is empty"
              | x::xs -> ListVal(xs))
  | Empty(e1) -> let expVal = eval en e1 in 
                 (match expVal with
                 | ListVal([]) -> BoolVal(true)
                 | TreeVal(Empty) -> BoolVal(true)
                 | ListVal(x::xs) -> BoolVal(false)
                 | TreeVal(Node(_,_,_)) -> BoolVal(false)
                 | _ -> failwith "Not a tree or list")
  | EmptyList       -> ListVal([])
  | EmptyTree       -> TreeVal(Empty)
  | Node(e1,lt,rt)  -> let lt_ = (treeVal_to_tree(eval en lt)) in 
                       let rt_ = (treeVal_to_tree(eval en rt)) in 
                       TreeVal(Node((eval en e1),lt_,rt_))
  | CaseT(target,emptycase,id_e,id_lt,id_rt,nodecase) -> failwith("Implement me!")


(***********************************************************************)
(* Everything above this is essentially the same as we saw in lecture. *)
(***********************************************************************)

(* Parse a string into an ast *)
let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast


(* Interpret an expression *)
let interp (e:string):exp_val =
  e |> parse |> eval (empty_env ())
