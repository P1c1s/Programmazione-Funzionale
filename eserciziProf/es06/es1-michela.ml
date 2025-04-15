exception NoInput

let rec find p = function
  []-> raise NoInput
  | x::xs -> if p x then x
            else find p xs;;
            
let find_app l = find (function x -> x*x < 30) l;;

let takewhile p lst = 
  let rec aux acc p = function
    [] -> []
    | x::xs -> if p x then (x::acc) p xs
                else []
  in List.rev (aux [] p lst);;

let rec dropwhile p = function
  [] -> []
  | x::xs -> if p x then dropwhile xs
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

let pairwith y lst = List.map (function x (x,y)) lst;;