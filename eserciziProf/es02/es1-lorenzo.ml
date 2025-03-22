let ultime_cifre numero = ((abs numero mod 100)/10, abs numero mod 10);;

let stampa numero (decine, unita) = Printf.printf "%d -> (%d, %d)\n" numero decine unita;;

let () = 
  let coppia = ultime_cifre(10) in stampa 10 coppia;;

let () = 
  let coppia = ultime_cifre(32) in stampa 32 coppia;;

let () = 
  let coppia = ultime_cifre(3) in stampa 3 coppia;;