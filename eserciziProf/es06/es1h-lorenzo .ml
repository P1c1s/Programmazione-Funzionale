let subset l1 l2 =
  let rec aux = function
    | [] -> true
    | x::xs (aux (List.exists (function y -> y = x) l2) xs) && false
  let in aux l1;;

subset [1;2] [1;2;3];;

