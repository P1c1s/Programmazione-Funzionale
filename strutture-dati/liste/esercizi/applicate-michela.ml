let mappa funzione lista=
  let rec aux acc = function
  [] -> acc
  | x::xs -> aux (acc@[funzione x]) xs
in aux [] lista;;

let mappa_applicata = mappa (function x -> x*2) [1;2;3;4];;



let rec fold_left funzione acc = function
  [] -> acc
  | x::xs -> fold_left funzione (funzione acc x) xs;;

let fold_left_applicata = fold_left (fun x y-> x+y) 0 [1;2;3;4];;



let rec exists predicato = function
  [] -> false
  | x::xs -> if predicato x then true
              else exists predicato xs;;

let exists_applicata = exists (function x -> x mod 2 = 0) [1;3;5;6;7];;

let exists_applicata2 = exists (function x -> x mod 2 = 0) [1;3;5;7];;



let rec iter funzione = function
  [] -> ()
  | x::xs -> (funzione x; iter funzione xs);;
  
let iter_applicata = iter (fun x -> Printf.printf "a\n") [1;2;3];;


let rec for_all predicato = function
  [] -> true
  | x::xs -> if not (predicato x) then false
              else for_all predicato xs;;

let foor_all_applicata = for_all (function x -> x mod 2 = 0) [2;4;6;8];;


let rev lista = 
  let rec aux acc = function
    [] -> acc
    | x::xs -> aux (x::acc) xs
in aux [] lista;;

let rev_applicata = rev [1;2;3;4;5];;



exception Not_Found;;

let rec find predicato = function
  [] -> raise Not_Found
  | x::xs -> if predicato x then x
              else find predicato xs;;

let find_applicata = find (function x -> x mod 2 = 0) [1;3;4;5;7];;




let filter predicato lista = 
  let rec aux acc = function
    [] ->  acc
    | x::xs -> if predicato x then aux (acc@[x]) xs
              else aux acc xs
  in aux [] lista;;

let filter_applicata = filter (function x -> x mod 2 = 0) [1;2;4;5;7;8;10];;


exception Invalid_Argument;;
exception Failure;;


let nth n lista = 
  if n < 0 then raise Invalid_Argument
  else let rec aux num = function
    [] -> raise Failure
    | x::xs -> if num = 0 then x
               else aux (num-1) xs
  in aux n lista;; 

let nth_applicata  = nth 3 [0;1;2;3;4;5;6;7];;