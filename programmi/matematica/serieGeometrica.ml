let rec calcolo ((numeratore, denominatore), somma, (contatore,precisione)) =
  if contatore < precisione then
      begin
      Printf.printf "%f " somma;
      calcolo ((numeratore, denominatore), somma +. ((numeratore/.denominatore)**float_of_int(contatore)), (contatore + 1 , precisione))
      end
    else
      Printf.printf "\n";;

let serieGeometrica (numeratore, denominatore, precisione) =
  calcolo ((numeratore, denominatore), 0.0, (0, precisione));;

let () = serieGeometrica (1.0, 10.0, 10000)
