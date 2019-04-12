type 'a bnode = {
                    data: 'a;
                    mutable lt: 'a bnode option;
                    mutable rt: 'a bnode option;
                }
type 'a tree = {
                    mutable head : 'a bnode option;
               }

let new_btree : unit -> 'a tree = fun t -> { head = None }

let join_btree : 'a tree -> 'a tree -> 'a -> 'a tree = fun t1 t2 item -> let newNode = { data=item; lt=t1.head; rt=t2.head } in { head = Some(newNode) };

let mirror_btree : 'a tree  -> unit = fun t ->
    let rec mirror_btree' = function
        | None -> None
        | Some n -> let temp = mirror_btree' n.right
                    inn.right <- mirror_btree' n.left;
                        n.left <- temp;
                        Some n
        in t.root <- mirror_btree' t.root
