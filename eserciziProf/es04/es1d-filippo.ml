(*Funzione drop*)
exception EmptyList
let drop n l =
  if List.length l < n then []
  else
    let rec aux n l =
      match l with
      [] -> raise EmptyList
      | _::xs ->
        if n>0 then aux (n-1) xs
        else l
    in aux n l
;;