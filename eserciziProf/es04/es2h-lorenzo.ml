let mmax lista =
  let rec aux m = function
    | [] -> m 
    | x::xs -> aux (if x > m then x else m) xs
  in aux 0 lista;;

let mmin lista =
  let rec aux m = function
    | [] -> m 
    | x::xs -> aux (if x < m then x else m) xs
  in aux (List.hd lista) lista;;

let sshift l = 
  let rec aux l = function
    | [] -> l
    | x::xs -> aux ((mmax x)::l) xs
  in aux [] l;;
  
let min_max lista = mmin (sshift lista);;

min_max [[1;2;3];[1;3;4;10];[4;5;11]];;



let min_max' lista = 
  List.fold_left (function max x -> if x > max then x else max) max lista;;

min_max' [1;2;3];;


let mml lista = match lista with
  | [] -> 0
  | x :: xs -> match x with
    | [] -> 0
    | y :: ys -> List.fold_left (fun acc elem -> if elem > acc then elem else acc) y ys;;

mml [[1;11;3]; [13;4]; [1;1]];;