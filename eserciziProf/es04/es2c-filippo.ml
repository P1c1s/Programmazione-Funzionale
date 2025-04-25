(*Funzione pairwith*)

(*versione non tail-recursive*)
let pairwith n l =
  let rec aux n l acc =
    match l with
    [] -> acc
    | x::xs -> (n, x)::(aux n xs acc)
  in aux n l []
;;

(*versione tail recursive*)
let pairwith n l =
  let rec aux n l acc =
    match l with
    [] -> List.rev acc
    | x::xs -> aux n xs ((n, x)::acc)
  in aux n l []
;;

(*versione con l'append*)
let pairwith n l =
  let rec aux n l acc =
    match l with
    [] -> acc
    | x::xs -> aux n xs (acc @ [(n, x)])
  in aux n l []
;;