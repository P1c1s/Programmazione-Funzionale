let copy n x =
  let rec aux n l = match n with
    | 0 -> l
    | _ -> aux (n-1) (x::l)
  in aux x [];;
