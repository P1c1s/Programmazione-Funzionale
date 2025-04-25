(*Funzione position*)
exception NoOcc
let position n l =
  let rec aux n l i =
    match l with
    [] -> raise NoOcc
    | x::xs -> if x=n then i else aux n xs (i+1)
  in aux n l 0
;;