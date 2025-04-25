(*Funzione duplica*)
let duplica l =
  let rec aux l acc =
    match l with
    [] -> List.rev acc
    | x::xs -> aux xs (x::x::acc)
  in aux l []
;;