exception NoInput

let rec read_max n = 
  let s = read_line () in match s with
  | "" -> (Printf.printf "%d" n; raise NoInput)
  | _ -> if (int_of_string(s)) > n then read_max (int_of_string s)
          else read_max n;;