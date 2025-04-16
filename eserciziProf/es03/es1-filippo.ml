(*Funzione somma_ore*)
exception InvalidFormat
let somma_ore (h1, m1) (h2, m2) =
  if h1>23 || h2>23 || m1>59 || m2>59 then raise InvalidFormat
  else if (m1+m2) < 60 then ((h1+h2) mod 24, (m1+m2) mod 60)
  else ((h1+h2+1) mod 24, (m1+m2) mod 60);;