exception MannaccOcaml
  
let read_max () =
  Printf.printf "Inserisci sequenza: ";
  try let maxtmp = (int_of_string (read_line())) in
    (let rec aux m =
      let n = read_line() in
        (if n = "" then Printf.printf "%d\n" m
        else aux (max m (int_of_string n)) )
      in aux maxtmp)

  with _ -> raise  MannaccOcaml;;

let () = read_max();;