exception Eccezione;;

let position y lista =
  let rec aux n = function
    | [] -> raise Eccezione
    | x::xs -> if x = y then n else aux (n+1) xs
  in aux 0 lista;;