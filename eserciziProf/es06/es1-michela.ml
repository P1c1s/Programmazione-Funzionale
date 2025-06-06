exception NoInput

let rec find p = function
  []-> raise NoInput
  | x::xs -> if p x then x
            else find p xs;;
            
let find_app l = find (function x -> x*x < 30) l;;

let takewhile p lst = 
  let rec aux acc  = function
    [] -> acc
    | x::xs -> if p x then aux (x::acc)  xs
                else []
  in List.rev (aux []  lst);;

let rec dropwhile p = function
  [] -> []
  | x::xs -> if p x then dropwhile p xs
              else x::xs;;

let partition p lst = 
  let rec aux acc1 acc2 = function
    [] -> (acc1,acc2)
    | x::xs -> if p x then aux (x::acc1) acc2 xs
              else aux acc1 (x::acc2) xs
    in aux [] [] (List.rev lst);;

let rec pairwith y = function
  [] -> []
  | x::xs -> (y,x)::(pairwith y xs);;

let pairwith y lst = List.map (function x -> (y,x)) lst;;

let verifica_matrice n lst = List.exists (function x -> (List.for_all (function y -> y<n) x) = true) lst;;

let setdiff l1 l2 = List.filter (function x -> (List.for_all (function y -> y<>x) l2) = true) l1

let subset s1 s2 = List.for_all (function x -> (List.exists (function y -> y=x) s2) = true) s1 

let duplica l1 = List.map (function x ->2*x) l1;;

let mapcons lst n = List.map (function x -> (Stdlib.fst x, n::(Stdlib.snd x))) lst;;
