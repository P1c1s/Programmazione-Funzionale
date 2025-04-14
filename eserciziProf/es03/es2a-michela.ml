exception NoInput

let rec read_max n = 
  let s = read_line () in match s with
  | "" -> (Printf.printf "%d" n; raise NoInput)
  | _ -> if (int_of_string(s)) > n then read_max (int_of_string s)
          else read_max n;;

let read_max =
  try (let s = (int_of_string (read_line())) in
    (let rec massimo s =
      let n = read_line () in
        if n = "" then Printf.printf "%d" s
        else massimo (max s (int_of_string n))
      in massimo s ))
  with _ -> raise NoInput;; 


  let read_max () =
    try let s = int_of_string read_line() in
        let rec massimo s =
          if s = 0 then Printf.printf "Fine"
          else massimo (s-1)
    with _ -> raise NoInput;; 

let diocaml () = 
  read_max();;