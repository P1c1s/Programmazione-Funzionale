exception StringaVuota;;

let maxstring stringa = 
  if stringa = "" then
    raise StringaVuota
  else
    let rec loop max indice =
      if indice < (String.length stringa) then
        if stringa.[indice] > max then
          loop stringa.[indice] (indice+1)
        else
          loop max (indice+1)
      else
        Printf.printf "Il massimo della stringa `%s` è `%c`\n" stringa max
  in loop ' ' 0;; 



let () = maxstring (read_line());;