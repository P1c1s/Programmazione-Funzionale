Printf.printf "Programma che stampa la sequenza di Fibonacci per numeri minori di 100\n"

let max = 100;;

let rec fibonacci (x,y) = 
  match (x,y) with 
    | (0,0) -> begin Printf.printf "%d\t" 1; fibonacci (0,1) end
    | (_,_) -> begin 
                if x+y > max then Printf.printf "\nFine\n"
                else begin Printf.printf "%d\t" (x+y); fibonacci (y, x+y) end end ;;

let () = fibonacci (0,0);;