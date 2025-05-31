let rec reflect = function
  Empty -> Empty
  Tr(x,t1,t2) -> Tr(x, reflect t2, reflect t1);;