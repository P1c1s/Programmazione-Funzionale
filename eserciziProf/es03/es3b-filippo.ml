(*Funzione sumto*)
let sumto n = (n*(n+1))/2;; (*somma dei primi n numeri naturali*)

let rec sumto n = (*forma ricorsiva*)
  match n=0 with
  true -> n
  | _ -> n + sumto(n-1)
;;