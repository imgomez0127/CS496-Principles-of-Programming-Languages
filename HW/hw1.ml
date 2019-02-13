(* "I pledge me honor that I have abided by the Stevens honor system" -igomez Ian Gomez*)

module IntTuple = struct
	type t = int*int
	let compare (x0,y0) (x1,y1) = 
		match Pervasives.compare x0 x1 with
		| 0 -> Pervasives.compare y0 y1 
		| c -> c 
end
		
module IntTupSet = Set.Make(IntTuple)


type program = int list

let tuple_equals : int*int -> int*int -> bool = fun (r1,r2) (t1,t2) -> (r1 == t1) && (r2 == t2)

let rec contains : int*int -> (int*int) list -> bool = fun (t1,t2) lst -> 
	match lst with
		| [] -> false
		| (r1,r2)::lst -> tuple_equals (t1,t2) (r1,r2) || contains (t1,t2) lst

let colored : int*int -> program -> (int*int) list = fun (init_x,init_y) prog -> 
	let rec helper : int*int -> program -> bool -> IntTupSet.t -> (int*int) list =
		fun (init_x,init_y) prog pen_down hashSet-> 
			match prog with
				| [] -> []
				| 0::prog -> (init_x,init_y)::helper (init_x,init_y) prog true (IntTupSet.add (init_x,init_y) hashSet)
				| 1::prog -> helper (init_x,init_y) prog false hashSet
				| 2::prog -> let coord = (init_x,init_y+1) in  
					if (pen_down && not(IntTupSet.mem coord hashSet)) 
						then coord::helper coord prog pen_down (IntTupSet.add coord hashSet)
					else 
						helper coord prog pen_down hashSet
				| 3::prog -> let coord = (init_x+1,init_y) in  
					if (pen_down && not(IntTupSet.mem coord hashSet)) 
						then coord::helper coord prog pen_down (IntTupSet.add coord hashSet)
					else 
						helper coord prog pen_down hashSet
				| 4::prog -> let coord = (init_x,init_y-1) in
					if (pen_down && not(IntTupSet.mem coord hashSet)) 
						then coord::helper coord prog pen_down (IntTupSet.add coord hashSet)
					else 
						helper coord prog pen_down hashSet
				| 5::prog -> let coord = (init_x-1,init_y) in  
					if (pen_down && not(IntTupSet.mem coord hashSet)) 
						then coord::helper coord prog pen_down (IntTupSet.add coord hashSet)
					else 
						helper coord prog pen_down hashSet
				| _::prog -> failwith "The inputted number is not a valid program step"
    	in helper (init_x,init_y) prog false IntTupSet.empty

let equivalent : program -> program -> bool = fun prog1 prog2 -> 
	let rec check_equivalence : (int*int) list -> (int*int) list -> bool= fun test1 test2 -> 
		match test1 with
			| (t1,t2)::test1 -> if (contains (t1,t2) test2) then true && check_equivalence test1 test2 else false 
			| [] -> true
	in check_equivalence (colored (0,0) prog1) (colored (0,0) prog2)

let rec mirror_image : program -> program = fun prog ->
	match prog with
		| [] -> []
		| 0::prog -> 0::mirror_image prog
		| 1::prog -> 1::mirror_image prog
		| 2::prog -> 4::mirror_image prog
		| 3::prog -> 5::mirror_image prog
		| 4::prog -> 2::mirror_image prog
		| 5::prog -> 3::mirror_image prog
		| _::prog -> failwith "The inputted number is not a valid program step"

let rec rotate_90 : program -> program = fun prog ->
	match prog with
		| [] -> []
		| 0::prog -> 0::rotate_90 prog
		| 1::prog -> 1::rotate_90 prog
		| 2::prog -> 3::rotate_90 prog
		| 3::prog -> 4::rotate_90 prog
		| 4::prog -> 5::rotate_90 prog
		| 5::prog -> 2::rotate_90 prog
		| _::prog -> failwith "The inputted number is not a valid program step"

let rec repeat : int -> 'a -> 'a list = fun n input ->
	match n with
		| 0 -> []
		| _ -> input :: repeat (n-1) input

let rec pantograph : program -> int -> program = fun prog n ->
	match prog with
		| [] -> []
		| 0::prog -> 0::pantograph prog n
		| 1::prog -> 1::pantograph prog n
		| step::prog -> (repeat n step) @ pantograph prog n 
let compress : program -> (int*int) list = fun prog ->
	let rec compress_helper : program -> int -> int-> (int*int) list = fun prog curStep count ->
		match prog with
			| [] -> [(curStep,count)]
			| step::prog ->
				if (step == curStep) 
					then compress_helper prog step (count+1)
				else if(count != 0)
					then (curStep,count)::compress_helper prog step 1	
				else 
					compress_helper prog step 1
	in compress_helper prog 0 0
let rec decompress : (int * int) list -> program = fun compressedProg ->
	match compressedProg with
		| [] -> []
		| (instruction,n)::compressedProg -> (repeat n instruction) @ decompress compressedProg 
