Printf.printf "Programma che stampa la sequenza di Fibonacci\n"

let rec fibonacci (x, y, contatore, max) =
  if contatore < max  then 
    begin
      Printf.printf "%d - " (x+y);
      fibonacci(y, x+y, contatore+1, max)
    end
  else
    Printf.printf "%d \n" (x+y);;

let () = fibonacci(0, 1, 1, 10);;