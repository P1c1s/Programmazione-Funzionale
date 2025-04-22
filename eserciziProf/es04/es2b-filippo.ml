(*Funzione nondec*)
let rec nondec l =  
  match l with
  [] | [_] -> true  (*utilizzo '_' perché in questo caso non mi interessa la testa*)
  | x::y::rest ->
    if x<=y then nondec (y::rest) (*lista con almeno 2 elementi*)
    else false
;;