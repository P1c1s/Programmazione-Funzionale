let cassa = ref 0;;

let letturaIntero() =
  int_of_string (read_line())


  let stampa() =
    Printf.printf "\n+---------Menu-------+\n";
    Printf.printf "| 1) Stampa saldo       |\n";
    Printf.printf "| 2) Aggiungi        |\n";
    Printf.printf "| 0) Esci            |\n";
    Printf.printf "+--------------------+\n\n";
    Printf.printf "comando: ";;

let stampaSaldo() = Printf.printf "Soldi in cassa: € %d\n" !cassa;;

let calcola () =
  Printf.printf "Inserisci importo: € ";
  let x = letturaIntero() in
    cassa := !cassa + x;;

let selezioneScelta comando =
  match comando with
  | 1 -> stampaSaldo()
  | 2 -> calcola()
  | _ -> Printf.printf "Comando non trovato\n";;

let rec menu () = 
  stampa();
  let x = letturaIntero() in
    if x <> 0 then
      begin
        selezioneScelta x;
        menu()
      end
    else
      Printf.printf "Ciao\n";;

let () = menu();;

