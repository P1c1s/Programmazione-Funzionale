let nondec l =
  let rec aux = function
    | x::[] -> true
    | x::y::[] -> x<y
    | x::y::xs -> (x<y) && aux (y::xs)
  in aux l;;