(*Funzione remove -> ragionamento completo, parti dalla fine per scrivere il pattern matching*)
let remove n l =
  let rec aux n l acc =
    match l with
    [] -> List.rev acc
    | x::xs ->
      if x!=n then aux n xs (x::acc)
      else aux n xs acc
  in aux n l []
;;