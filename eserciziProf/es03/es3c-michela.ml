Printf.printf "Programma che stampa la sequenza di Fibonacci\n"

let max = 100;;

let rec fibonacci (x,y) = 
  match (x,y) with 
    | (0,0) -> 
      begin 
        Printf.printf "%d" 1; 
        fibonacci (0,1)
      end
    | (_,_) ->
      begin 
        if x > max then
          Printf.printf "\nFine"
        else
          (* begin *)
            Printf.printf " %d " (x+y); 
            fibonacci (y, x+y)
          (* end *)
        end ;;

let () = fibonacci(0,0);;