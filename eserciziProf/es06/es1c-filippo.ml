(*Funzione dropwhile*)
let dropwhile p l =
  let rec aux p l =
      match l with
      [] -> l
      | x::xs ->
          if (p x = true) then aux p xs
          else l
  in aux p l 
;;
(*dropwhile_applicata*)
let dropwhile_app l = dropwhile (function x -> (x mod 2 = 0)) l;;