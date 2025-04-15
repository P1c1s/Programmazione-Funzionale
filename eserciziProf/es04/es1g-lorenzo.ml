exception Errore;;

let nth n lista =
  let rec aux n l = match (n, l) with
    | (_, []) -> raise Errore
    | (1,_) -> let e = List.hd l in if e >= 0 then e else raise Errore
    | (_, x::xs) -> aux (n-1) xs
  in aux n lista;;