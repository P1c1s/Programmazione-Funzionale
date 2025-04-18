let pari n = (n mod 2) = 0;;

let rec dropwhile predicato = function
    | [] -> []
    | x::xs -> if predicato x = true then dropwhile predicato xs else (x::xs);;