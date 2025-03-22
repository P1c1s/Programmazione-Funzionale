let data (d, m) = 
  if d < 1 then
    false
  else
    (match m with
    | "gennaio"| "marzo" | "maggio" | "luglio" | "agosto" | "ottobre" | "dicembre" -> d <= 31
    | "febbraio" -> d<=28
    | "aprile" | "giugno" | "settembre" | "novembre" -> d <= 30
    |  _ -> false) && d>=1;;

(* Esempi di utilizzo *)
let () =
  Printf.printf "29 febbraio -> %b\n" (data (29, "febbraio"));  (* Output: false *)
  Printf.printf "28 febbraio -> %b\n" (data (28, "febbraio"));  (* Output: true *)
  Printf.printf "31 aprile -> %b\n" (data (31, "aprile"));      (* Output: false *)
  Printf.printf "30 aprile -> %b\n" (data (30, "aprile"));      (* Output: true *)
  Printf.printf "-1 gennaio -> %b\n" (data (-1, "gennaio"));    (* Output: false *)
  Printf.printf "0 gennaio -> %b\n" (data (0, "gennaio"));      (* Output: false *)
  Printf.printf "31 dicembre -> %b\n" (data (31, "dicembre"));  (* Output: true *)