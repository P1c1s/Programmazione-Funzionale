exception ListaVuota;;

let maxlist lista =
  if lista = [] then raise ListaVuota
  else
  let rec aux m = function
    [] -> m 
    | x::xs -> aux (if x > m then x else m) xs
  in aux 0 lista;;