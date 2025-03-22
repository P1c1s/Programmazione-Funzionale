let bello x = match abs x mod 10 with
| 0 | 3 | 7 ->  not((abs x mod 100)/10 = 0 || (abs x mod 100)/10 = 3 || (abs x mod 100)/10 = 7)
| _ -> false ;;

(* Esempi di utilizzo con il formato richiesto *)
let () =
  Printf.printf "%d -> %b\n" 30 (bello 30);   (* Output: false *)
  Printf.printf "%d -> %b\n" 33 (bello 33);   (* Output: true *)
  Printf.printf "%d -> %b\n" 37 (bello 37);   (* Output: true *)
  Printf.printf "%d -> %b\n" 170 (bello 170);   (* Output: false *)
  Printf.printf "%d -> %b\n" 73 (bello 73);   (* Output: true *)
  Printf.printf "%d -> %b\n" 10 (bello 10);   (* Output: false *)
  Printf.printf "%d -> %b\n" 0 (bello 0);     (* Output: false *)
  Printf.printf "%d -> %b\n" (-37) (bello (-37)); (* Output: true *)
