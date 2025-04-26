let interleave n lista = 
  let rec aux acc testa = function
    | [] -> (n::lista)::(List.tl acc)
    | x::xs -> aux (acc@([testa@[x]@[n]@xs])) (testa@[x]) xs
  in aux [[]] [] lista;;

interleave 10 [1;2;3;4];;


