let split2 lista =
  let rec aux n head = function
    | [] -> ([],[])
    | x::xs -> if n > 0 then aux (n-1) (x::head) xs else (head,xs)  
in aux ((List.length lista)/2) [] lista;;

split2 [1;2;3;4;5;6];;