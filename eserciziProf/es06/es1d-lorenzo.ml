let pari n = (n mod 2) = 0;;

let partition predicato lista = 
  let rec aux sx dx = function
    | [] -> [sx;dx]
    | x::xs -> if predicato x = true then (aux (x::sx) (dx) xs) else (aux (sx) (x::dx) xs) 
  in aux [] [] lista;; 