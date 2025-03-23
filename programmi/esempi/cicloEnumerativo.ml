(* Stampa un messaggio che descrive il programma *)
Printf.printf "Programma che implementa un countdown mediante ciclo enumerativo.\n\n";;

(* Definisce una funzione ricorsiva chiamata loop che accetta un argomento i *)
let rec loop i =
  (* Controlla se i è minore di 0 *)
  if i < 0 then 
    (* Se i è minore di 0, stampa il valore di i *)
    Printf.printf "%d" i
  else begin 
    (* Se i non è minore di 0, stampa il valore di i seguito da una nuova riga *)
    Printf.printf "%d\n" i; 
    (* Chiama ricorsivamente la funzione loop decrementando i di 1 *)
    loop (i - 1) 
  end

(* Avvia il countdown chiamando la funzione loop con il valore iniziale 10 *)
in loop 10;;
