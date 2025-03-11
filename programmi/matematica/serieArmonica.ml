let rec calcolo ((numeratore, potenza), somma, (contatore,precisione)) =
  if contatore < precisione then
      begin
      Printf.printf "%f " somma;
      calcolo ((numeratore, potenza), somma +. (numeratore/.((float_of_int(contatore)+.1.0)**potenza)), (contatore + 1 , precisione))
      end
    else
      Printf.printf "\n";;

let serieArmonica (numeratore, potenza, precisione) =
  calcolo ((numeratore, potenza), 0.0, (0, precisione));;

let () = serieArmonica (1.0, 10.0, 10000)

(* 1/n^ *)