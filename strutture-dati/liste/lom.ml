Printf.printf "Programma che implementa una lista.\n\n";;

let letturaComando() = 
  let comando = read_line() in int_of_string comando;;

let lista = [];;

let errore() = Printf.printf "Comando non trovato\n";;

let scelta comando = match comando with
  | 0 -> stampaLista();
  | _ -> errore();

let stampaLista() = pri

let stampa() = 
  Printf.printf "Menu\n";
  Printf.printf "1) Stampa\n";
  Printf.printf "b\n";
  Printf.printf "c\n";;

let rec loop() = 
  stampa();
  let comando = letturaComando() in
  if comando <> 0 then begin scelta comando end else Printf.printf "CIoa";;

  let () = loop();;