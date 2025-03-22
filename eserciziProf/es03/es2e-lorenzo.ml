let rec num_di_stringhe contatore =
  let input = read_line() in
    if input = "" then
      Printf.printf "%d\n" contatore
    else
      num_di_stringhe (contatore+1)

let () = num_di_stringhe 0;;