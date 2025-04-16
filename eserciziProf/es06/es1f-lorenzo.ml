let verifica_matrice n lista =
  let rec aux = function
    | [] -> false  
    | x::xs -> List.for_all (fun y -> y < n) x || aux xs
  in aux lista;;

verifica_matrice 4 [[1;2;3];[4;5]];;