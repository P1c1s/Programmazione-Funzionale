Printf.printf "Programma che implementa un countdown mediante ciclo enumerativo.\n";;

let letturaComando() = 
    let x = Printf.printf "Comando: "; read_line()
    in int_of_string x;;

let letturaNumeri() = 
    let x = Printf.printf "Inserisci numero: "; read_line() in
    let y = Printf.printf "Inserisci numero: "; read_line() in 
    (int_of_string x, int_of_string y);;

let stampa() =
    Printf.printf "\n+---------Menu-------+\n";
    Printf.printf "| 1) Addizione       |\n";
    Printf.printf "| 2) Sottrazione     |\n";
    Printf.printf "| 3) Moltiplicazione |\n";
    Printf.printf "| 4) Divisione       |\n";
    Printf.printf "| 5) Potenza         |\n";
    Printf.printf "| 0) Esci            |\n";
    Printf.printf "+--------------------+\n\n";;

let addizione() = 
    let (x,y) = letturaNumeri() in
    Printf.printf "%d+%d=%d\n" x y (x+y);;

let sottrazione() = 
    let (x,y) = letturaNumeri() in
    Printf.printf "%d-%d=%d\n" x y (x-y);;

let moltiplicazione() = 
    let (x,y) = letturaNumeri() in
    Printf.printf "%dx%d=%d\n" x y (x*y);;

let divisione() = 
    let (x,y) = letturaNumeri() in
    Printf.printf "%d/%d=%d\n" x y (x/y);;

let potenza() = 
    let (x,y) = letturaNumeri() in
    Printf.printf "%d^%d=%f\n" x y (float_of_int x ** float_of_int y);;

let errore() = Printf.printf "Comando non trovato\n";;
    
let funzione x = match x with
    | 1 -> addizione()
    | 2 -> sottrazione()
    | 3 -> moltiplicazione()
    | 4 -> divisione()
    | 5 -> potenza()
    | 0 -> Printf.printf "Uscita dal programma.\n"
    | _ -> errore();;

let rec loop() =
    stampa();
    let comando = letturaComando () in 
    if comando <> 0 then begin funzione comando; loop () end else Printf.printf "Uscita dal programma\n\nCiao ciao!\n";;

let () = loop();;

