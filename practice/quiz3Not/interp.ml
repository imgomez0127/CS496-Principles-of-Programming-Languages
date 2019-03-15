open Ast
open Ds

let tupleVal_to_lst = fun lst ->
    match lst with
    | TupleVal(lst) -> lst
    | _ -> failwith "not a tupleval"
let rec zip = fun lstA lstB ->
    match lstA,lstB with
    | x::xs,y::ys -> (x,y)::(zip xs ys)
    | x::xs,[] -> []
    | [],y::ys -> []
    | [], [] -> []
let rec foldEnv = fun env zipLst ->
    match zipLst with
    | x::xs -> let (r1,r2) = x in extend_env (foldEnv env xs) r1 r2
    | [] -> env
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
  | ITE(e1,e2,e3) ->
    let v=eval_expr en e1
    in if (boolVal_to_bool v)
    then eval_expr en e2
    else eval_expr en e3
  | IsZero(e) ->
    let v1 = eval_expr en e  in
    BoolVal (numVal_to_num v1=0)
  | Let(x, e1, e2) ->
    let v1 = eval_expr en e1  in
    eval_expr (extend_env en x v1) e2
  | Tuple(lst) -> TupleVal(List.map (fun x -> (eval_expr en) x) lst)
  | UnTuple(ids,e1,e2) -> eval_expr (foldEnv en (zip ids (tupleVal_to_lst (eval_expr en e1)))) e2
  | _ -> failwith("Not implemented")
                          
let eval_prog (AProg e) = eval_expr init_env e



(***********************************************************************)
(* Everything above this is essentially the same as we saw in lecture. *)
(***********************************************************************)

(* Parse a string into an ast *)


let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast


(* Interpret an expression *)
let interp (e:string) : exp_val =
  e |> parse |> eval_prog 

let ex1 = "
let x = 7  
in let y = 2 
   in let y = let x = x-1 
              in x-y 
      in (x-8)- y"

