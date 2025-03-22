let rec tutti_minori b n =
  let input = read_line() in
    if input = "" then
      Printf.printf "%b\n" b
    else
      if (int_of_string input) < n then
      tutti_minori (b && true) n
    else
      tutti_minori (b && false) n;;

let () = tutti_minori true 10;;