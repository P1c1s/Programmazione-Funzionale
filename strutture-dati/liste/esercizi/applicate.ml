(* ('a -> 'b) -> 'a list -> 'b list *)
let mappa predicato lista = 
  let rec aux l = function
    | [] -> l
    | x::xs -> aux (l@[(predicato x)]) xs
  in aux [] lista;;

(* Lista di doppi + 1 *) 
let mappa_applicata = mappa (fun x -> 2*x+1) [1;2;3];;



(* ('acc -> 'a -> 'acc) -> 'acc -> 'a list -> 'acc *)
let fold_left predicato acc_formale lista =
  let rec aux acc = function
    | [] -> acc
    | x::xs -> aux (predicato acc x) xs
  in aux acc_formale lista;;

(* Somma interi lista *)
let fold_left_applicata = fold_left (fun acc x -> acc + x) 0 [1;23;2;11];;

(* Somma solo pari *)
let fold_left_applicata = fold_left (fun acc x -> (if x mod 2 = 0 then (acc + x) else acc)) 0 [10;22;23;2;11];;



(* ('a -> bool) -> 'a list -> bool *)
let exists predicato lista =
  let rec aux = function
    | [] -> false
    | x::xs -> if (predicato x) then true else aux xs
  in aux lista;;

(* Esiste un numero maggiore di 10? *)
let exists_applicata = exists (fun x -> x > 10) [1;2;3;4;10;11];;

(* Esiste un numero multiplo di 33? *)
let exists_applicata = exists (fun x -> (x mod 33)=0) [1;2;3;4;10;11];;


(* CHE COSA NON TI PIACE???*)
let iter unitFun lista =
  let rec aux = function
    | [] -> unitFun
    | _::xs -> unitFun
 in aux lista;;

let iter_applicata = iter (fun x -> Printf.printf "a\n") [1;2;3];;

let a = List.iter (fun x -> Printf.printf "a\n") [1;2;3];;
