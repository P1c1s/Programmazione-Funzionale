(*Funzione sumbetween*)
let rec sumbetween n m =
  if n>m then n
  else if n=m then m
  else n + sumbetween (n+1) m
;;