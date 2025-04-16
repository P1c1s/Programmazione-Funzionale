let alternate lista =
  let rec aux n l = function
    | [] -> l
    | x::xs -> aux (n+1) (if (n mod 2) = 0 then (x::l) else l ) xs
  in aux 0 [] lista;;
  