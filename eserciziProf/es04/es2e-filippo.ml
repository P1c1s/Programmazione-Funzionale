(*Funzione enumera*)
let enumera l =
  let rec aux l acc i =
    match l with
    [] -> List.rev acc
    | x::xs -> aux xs ((i, x)::acc) (i+1)
  in aux l [] 0
;;