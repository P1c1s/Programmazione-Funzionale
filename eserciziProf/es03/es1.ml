exception BadDate

let somma_ore (h1,m1) (h2, m2)= 
  if h1<0 || h2<0 || h1>23 || h2>23 || m1<0 || m2<0 || m1>59 || m2>59 then raise BadDate
  else ((h1+h2)+((m1+m2)/60), (m1+m2) mod 60);;