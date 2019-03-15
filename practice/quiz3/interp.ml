open Ast
open Ds
let recVal_to_lst = fun lst->
    match lst with 
    | RecVal(lst) -> lst
    | _ -> failwith "not a list"
let rec findItem = fun lst id->
    match lst with
    | x::xs -> let (r1,r2) = x in (if r1 = id then r2 else findItem xs id)
    | [] -> failwith "not found"
let from_some = function
  | None -> failwith "from_some: None"
  | Some v -> v
    
let g_store = Store.empty_store 20 (NumVal 0)

let init_env = EmptyEnv
    
let rec apply_proc f a =
  match f with
  | ProcVal (x,b,env) ->
     let l = Store.new_ref g_store a 
     in eval_expr (extend_env env x (RefVal l)) b
  | _ -> failwith "apply_proc: Not a procVal"
and
  eval_expr (en:env) (e:expr) :exp_val =
  match e with
  | Int n          -> NumVal n
  | Var id          ->
    (match apply_env en id with
    | None -> failwith @@ "Variable "^id^" undefined"
    | Some ev -> Store.deref g_store @@ refVal_to_int ev)
  | ITE(e1, e2, e3)    ->
    let v1 = eval_expr en e1 in
    if boolVal_to_bool v1
    then eval_expr en e2
    else eval_expr en e3
  | Add(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) + (numVal_to_num v2))
  | Mul(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) * (numVal_to_num v2))
  | Sub(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) - (numVal_to_num v2))
  | IsZero(e) ->
    let v1 = eval_expr en e  in
    BoolVal (numVal_to_num v1=0)
  | Let(x, e1, e2) ->
    let v1 = eval_expr en e1
    in let l = Store.new_ref g_store v1 
    in eval_expr (extend_env en x (RefVal l)) e2
  | Proc(x,t,e)      -> ProcVal (x,e,en)
  | App(e1,e2)     ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2 in
    apply_proc v1 v2
  | Record(fs) -> RecVal(List.map (fun x -> let (r1,r2) = x in (r1,(eval_expr en r2))) fs)
  | Proj(e,field_id) -> findItem (recVal_to_lst (eval_expr en e)) field_id
  | Debug ->
    print_string "Environment:\n";
    print_string @@ string_of_env en;
    print_string "\nStore:\n";
    List.iteri (fun i s -> print_string (string_of_int i^"->"
                                                 ^s^"\n")) @@ List.map
      string_of_expval @@ Store.store_to_list g_store;
    UnitVal
  | _ -> failwith("Not implemented: "^string_of_expr e)
and
  eval_prog (Ast.AProg e) = eval_expr init_env e



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

let ex2 = "
   let g = 
      let counter = 0 
      in proc(d:int) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in (g 11)-(g 22)"

let ex3 = "
  let g = 
     let counter = newref(0) 
     in proc (d:int) {
         begin
          setref(counter, deref(counter)+1);
          deref(counter)
         end
       }
  in (g 11) - (g 22)"

let ex4 = "
   let g = 
      let counter = 0 
      in proc(d:int) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in (proc (x:int) { x + x }
(g 0))"
(* 3 in call-by-name *)
(* 2 in call-by-need *)

let ex5 = "
let a = 3
in let p = proc(x) { set x = 4 }
in begin 
         (p a); 
         a 
       end"

let ex6 = "let p = proc(x) { 5-x } in (p 3)"
(* 2 *)
  
let ex7 = "
let a = 3
in let f = proc(x) { proc(y) { set x = x-y }}
in begin
((f a) 2);
a
end"
(* 1 *)

let ex8 = "
let swap = proc (x) { proc (y) {
                      let temp = x
                      in begin 
                          set x = y;
                          set y = temp
                         end
                      } 
            }
         in let a = 33
         in let b = 44
         in begin
             ((swap a) b);
             a-b
            end"
(* 11 *)
  
let ex9 = "
letrec fact (x) = if zero?(x) then 1 else x*(fact (x-1)) 
in (fact 7)"
(* 5040 *)
  
let ex10 = "
letrec infiniteLoop (x) = (infiniteLoop (x+1)) 
in let f = proc (z) { 11 }
in (f (infiniteLoop 0))"

