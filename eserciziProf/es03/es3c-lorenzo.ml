let power n k =
  let rec loop contatore potenza =
    if contatore <= k then
      loop (contatore+1) (potenza*n)
    else
      Printf.printf "Somma: %d\n" potenza
  in loop 1 1;;

let () = power 2 10;;