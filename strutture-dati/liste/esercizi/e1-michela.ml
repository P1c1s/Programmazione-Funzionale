let occorrenze lst = List.map (function x -> (x,(List.length (List.find_all (function y -> x=y) lst)))) (List.sort_uniq compare lst);;

exception BadInput;;

let minimo lista =
  if lista = [] then raise BadInput
  else 
      let rec min m = function 
          [] -> m
          | x::xs -> min (Int.min m x ) xs
      in min (List.hd lista) (List.tl lista);;

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

let remove n lst = 
  let rec aux acc m = function
    [] ->raise BadInput
    | x::xs -> if m=0 then acc@xs
              else aux (acc@[x]) (m-1) xs
  in aux [] n lst;;

let ordinamento lst =
  let rec aux acc = function
      [] -> acc
    | x::xs -> let m = minimo (x::xs)
        in aux (acc@[m]) (remove (Option.get (List.find_index (function y -> y=m) (x::xs))) (x::xs))
  in aux [] lst;; 