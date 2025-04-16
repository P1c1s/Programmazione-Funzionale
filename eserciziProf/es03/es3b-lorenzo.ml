let sumto n =
  let rec aux acc m = match m with
    | 0 -> acc
    | _ -> aux (acc + m) (m-1)
  in aux 0 n;; 
