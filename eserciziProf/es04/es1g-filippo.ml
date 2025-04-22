(*Funzione nth*)
exception ListNotValid
let nth n l =
  if n>(List.length l)-1 then raise ListNotValid
  else
    let rec aux n l i =
      match l with
      [] -> raise ListNotValid
      | x::xs ->
        if i<n then aux n xs (i+1)  (*richiamo aux su xs, la lista si rimpicciolisce sempre di più fino a quanto x = "l.[n]"*)
        else
          x
    in aux n l 0
;;