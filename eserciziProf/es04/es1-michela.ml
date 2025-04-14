exception BadInput

let length lista = 
    let rec aux acc = function
        [] -> acc
        | x::xs -> aux (acc+1) xs
    in aux 0 lista;;

let sumof lista =
    let rec aux acc = function
        [] -> acc
        | x::xs -> aux (acc+x) xs
    in aux 0 lista;;

(*          DA VERIFICARE           *)
let maxlist lista =
    if lista = [] then raise BadInput
    else 
        let rec mass m = function 
            [] -> m
            | x::xs -> mass (Int.max m x ) xs
        in mass (List.hd lista) (List.tl lista);;

let rec drop n lista = 
    if length lista < n then []
    else
        if n=0 then lista
        else drop (n-1) (List.tl lista);;

let append lista1 lista2 = 
    let l1 = List.rev lista1 in
        let rec aux l2 = function
            [] -> l2
            | x::xs -> aux (x::l2) xs
        in (aux lista2 l1);;

let reverse lista = 
    let rec aux acc = function
    [] -> acc
    | x::xs -> aux (x::acc) xs
    in aux [] lista;;

let nth n lista = 
    if n<0 || n>length lista then raise BadInput
    else 
        let rec aux num l = match num with
            0 -> List.hd l
            | _ -> aux (num-1) (List.tl l) 
        in aux n lista;;
    
let remove x lista = 
    let rec aux acc n = function
        [] -> acc
        |x::xs ->   if x=n then aux acc n xs
                    else aux (x::acc) n xs
    in aux [] x (List.rev lista);; 