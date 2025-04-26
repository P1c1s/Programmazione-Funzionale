(*Funzione partition*)
let partition p l =
  let rec aux p l yes no =
      match l with
      [] -> (yes, no)
      | x::xs ->
          if (p x = true) then aux p xs (x::yes) no
          else aux p xs yes (x::no)
  in aux p l [] []
;;
(*partition_applicata*)
let partition_app l = partition (function x -> (x mod 2 = 0)) l;;