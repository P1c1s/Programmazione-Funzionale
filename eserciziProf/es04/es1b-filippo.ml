(*Funzione sumof*)
let sumof l =
  let rec aux l acc =
    match l with
    [] -> acc
    | x::xs -> aux xs (acc+x)
  in aux l 0
;;