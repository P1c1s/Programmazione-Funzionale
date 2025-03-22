let rec occorre b n =
  let input = read_line() in
    if input = "" then
      Printf.printf "%b\n" b
    else
      if (int_of_string input) = n then
        occorre (b || true) n
    else
      occorre (b || false) n;;

let () = occorre false 10;;