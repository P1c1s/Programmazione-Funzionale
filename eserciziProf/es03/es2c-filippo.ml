(*Funzione tutti_minori -> ricerca universale (AND importante nella chiamata ricorsiva)*)
let rec tutti_minori n =
  try
    let s = read_int() in (*leggo l'input*)
    (tutti_minori n) && s<n (*continuo a leggere e confronto il numero letto con m*)
  with _ -> true
;;