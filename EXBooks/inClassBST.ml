type 'a tree = Empty | Node of 'a * 'a tree * 'a tree

let t : int tree = Node(74,Node(50,Empty,Node(62,Empty,Empty)),Node(88,Node(83,Empty,Empty),Empty))
let rec find : 'a -> 'a tree -> bool = fun k t ->
	match t with
	| Empty -> false
	| Node(i,lt,rt) -> if (i == k) then true else (find k lt) || (find k rt)
let rec add : 'a -> 'a tree -> 'a tree = fun k t ->
	match t with
	| Empty -> Node(k, Empty,Empty)
	| Node(i,lt,rt) -> if(i = k) then Node(i,lt,rt) else if(i > k) then  Node(i , (add k lt), rt) else Node(i, lt , (add k rt))
let rec max : 'a tree -> 'a = fun t ->
	match t with
	| Empty -> failwith "Not possible"
	| Node(i,_,Empty) -> i
	| Node(i,lt,rt) -> max rt
let rec remove : 'a -> 'a tree -> 'a tree = fun k t ->
	match t with
	| Empty -> failwith "Element abasent"
	| Node(i,Empty,rt) -> if (i == k) then rt else Node(i, Empty, (remove k rt))
	| Node(i,lt,Empty) -> if (i ==k) then lt else Node(i,(remove k lt), Empty)
	| Node(i,lt,rt) -> if (i == k) then Node((max lt), (remove (max lt), rt) else if (i > k) then Node(i, (remove k lt),rt) else Node(i,lt, (remove k rt))

