(*Funzione subset*)
let subset set1 set2 = List.for_all (function x1 -> List.exists (function x2 -> (x2 = x1)) set2) set1;; 