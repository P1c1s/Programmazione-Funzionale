Printf.printf "Programma che implementa un countdown mediante ciclo enumerativo.\n\n";;

let letturaComando() = 
    let x = Printf.printf "Comando: "; read_line()
    in int_of_string x;;

let letturaNumeri() = 
    let x = Printf.printf "Inserisci numero: "; read_line() in
    let y = Printf.printf "Inserisci numero: "; read_line() in 
    (int_of_string x, int_of_string y);;

let stampa() =
    Printf.printf "1) Addizione\n";
    Printf.printf "2) Sottrazione\n";
    Printf.printf "3) Moltiplicazione\n";
    Printf.printf "4) Divisione\n\n";;

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

let errore() = Printf.printf "Comando non trovato\n";;
    
let rec loop () =
    stampa ();
    let comando = letturaComando () in
    match comando with
    | 1 -> addizione ()
    | 2 -> sottrazione ()
    | 3 -> moltiplicazione ()
    | 4 -> divisione ()
    | 0 -> Printf.printf "Uscita dal programma.\n"
    | _ -> errore ();
    if comando <> 0 then loop () else Printf.printf "Ciao ciao\n\n";;

let () = loop();;

