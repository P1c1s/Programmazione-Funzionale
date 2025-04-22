let pari n = (n mod 2) = 0;;

let partition predicato lista = 
  let rec aux sx dx = function
    | [] -> (List.rev sx, List.rev dx)
    | x::xs -> if predicato x = true then (aux (x::sx) (dx) xs) else (aux (sx) (x::dx) xs) 
  in aux [] [] lista;; 

partition pari [1;2;3;44;4];;