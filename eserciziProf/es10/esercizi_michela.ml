type 'a graph = ('a * 'a) list;;


let add x = function lst ->  if (not (List.mem x lst)) then x::lst else lst;;


let nodes graph = 
  let rec aux visited = function
    [] -> visited
  | (a,b)::xs ->  aux (add b (add a visited)) xs
  in aux [] graph;;