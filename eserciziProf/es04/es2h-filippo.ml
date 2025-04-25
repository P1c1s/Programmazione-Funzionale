(*Funzione min_dei_max*)
exception EmptyList
let min_dei_max l = (*1 - ricevo la lista*)
  let rec aux_mn l mn =
    match l with
    [] -> mn
    | x::xs ->
      let m = aux_mx x 0 in (*2 - calcolo il massimo di ogni sottolista*)
      if m<mn then aux_mn xs m else aux_mn xs mn  (*4 - aggiorno il minimo con il minimo massimo di ogni sottolista*)
  
  and aux_mx l mx =  (*funzione di massimo*)
  match l with
  [] -> mx
  | x::xs -> if x>mx then aux_mx xs x else aux_mx xs mx

in
match l with
[] -> raise EmptyList  (*lista è vuota*)
| x::xs -> aux_mn l 0  (*3 - inizializzo il minimo a 0 e calcolo il minimo dei massimi*)
;;