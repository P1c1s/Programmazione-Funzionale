(* exception FattorialeNegativo;;

let rec fattoriale = function
0 -> 1
| n -> if n<0 then raise FattorialeNegativo
else n*fattoriale(n-1);;

let () = fattoriale(10);; *)


(* let rec fattoriale = function
0 -> 1
| n -> n*fattoriale(n-1);;

let () = fattoriale 10  *)


exception ConversioneFallita

let stringa_a_intero s =
  try
    int_of_string s
  with
  | Failure _ -> raise ConversioneFallita

let main () =
  let input = "abc" in
  try
    let numero = stringa_a_intero input in
    Printf.printf "Il numero è: %d\n" numero
  with
  | ConversioneFallita ->
      Printf.printf "Errore: La conversione della stringa '%s' in intero è fallita!\n" input

let () = main ()
