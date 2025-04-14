let sumof lista =
  let rec aux s = function
    [] -> s
    | x::xs -> aux (s+x) xs
  in aux 0 lista;; 