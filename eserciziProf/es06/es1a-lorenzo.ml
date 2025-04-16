exception PredicatoNonSoddisfatto;;

let pari n = (n mod 2) = 0;;

let rec find predicato lista =  match lista with
  | [] -> raise PredicatoNonSoddisfatto;
  | l::lista -> if predicato l = true then l else find predicato lista;;

let find_applicata lista =
  find (function x -> x*x < 30) lista;;