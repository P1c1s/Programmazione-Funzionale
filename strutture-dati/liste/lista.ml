let lista = [1; 2; 3; 10; 130];;

(* Funzione per stampare una lista di interi *)
let stampa_lista lst =
  let rec aux = function
  | [] -> ()
  | [x] -> Printf.printf "%d" x  (* Stampa l'ultimo elemento senza virgola *)
  | x :: xs -> Printf.printf "%d, " x; aux xs  (* Stampa gli altri elementi con virgola *)
  in
  aux lst;
  Printf.printf "\n";;  (* Aggiunge una nuova riga alla fine *)

(* Stampa la lista *)
stampa_lista lista;;
