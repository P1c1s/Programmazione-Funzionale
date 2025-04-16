(*Funzione bello: un numero è bello se l'ultima cifra è 0, 3 o 7 e la penultima, se esiste, non lo è*)
let bello n =
  match abs(n mod 10) with  (*controllo ultima cifra*)
  0 | 3 | 7 -> (match(abs(n mod 100))/10 with (*controllo la penultima cifra*)
    3 | 7 -> false
    | 0 -> n < 100  (*se il numero è minore di 100, ritorna true (es. 03 = 3)*)
    | _ -> true)
  | _ -> false;;

let bello n =
  match abs(n mod 10) with
  0 | 3 | 7 -> (match(abs(n mod 100))/10 with
    0 | 3 | 7 -> n < 10
    | _ -> true)
  | _ -> false;;