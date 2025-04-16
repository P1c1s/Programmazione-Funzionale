(*Funzione read_max --> IMPORTANTE IDENTIFICARE IL CALCOLO RICORSIVO*)   
exception NoNumber;;

let read_max () = 
  try
    let s = read_int() in (*controllo iniziale per leggere un input da tastiera*)
    let rec aux_max m =   (*funzione ausiliaria che calcola il massimo e lo aggiorna*)
    try
      let x = read_int() in
      if x>m then aux_max x
      else aux_max m  (*anche con 'in aux_max (max x m)'*)
    with _ -> m
  in aux_max s
  with _ -> raise NoNumber;;