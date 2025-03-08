Printf.printf "Programma che implementa un countdown.\n\n";;
let rec loop i =
  if i<0 then Printf.printf "%d" i
  else begin (Printf.printf "%d\n" i); loop (i-1) end
  in loop 10;;