(*Funzione takewhile*)
let takewhile p l =
  let rec aux p l acc =
      match l with
      [] -> List.rev acc
      | x::xs ->
          if (p x = true) then aux p xs (x::acc)
          else List.rev acc
  in aux p l []
;;
(*takewhile_applicata*)
let takewhile_app l = takewhile (function x -> (x mod 2 = 0)) l;;