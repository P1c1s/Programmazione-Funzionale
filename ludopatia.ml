Printf.printf "Gioco d'azzardo\n";;

let () = Random.self_init ();;

let letturaIntero() = let x = read_line() in int_of_string x;;

let letturaCarattere() = let x = read_line() in x;;


let punteggio = ref 0;;

let aggiornaPunteggio x = if x > 0 then
    punteggio := !punteggio + x
  else
    punteggio := !punteggio - (abs x);;

let dadi() = 
  Printf.printf "Che faccia del dado uscirà? Range [1-6]:  ";
  let x = letturaIntero() in 
    let y = Random.int 5 + 1 in 
      Printf.printf "Faccia uscita: %d - " y;
      if x = y then 
        begin aggiornaPunteggio 10 ; Printf.printf "Hai indovinato, 10 punti a Grifondoro\n" end 
      else 
        begin aggiornaPunteggio (-1); Printf.printf "Hai perso 1 punto\n" end;;

let prova = if Random.int 2 = 0 then "O" else "X" in prova;;

let testaCroce() = 
  Printf.printf "Testa o croce [O - X]: ";
  let x = letturaCarattere() in 
    let y = Random.int 2 in
      let w = if y = 0 then "O" else "X" in 
        if w = x then 
          begin
            aggiornaPunteggio 3;
            Printf.printf "Hai indovinato, 3 punti per te\n"
          end 
        else
          begin
            aggiornaPunteggio (-1);
            Printf.printf "Hai perso 1 punto\n"
          end 

let errore() = Printf.printf "Comando non trovato\n";;

let stampaPunteggio() = 
  Printf.printf "Punteggio %d\n" !punteggio;;

let selezioneScelta x = match x with
    | 1 -> dadi()
    | 2 -> testaCroce()
    | 5 -> stampaPunteggio()
    | 0 -> Printf.printf "Uscita dal programma.\n"
    | _ -> errore();;  

let stampaMenu() =
    Printf.printf "\n+---------Menu-------+\n";
    Printf.printf "| 1) Dadi             |\n";
    Printf.printf "| 2) Testa o croce    |\n";
    Printf.printf "| 5) Stampa punteggio |\n";
    Printf.printf "| 0) Esci             |\n";
    Printf.printf "+--------------------+\n\n";;

let rec menu() = 
  stampaMenu();
  Printf.printf "comando: ";
  let comando = letturaIntero() in
  if comando <> 0 then begin selezioneScelta comando; menu() end else Printf.printf "ciao ciao\n";;

let () = menu();;