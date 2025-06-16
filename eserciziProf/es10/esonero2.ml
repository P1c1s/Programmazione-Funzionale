let from_stringlist_to_string lista = 
  List.fold_left (fun acc x -> x^" "^acc) "" lista;;

from_stringlist_to_string ["ci"; "ao"];;

  type 'a ntree = Tr of 'a *'a ntree list


let rec lispy = function
  Tr(c, []) -> String.make 1 c
  | Tr(c, lista) -> (String.make 1 c)^" ( "^(from_stringlist_to_string (List.map lispy lista))^" )";;

lispy (Tr('a', [Tr('b', [Tr('c', [])])]));;

let degree graph n = List.length (List.filter (fun (a,b) -> a=n|| b=n) graph);;

let add x lst = if not (List.mem x lst) then x::lst else lst;;

let nodes graph =
  let rec aux acc = function
  [] -> acc
  | (a,b)::xs -> aux (add a (add b acc)) xs
  in aux [] graph;;

let nodes_with_degree graph = 
  let nodi = nodes graph in
    let gradi = List.map (degree graph) nodi in
    List.combine nodi gradi;;
    
let ordered_nodes = fst (List.split (List.sort (fun (a,b) (c,d) -> compare d b) (nodes_with_degree)));;

