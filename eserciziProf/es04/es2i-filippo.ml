(*Funzione take*)
let take n l =
  if n>List.length l then l else
    let rec aux n l i acc =
      match l with
      [] -> l
      | x::xs ->
        if i>n then List.rev acc
        else aux n xs (i+1) (x::acc)
    in aux n l 1 []
;;

(*Funzione drop*)
let drop n l =
  if List.length l < n then [] else
    let rec aux n l =
      match l with
      [] -> l
      | _::xs ->
        if n>0 then aux (n-1) xs
        else l
    in aux n l
;;

(*Funzione split2*)
let split2 l =
  match l with
  [] -> ([], [])
  | _ -> (take ((List.length l)/2) l, drop ((List.length l)/2) l)
;;