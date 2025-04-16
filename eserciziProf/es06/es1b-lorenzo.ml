let pari n = (n mod 2) = 0;;

let takewhile predicato lista = 
  let rec aux l = function
    | [] -> List.rev l
    | x::xs -> if predicato x = true then aux (x::l) xs else List.rev l
  in aux [] lista;; 