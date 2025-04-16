(*Funzione power*)
let rec power n k =
  match k with
  0 -> 1
  | 1 -> n
  | _ -> n*(power n (k-1))
;;