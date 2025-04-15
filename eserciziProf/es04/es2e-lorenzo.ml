let enumera lista =
  let rec aux l n = function
    | [] -> List.rev l
    | x::xs -> aux ((n,x)::l) (n+1) xs
  in aux [] 0 lista;;  