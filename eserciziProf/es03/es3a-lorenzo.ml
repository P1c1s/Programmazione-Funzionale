let sumbetween min max =
  let rec loop min sum =
    if min <> max then
      loop (min+1) (sum+min)
    else
      Printf.printf "Somma: %d\n" sum
  in loop min 0;;

let () = sumbetween 1 20;;