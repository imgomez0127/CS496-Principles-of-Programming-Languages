(* "I pledge my honor that I have abided by the Stevens honor system" - igomez1 Ian Gomez*)
type dTree = Leaf of int | Node of char * dTree * dTree
let tLeft = Node('w',Node('x',Leaf(2),Leaf(5)),Leaf(8))
let tRight = Node('w',Node('x',Leaf(2),Leaf(5)),Node('y',Leaf(7),Leaf(5)))
let rec dTree_height : dTree -> int = fun t ->
	match t with
	| Leaf(_) -> 0
	| Node(_,lt,rt) -> 1 + max (dTree_height lt) (dTree_height rt)
let rec dTree_size : dTree -> int = fun t ->
	match t with
	| Leaf(_) -> 1
	| Node(_,lt,rt) -> 1 + dTree_size lt + dTree_size rt
let rec dTree_paths : dTree -> int list list = fun t ->
	match t with
	| Leaf(_) -> [[]]
	| Node(_,lt,rt) -> (List.map (fun (lst:int list) -> [0] @ lst) (dTree_paths lt)) @ (List.map (fun (lst:int list) -> [1] @ lst) (dTree_paths rt))
let rec dTree_is_perfect : dTree -> bool = fun t -> 
	match t with
	| Leaf(_) -> true
	| Node(i,lt,rt) -> (dTree_height lt) == (dTree_height rt) && dTree_is_perfect lt && dTree_is_perfect rt
let rec dTree_map : (char->char)->(int->int)->dTree->dTree = fun f g t ->
	match t with
	| Leaf(i) -> Leaf((g i))
	| Node(c,lt,rt) -> Node((f c) , dTree_map f g lt , dTree_map f g rt)
let rec list_to_tree : char list -> dTree = fun lst ->
	match lst with
	| [] -> Leaf(0)
	| x::xs -> Node(x, list_to_tree xs, list_to_tree xs)

let rec replace_leaf_at : dTree->(int list * int) list-> dTree = fun t graph ->
	let rec replace_helper : dTree -> int list -> int -> dTree = fun t graph newVal ->
		match t,graph with
		| Leaf(_),[] -> Leaf(newVal)
		| Node(c,lt,rt),x::xs -> if(x == 0) then Node(c,replace_helper lt xs newVal,rt) else
			 Node(c,lt,replace_helper rt xs newVal)
		| Leaf(_),x::xs -> failwith "Path goes past a leaf"
		| Node(_,_,_),[] -> failwith "Path did not reach leaf"
	in match graph with
		| [] -> t
		| x::xs -> let (r1,r2) = x in replace_leaf_at (replace_helper t r1 r2) xs
let bf_to_dTree : (char list * (int list * int) list) -> dTree = fun pairRep -> let (r1,r2) = pairRep in replace_leaf_at (list_to_tree r1) r2
	 
