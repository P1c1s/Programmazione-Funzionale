let somma x y = x + y;;
let sottrazione x y = x - y;;
let moltiplicazione x y = x * y;;
let divisione x y = x / y;;

let numeroUno = 10;;
let numeroDue = 3;;

Printf.printf "%d + %d = %d\n" numeroUno numeroDue (somma numeroUno numeroDue);;
Printf.printf "%d - %d = %d\n" numeroUno numeroDue (sottrazione numeroUno numeroDue);;
Printf.printf "%d x %d = %d\n" numeroUno numeroDue (moltiplicazione numeroUno numeroDue);;
Printf.printf "%d / %d = %d\n" numeroUno numeroDue  (divisione numeroUno numeroDue);;
