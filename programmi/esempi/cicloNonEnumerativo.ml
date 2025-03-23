(* Stampa un messaggio che descrive il programma *)
Printf.printf "Programma che implementa un ciclo non enumerativo\n";;
Printf.printf "stampa dei numeri random finchè non viene generato il numero 0 ciclo.\n\n";;

(* Inizializza il generatore di numeri casuali *)
let () = Random.self_init ();;

(* Definisce una funzione ricorsiva chiamata loop *)
let rec loop () = 
  (* Genera un numero casuale tra 0 e 19 *)
  let num = Random.int 20 in 
  
  (* Controlla se il numero generato è 0 *)
  if num = 0 then 
    (* Se il numero è 0, stampa "Fine programma" *)
    Printf.printf "Fine programma\n" 
  else begin 
    (* Se il numero non è 0, stampa il numero generato *)
    Printf.printf "%d\n" num; 
    (* Chiama ricorsivamente la funzione loop per generare un nuovo numero *)
    loop() 
  end;;

(* Avvia il ciclo chiamando la funzione loop *)
let () = loop();;
