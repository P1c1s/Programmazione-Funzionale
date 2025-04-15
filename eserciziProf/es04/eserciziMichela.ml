exception NoInput

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
    [x] -> min n x
    |x::xs -> minimo (min n x) xs
  in let rec mass acc = function
    [] -> acc
    |x::xs -> mass ((maxlist x)::acc) xs
    in minimo 100 (mass lst);;