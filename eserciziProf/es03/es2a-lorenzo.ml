exception StringaVuota

let rec read_max max =
  let input = read_line() in
  if input = "" then
    Printf.printf "Massimo: %d\n" max
  else
    if (int_of_string input) > max then
      read_max (int_of_string input)
    else
      read_max max;;

let () =
  let numero = read_line() in 
    if numero = "" then
      raise StringaVuota 
    else
      read_max (int_of_string (numero))