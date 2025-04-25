(*Funzione verifica_matrice*)
let verifica_matrice n l = List.for_all (List.exists (function x -> x < n)) l;;