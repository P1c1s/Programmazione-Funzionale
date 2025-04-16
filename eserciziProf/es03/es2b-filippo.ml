(*Funzione read_max_min*)
exception NoNumber;;

let read_max_min () =
  try
    let s = read_int() in
    let rec aux_max_min(max, min) = 
      try
        let x = read_int() in
        if x>max then aux_max_min (x, min)
        else if x<min then aux_max_min (max, x)
        else aux_max_min (max, min)
      with _ -> (max, min)
    in aux_max_min (s, s)
  with _ -> raise NoNumber;;