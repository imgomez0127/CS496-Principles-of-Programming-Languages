(*EX 3.*)
type number = int
type expr = 
    | Number of number
    | Add of expr*expr
    | Sub of expr*expr
    | Paranthesis of expr
let (thing:expr) = Add(Number(1),Paranthesis(Sub(Number(4),Number(7))))
(*EX 4.*)
type coordinate = Pair of int*int
let getX : coordinate->int = fun coord -> let Pair(r1,r2) = coord in r1
let getY: coordinate->int = fun coord -> let Pair(r1,r2) = coord in r2
let add : coordinate->coordinate->coordinate = fun pair1 pair2 -> let Pair(x1,y1) = pair1 in let Pair(x2,y2) = pair2 in Pair(x1+x2,y1+y2)
let distance : coordinate -> coordinate -> float = fun pair1 pair2 -> let Pair(x1,y1) = pair1 in let Pair(x2,y2) = pair2 in sqrt((((float_of_int x2) -. (float_of_int x1)) ** 2.) +. (((float_of_int y2) -. (float_of_int y1)) ** 2.))
type shape = Rectangle of coordinate*coordinate*coordinate*coordinate
            |Circle of coordinate*coordinate

(* C1 --------- C2 *)
(* |            |  *)
(* |            |  *)
(* C3 --------- C4 *)
(* c1-----c2 is the diameter for the cirlce *)
let pi = 3.14159265358979312
let area : shape -> float = function 
    | Rectangle(c1,c2,c3,c4) -> let length = distance c1 c3 
                                in let width = distance c3 c4 
                                in length *. width
    | Circle(c1,c2) -> let r = (distance c1 c2) /. 2. in pi *. (r ** 2.)
(* Ex 5*)
type sbtree = Leaf of int | Node of sbtree * sbtree
let is_node : sbtree -> bool = fun  t ->
    match t with
    | Node(_,_) -> true
    | Leaf(_) -> false
let is_leaf : sbtree -> bool = fun t -> (not (is_node t))
let rec string_of_sbtree : sbtree -> string = fun t ->
    match t with 
    | Node(lt,rt) -> "(" ^ (string_of_sbtree lt) ^ " " ^ (string_of_sbtree rt) ^ ")"
    | Leaf(i) -> string_of_int i
(* Ex 6 *)
type 'a btree = Leaf of 'a | Node of 'a * 'a btree * 'a btree

let rec preorder :  'a btree -> 'a list = fun t ->
    match t with 
    | Node(x,lt,rt) -> x :: ((preorder lt) @ (preorder rt))
    | Leaf(x) -> [x]

let rec inorder : 'a btree -> 'a list = fun t ->
    match t with
    | Node(x,lt,rt) -> (inorder lt) @ [x] @ (inorder rt)
    | Leaf(x) -> [x]

let rec postorder : 'a btree -> 'a list = fun t ->
    match t with
    | Node(x,lt,rt) -> (postorder lt) @ (postorder rt) @ [x]
    | Leaf(x) -> [x]
