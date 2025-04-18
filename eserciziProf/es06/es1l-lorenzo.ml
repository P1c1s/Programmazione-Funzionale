let interleave n lista = 
  let rec aux app l = function
    | [] -> l
    | x::xs -> aux (app@[x]) (app@[n]@xs) xs
  in aux [] [] lista;;
  
interleave 10 [0;1;2];;

