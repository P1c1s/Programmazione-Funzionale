(*Funzione find*)
exception PredNotSatisfied
let rec find p l =
    match l with
    [] -> raise PredNotSatisfied
    | x::xs -> if (p x = true) then x else find p xs
;;
(*find_applicata*)
let find_app l = find (function x -> x*x < 30) l;;