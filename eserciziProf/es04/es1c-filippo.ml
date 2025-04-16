(*Funzione maxlist*)
exception EmptyList
let maxlist l = 
  if l = [] then raise EmptyList
  else 
    let rec aux l max =
      match l with
      [] -> max
      | x::xs ->
        if x>max then aux xs x
        else aux xs max
    in aux l 0 
;;