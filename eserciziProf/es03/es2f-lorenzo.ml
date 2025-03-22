let rec stringa_max stringa =
  let input = read_line() in
    if input = "" then
      Printf.printf "Stringa: %s\n" stringa
    else
      if String.length input > String.length stringa then 
        stringa_max input
      else
        stringa_max stringa;;

let () = stringa_max "";;