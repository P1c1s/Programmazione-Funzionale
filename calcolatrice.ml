let somma x y = x + y;;
let sottrazione x y = x - y;;
let moltiplicazione x y = x * y;;
let divisione x y = x / y;;
let pari x = (x mod 2) = 0;;
let rec sommatoria x = if x = 0 then 0 else sommatoria(x-1) + x;;
let rec fattoriale x = if x = 1 then 1 else sommatoria(x-1) * x;;


let numeroUno = 10;;
let numeroDue = 3;;

Printf.printf "%d + %d = %d\n" numeroUno numeroDue (somma numeroUno numeroDue);;
Printf.printf "%d - %d = %d\n" numeroUno numeroDue (sottrazione numeroUno numeroDue);;
Printf.printf "%d x %d = %d\n" numeroUno numeroDue (moltiplicazione numeroUno numeroDue);;
Printf.printf "%d / %d = %d\n" numeroUno numeroDue  (divisione numeroUno numeroDue);;
if pari numeroDue then
  Printf.printf "%d è un numero pari.\n" numeroDue
else
  Printf.printf "%d non è un numero pari.\n" numeroDue;;
Printf.printf "La sommatoria di %d è %d\n" numeroUno (sommatoria numeroUno);;
Printf.printf "Il fattoriale di %d è %d\n" numeroUno (fattoriale numeroUno);;