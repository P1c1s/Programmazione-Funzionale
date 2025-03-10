Printf.printf "Programma che stampa la sequenza di Fibonacci\n"

let rec fibonacci (x,y,i) =
  if i < 5  then 
    begin
      Printf.printf "%d - " (x+y);
      fibonacci(y, x+y, i+1)
    end
  else
    Printf.printf "%d \n" (x+y);;

let () = fibonacci(0, 1, 1);;