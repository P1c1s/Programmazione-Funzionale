(*Funzione stringa_max*)
let stringa_max () =
  try
    let s = read_line() in  (*input*)
    if s = "" then "" else  (*input nullo "" o non nullo*)
    let rec aux_stringa_max s =
      try
        let x = read_line() in
        if x = "" then s else (*stringa dopo s nulla o non nulla*)
        if (String.length x > String.length s) then aux_stringa_max x (*CHIAMATA RICORSIVA con parametro aggiornato*)
        else aux_stringa_max s (*CHIAMATA RICORSIVA con parametro non aggiornato*)
      with _ -> s (*input diverso da una stringa*)
    in aux_stringa_max s  (*qui parte la funzione, si assegna s*)
  with _ -> ""  (*questo 'with _ ->' serve a catturare delle eccezioni, in casi in cui non viene digitata una stringa*)
;;