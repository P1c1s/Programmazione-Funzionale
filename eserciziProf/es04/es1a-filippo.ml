(*Funzione length*)
let rec length l acc = 
  match l with
  [] -> acc
  | _ :: xs -> length xs (acc+1)
;;

let length l =
  let rec aux acc l =
    match l with
    [] -> acc
    | _::xs -> aux (acc+1) xs
  in aux 0 l
;;