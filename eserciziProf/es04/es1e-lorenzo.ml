let append lista1 lista2 = 
  let rec aux l = function
    | [] -> l
    | x::xs -> aux (x::l) (xs)
  in aux lista2 (List.rev lista1);; 
