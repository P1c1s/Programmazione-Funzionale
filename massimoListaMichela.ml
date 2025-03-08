Printf.printf "Il programma fa creare una lista all'utente e ne calcola il numero massimo\n\n"

exception InvalidCommand

let lista = [];;
let max = 0;

let stampa = 
  Printf.printf "1 - Inserisci un altro numero\n";
  Printf.printf "0 - Calcola il massimo e termina\n";;

let letturaComando() = 
  let x = Printf.printf "Comando: "; read_line()
  in int_of_string x;;

let aggiuntaNumero () = 
  Printf.printf "Inserisci numero: ";
  let x = read_line() in 
    lista = x::lista;;

let rec massimo y = 
  let x::rest in 
  if x = [] then ...
  else if x > max then begin let max = x; massimo rest end
    else massimo rest;; 

let scelta x = match x with
  1 -> aggiuntaNumero ()
  | _ -> raise InvalidCommand;;

let rec loop () = 
  stampa();
  let comando = letturaComando () in 
    if comando = 0 then massimo lista else begin scelta comando ; loop ();;
  
let () = loop ();;