let mapcons n lista = 
  List.map (function x -> ((fst x),([n]@(snd x)))) lista;;
  
mapcons 10 [("A",[0;2]);("B",[3;9]);("C",[1;2])];;
