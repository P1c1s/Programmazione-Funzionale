let setdiff l1 l2 =
  let rec aux lista2 = function
    | [] -> lista2
    | x::xs -> aux (List.filter (function y -> y != x) lista2) xs
  in aux l2 l1;;

setdiff [1;2;3;5;8] [-1;1;2;3;9;12];;

let setdiff' =
  

setdiff' [1;2;3;5;8] [-1;1;2;3;9;12];;
