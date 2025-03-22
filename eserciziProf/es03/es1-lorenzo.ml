exception BadDate;;

let somma_ore (h1, m1) (h2, m2) = 
  if h1 >= 0 && h2 >= 0 && m1 >= 0 && m2 >= 0 && h1 <= 23 && h2 <= 23 && m1 <= 59 && m2 <= 59 then
    (((h1+h2+((m1+m2)/60))) mod 24, (m1+m2) mod 60)
  else
    raise BadDate;;

let stampa (h, m) =
  match (h, m) with
  | (h, m) when h < 10 && m < 10 -> Printf.printf "0%d:0%d\n" h m
  | (h, m) when h < 10 -> Printf.printf "0%d:%d\n" h m
  | (h, m) when m < 10 -> Printf.printf "%d:0%d\n" h m
  | (h, m) -> Printf.printf "%d:%d\n" h m;;
   

(* Esempi di utilizzo *)
let () =
  stampa (somma_ore(5, 3) (2,3));   (* Output: 07:06 *)
  stampa (somma_ore(15, 3) (2,30));   (* Output: 17:33 *)
  stampa (somma_ore(10, 45) (2,30));   (* Output: 13:15 *)
  stampa (somma_ore(23, 11) (5,11));   (* Output: 04:22 *)
  stampa (somma_ore(25, 3) (2,3));   (* Eccezione *)