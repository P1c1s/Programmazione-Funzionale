let pari n = (n mod 2) = 0;;

let dropwhile predicato lista = 
  let rec aux l = function
    | [] -> l
    | x::xs -> if predicato x = true then aux l xs else (x::xs)
  in aux [] lista;; 