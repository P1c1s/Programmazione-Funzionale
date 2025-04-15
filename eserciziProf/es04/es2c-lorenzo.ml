(* Aproccio ricorisvo *)
let pairwith y lista =
  let rec aux l = function 
    | [] -> l
    | x::xs -> aux ((y,x)::l) xs
  in aux [] lista;;

(* Metodo List.map *)
let pairwith' y l = List.map (function x -> (y,x)) l;; 
