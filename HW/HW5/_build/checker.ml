open Ast
open Seq
let from_some = function
  | None -> failwith "from_some: None"
  | Some v -> v

(*  ;;;;;;;;;;;;;;;; type environments ;;;;;;;;;;;;;;;; *)
    
type tenv =
  | EmptyTEnv
  | ExtendTEnv of string*texpr*tenv
                    
let empty_tenv () = EmptyTEnv

let extend_tenv id t tenv = ExtendTEnv(id,t,tenv)

let rec apply_tenv (tenv:tenv) (id:string):texpr option =
  match tenv with
  | EmptyTEnv -> None
  | ExtendTEnv (key,value,tenv1) ->
    if id=key
    then Some value
    else apply_tenv tenv1 id

let has_constructor = fun constructorLst constructorName -> if List.find_opt (fun x -> let Ast.CDec(name,args) = x in name  = constructorName) constructorLst != None then true else false

let compute_sigma_inverse = fun userDefinedTenv constructor -> 
    Hashtbl.fold (fun userType constructorLst returnType -> 
        if has_constructor constructorLst constructor 
            then userType 
            else returnType) userDefinedTenv ""

let rec get_constructor_arguments = fun constructor_list constructor ->
    match constructor_list with
    | [] -> failwith "Constructor does not exist"
    | CDec(tag,args)::rest_of_constructor_list -> if tag = constructor 
        then args 
        else get_constructor_arguments rest_of_constructor_list constructor


let rec allEvalToSame = fun lst -> 
    match lst with
    | [] -> true
    | x::xs -> let overallType = x in (List.fold_left (fun thingy curType -> (curType = overallType)&&thingy) true xs)

let init_tenv () =
     extend_tenv "x"  IntType 
     @@ extend_tenv "v" IntType
     @@ extend_tenv "i"  IntType
     @@ empty_tenv ()

let rec  string_of_tenv  = function
  | EmptyTEnv -> ""
  | ExtendTEnv(id,v,env) -> "("^id^","^string_of_texpr v^")"^string_of_tenv env


let rec type_of_prog = function
  | AProg e -> type_of_expr (Hashtbl.create 100) (init_tenv ()) e
and
  type_of_expr tdecls en = function 
  | Int n          -> IntType
  | Unit           -> UnitType
  | Var id          ->
    (match apply_tenv en id with
    | None -> failwith @@ "Variable "^id^" undefined"
    | Some texp -> texp)
  | ITE(e1, e2, e3)    ->
    let t1 = type_of_expr tdecls en e1 
    in let t2 = type_of_expr tdecls en e2
    in let t3 = type_of_expr tdecls en e3 
    in if t1=BoolType && t2=t3 
    then t2
    else failwith "ITE: Type error"
  | Add(e1, e2) | Mul(e1,e2) | Sub(e1,e2) | Div(e1,e2)    ->
    let t1 = type_of_expr tdecls en e1 in
    let t2 = type_of_expr tdecls en e2  in
    if t1=IntType && t2=IntType
    then IntType
    else failwith "Add: arguments must be ints"
  | IsZero(e) ->
    let t1 = type_of_expr tdecls en e  in
    if t1=IntType
    then BoolType
    else failwith "Zero?: argument must be int"
  | Let(x, e1, e2) ->
    let t1 = type_of_expr tdecls en e1
    in type_of_expr tdecls (extend_tenv x t1 en) e2
  | Proc(x,ty,e)      ->
    let tc= type_of_expr tdecls (extend_tenv x ty en) e
    in FuncType(ty,tc)
  | App(e1,e2)     ->
    let t1 = type_of_expr tdecls en e1 
    in let t2 = type_of_expr tdecls en e2 
    in (match t1 with
    | FuncType(td,tcd) when td=t2 -> tcd 
    | FuncType(td,tcd) -> failwith "App: argument does not have correct type" 
    | _ -> failwith "App: LHS must be function type")
  | Letrec(tRes,id,param,tParam,body,e) ->
    let t=type_of_expr tdecls (extend_tenv param tParam
                          (extend_tenv id (FuncType(tParam,tRes)) en))
        body
    in if t=tRes 
    then type_of_expr tdecls (extend_tenv id (FuncType(tParam,tRes)) en) e
    else failwith
        "LetRec: Types of recursive function does not match declaration"
  | Set(id,e) ->
      failwith "EXPLICIT-REFS: Set not a valid operation"
  | BeginEnd(es) ->
    List.fold_left (fun v e -> type_of_expr tdecls en e) UnitType es
  | NewRef(e) ->
    let t=type_of_expr tdecls en e
    in RefType(t)
  | DeRef(e) ->
    let t1 = type_of_expr tdecls en e
    in (match t1 with
    | RefType(t) -> t
    | _ -> failwith "DeRef: Must deref a ref type")             
  | SetRef(e1,e2) ->
    let t1=type_of_expr tdecls en e1
    in let t2=type_of_expr tdecls en e2
    in (match t1 with
    | RefType tval when tval=t2 -> UnitType
    | _ -> failwith "SetRef: type of LHS and RHS do not match")
  | TypeDecl(id,cs) -> begin Hashtbl.add tdecls id cs;UnitType; end
  | Variant(tag,args) -> let userType = compute_sigma_inverse tdecls tag in 
    let constructorList = (Hashtbl.find tdecls userType) in
    let constructorArgTypes = get_constructor_arguments constructorList tag in 
    if (List.length constructorArgTypes) = (List.length args) then 
        if checkArgTypes constructorArgTypes args tdecls en 
            then UserType(userType) 
            else failwith "Not all args of the constructor are the same type" 
    else failwith "Both constructors are not of the same length"
  | Case(cond,branches) -> 
    let UserType(condType) = type_of_expr tdecls en cond in 
    let constructorLst = from_some @@ (Hashtbl.find_opt tdecls condType) in 
    if (List.length constructorLst) = (List.length branches) then 
        let branchEvalLst = eval_branches constructorLst branches en tdecls in 
            if (allEvalToSame branchEvalLst) 
                then List.hd branchEvalLst 
                else failwith"All branches do not eval to the same thing"
    else failwith "You do not have an equal amount of constructors and branches" 
  | Debug ->
    print_string "Environment:\n";
    print_string @@ string_of_tenv en;
    UnitType
and checkArgTypes = fun constructor args tdecls tenv->
    match constructor,args with
    | [],[] -> true
    | _,[] -> failwith "The arguments have more items than the defined constructor"
    | [],_ -> failwith "The constructor has less items than the input constructor"
    | x::xs,y::ys -> x = (type_of_expr tdecls tenv y) && (checkArgTypes xs ys tdecls tenv)
and eval_branches = fun constructorLst branches tenv tdecls->
    match constructorLst,branches with
    | [],[] -> []
    | x::xs,[] -> failwith"?"
    | [],y::ys -> failwith"?"
    | x::xs,y::ys -> let Branch(branchName,idLst,body)=y in let CDec(constructorName,argTypes) = x in if branchName = constructorName then let condsEnv = List.fold_left2 (fun accumEnv id argType -> extend_tenv id argType accumEnv) tenv idLst argTypes in (type_of_expr tdecls condsEnv body)::eval_branches xs ys tenv tdecls else failwith"Branches do not come in the same order as the Constructor Declaration"

           
    


let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast


(* Interpret an expression *)
let chk (e:string) : texpr =
  e |> parse |> type_of_prog 


