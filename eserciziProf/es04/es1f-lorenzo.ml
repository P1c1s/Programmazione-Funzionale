let reverse lista =
  let rec aux l = function
    | [] -> l
    | x::xs -> aux (x::l) xs
  in aux [] lista;;