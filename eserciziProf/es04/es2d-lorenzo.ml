let duplica lista =
  let rec aux l = function 
    | [] -> l
    | x::xs -> aux (x::x::l) xs
in aux [] lista;; 
