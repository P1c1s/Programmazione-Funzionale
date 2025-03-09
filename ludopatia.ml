Printf.printf "Gioco d'azzardo\n";;

let letturaIntero() = let x = read_line() in int_of_string x;;
let () = Random.self_init ();;

let cassa = ref 0;;

let altera x = cassa := !cassa + x;;

let dadi() = 
  Printf.printf "Che faccia del dado uscirà? Range [1-6]:  ";
  let x = letturaIntero() in Printf.printf "%d" x;
  let y = Random.int 5 + 1 in if x = y then begin altera 1 ; Printf.printf "%d" !cassa end else Printf.printf "no";;

let errore() = Printf.printf "Comando non trovato\n";;
    
let selezioneScelta x = match x with
    | 1 -> dadi()
    | 0 -> Printf.printf "Uscita dal programma.\n"
    | _ -> errore();;
  
let stampaMenu() =
    Printf.printf "\n+---------Menu-------+\n";
    Printf.printf "| 1) Dadi       |\n";
    Printf.printf "| 2) Sottrazione     |\n";
    Printf.printf "| 3) Moltiplicazione |\n";
    Printf.printf "| 4) Divisione       |\n";
    Printf.printf "| 5) Potenza         |\n";
    Printf.printf "| 0) Esci            |\n";
    Printf.printf "+--------------------+\n\n";;


let rec menu() = 
  stampaMenu();
  let comando = letturaIntero() in
  if comando <> 0 then begin selezioneScelta comando; menu() end else Printf.printf "ciao ciao\n";;

let () = menu();;