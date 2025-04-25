(*Funzione alternate*)
let alternate l =
  let rec aux l acc i =
    match l with
    [] -> acc
    | x::xs ->
      if ((i mod 2) != 0) then aux xs (acc @ [x]) (i+1)
      else aux xs acc (i+1)
  in aux l [] 0
;;