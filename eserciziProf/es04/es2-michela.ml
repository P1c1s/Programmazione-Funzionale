exception NoInput;;


let copy n x =
  let rec aux acc n = match n with
    0 -> acc
    | _ -> aux (x::acc) (n-1)
  in aux [] n;;

let rec nondec = function 
  [] -> true 
  | x::[] -> true
  | x::y::[] -> x<y
  | x::y::xs -> if x>y then false
                else nondec (y::xs);;

let pairwith y = function
  [] -> []
  | x::xs -> (y,x)::(pairwith y xs);;

let duplica lst = 
  let rec aux acc = function
    [] -> acc
    | x::xs -> aux (acc@[x;x]) xs
  in aux [] lst;;


let enumera lst = 
  let rec aux acc n = function
    [] -> acc
    | x::xs -> aux ((n,x)::acc) (n+1) xs
  in List.rev (aux [] 0 lst);;

let alternate lst = 
  let rec aux acc n = function
    [] -> acc
    | x::xs -> if (n mod 2)=1 then aux (x::acc) (n+1) xs
                else aux acc (n+1) xs
  in List.rev (aux [] 0 lst);; 

let maxlist lista =
  if lista = [] then raise NoInput
  else 
      let rec mass m = function 
          [] -> m
          | x::xs -> mass (Int.max m x ) xs
      in mass (List.hd lista) (List.tl lista);;


let min_dei_max lst =
  if lst=[] then raise NoInput
  else let rec minimo n = function
    [] -> raise NoInput
    | [x] -> min n x
    |x::xs -> minimo (min n x) xs
  in let rec mass acc = function
    [] -> acc
    |x::xs -> mass ((maxlist x)::acc) xs
    in minimo 100 (mass [] lst);;

let rec drop n lista = 
  if List.length lista < n then []
  else
      if n=0 then lista
      else drop (n-1) (List.tl lista);;

let take n lst = 
  if List.length lst < n then lst
  else let rec aux acc lista m = match m with
    0 ->  List.rev acc
    | _ -> aux ((List.hd lista)::acc) (List.tl lista) (m-1)
  in aux [] lst n;; 

let split2 lst = 
  if lst = [] then raise NoInput
  else let n = ((List.length lst)/2)
        in (take n lst, drop n lst);; 