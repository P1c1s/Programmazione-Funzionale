exception StringaVuota

let rec read_min_max min max =
  let input = read_line() in
  if input = "" then
    Printf.printf "Minimo: %d   Massimo: %d\n" min max
  else
    if (int_of_string input) > max then
      read_min_max min (int_of_string input)
    else
      if (int_of_string input) < min then
        read_min_max (int_of_string input) max
      else
        read_min_max min max;;

let () =
  let numero = read_line() in 
    if numero = "" then
      raise StringaVuota 
    else
      read_min_max (int_of_string numero) (int_of_string numero)