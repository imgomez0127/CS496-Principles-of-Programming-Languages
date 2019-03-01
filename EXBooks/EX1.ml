type coordinate = int*int
let getX : coordinate->int = fun coord -> let (r1,r2) = coord in r1
let getY: coordinate->int = fun coord -> let (r1,r2) = coord in r2
let add : coordinate->coordinate->(int*int) = fun pair1 pair2 -> let (x1,y1) = pair1 in let (x2,y2) = pair2 in (x1+x2,y1+y2)
