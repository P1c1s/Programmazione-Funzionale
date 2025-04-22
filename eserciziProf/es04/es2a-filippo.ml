(*Funzione copy*)
let copy n x =
  let rec aux n x l i =
    if i=n then l
    else aux n x (x::l) (i+1)
  in aux n x [] 0
;;