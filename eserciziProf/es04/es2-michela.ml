let copy n x =
  let rec aux acc n = match n with
    0 -> acc
    | _ -> aux (x::acc) (n-1)
  in aux [] n;;

let rec nondec = function 
  [] -> true 
  | x::[] -> true
  | x::y::[] -> x<y
  | x::y::xs -> if x>y then false
                else nondec (y::xs);;