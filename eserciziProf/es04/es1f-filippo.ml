(*Funzione reverse*)
let reverse l =
  let rec aux l acc =
    match l with
    [] -> acc
    | x::xs -> aux xs (x::acc)
  in aux l []
;;