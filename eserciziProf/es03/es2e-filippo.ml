(*Funzione num_di_stringhe*)
let rec num_di_stringhe () =
  let s = read_line() in
  if s = "" then 0
  else String.length s + num_di_stringhe ()
;;