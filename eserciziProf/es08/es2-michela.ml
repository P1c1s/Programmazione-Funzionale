exception EmptyTree;;

type 'a tree = 
  Empty 
  | Tr of 'a * 'a tree * 'a tree;;

type 'a tree = 
  Leaf of 'a
  | One of 'a * 'a tree
  | Two of 'a * 'a tree * 'a tree


let size = function
  Empty -> 0
  | Tr(_,t1,t2) -> 1 + size t2 + size t1;;

let is_empty = function
  Empty -> true
  | _ -> false;;

let root = function
  Empty -> raise EmptyTree
  | Tr(x, t1, t2) -> x;;

let is_leaf = function
  Tr(n, Empty, Empty) -> true
  | _ -> false;;

let rec altezza = function
  Empty -> 0
  | Tr(x,t1,t2) -> 1 + max (altezza t1) (altezza t2);;

  altezza (Tr(1, Tr(2, Tr(3,Empty, Empty), Empty), Empty));;

let rec reflect = function
  Empty -> Empty
  | Tr(x,t1,t2) -> Tr(x, reflect t2, reflect t1);;

let fulltree n =
  let rec aux k = function
    0 -> Empty
    | l -> Tr(k, aux (2*k) (l-1), aux (2*k+1) (l-1))
  in aux 1 n;;

let balanced = function
  Empty -> true
  | Tr(_, t1, t2)-> ( abs (altezza t1 - altezza t2)) <= 1;;

  (* innterpretazione con lorenzo -- ogni nodo deve essere bilanciato*)
let rec balanced = function
Empty -> true
| Tr(_, t1, t2)-> ( abs (altezza t1 - altezza t2)) <= 1 && balanced t1 && balanced t2;;

 balanced (Tr(1, Tr(2, Tr(3,Empty, Empty), Empty), Empty));;
 balanced (Tr(1, Tr(2, Empty, Empty), Empty));;

let rec preorder = function
  Empty -> []
  | Tr (x,l,r) -> x::(preorder l)@(preorder r);;

let rec inorder = function
  Empty -> []
  | Tr(x,l,r) -> (inorder l)@[x]@(inorder r);;

let rec postorder = function
  Empty -> []
  | Tr(x,l,r) -> (postorder l)@(postorder r)@[x];;


(* take e drop usate per prendere rispettivamente n valori dalla testa e lunghezza-n elementi dalla coda*)

let rec drop n lista = 
  if (List.length lista) < n then []
  else
      if n=0 then lista
      else drop (n-1) (List.tl lista);;

let take n lst = 
  if List.length lst < n then lst
  else let rec aux acc lista m = match m with
    0 ->  List.rev acc
    | _ -> aux ((List.hd lista)::acc) (List.tl lista) (m-1)
  in aux [] lst n;; 


let rec balpreorder = function
  [] -> Empty
  | x::rest -> Tr(x, balpreorder (take ((List.length rest)/2+1) rest), balpreorder (drop ((List.length rest)/2+1) rest));

let rec balinorder lst = 
  if lst = [] then Empty
  else Tr( List.nth lst ((List.length lst)/2), balinorder (take ((List.length lst)/2-1) lst), balinorder (drop ((List.length lst)/2) lst));;






let rec balinorder = function
  [] -> Empty
  if lst = [] then Empty
  else Tr( List.nth lst ((List.length lst)/2), balinorder ((take ((List.length lst)/2-1) lst)), balinorder (drop ((List.length lst)/2) lst));;


let rec foglie_in_lista lst = function
  Empty -> true
  | Tr(x, Empty, Empty) -> List.mem x lst
  | Tr(_, t1, t2) -> foglie_in_lista lst t1 && foglie_in_lista lst t2;;

let rec num_foglie = function
  Empty -> 0
  | Tr(x, Empty, Empty) -> 1
  | Tr(x,t1,t2) -> num_foglie t1 + num_foglie t2;;

exception InvalidTree;;

let rec segui_bool lst = function
  Empty -> raise InvalidTree
  | Tr(x, t1, t2) -> if lst = [] then x 
                    else if List.hd lst then segui_bool (List.tl lst) t1
                        else segui_bool (List.tl lst) t2;;


Tr(1, Tr(2, Tr(4, Empty, Empty), Tr(5, Empty, Empty)), Tr(3, Tr(6, Empty, Empty), Tr(7, Empty, Empty)))

reflect(Tr(1, Tr(2, Tr(4,Empty,Empty), Empty),Tr(3, Tr(5, Tr(6,Empty,Empty), Tr(7,Empty,Empty)), Empty)))

let foglie_costi tree = 
  let rec aux (a,costo) = function
    Tr(x, Empty, Empty) -> [(x,costo+x)]
    | Tr(x, l, r) -> List.flatten [(aux (x, costo+x) l);(aux (x, costo+x) r)]
  in aux (0,0) tree;;

let foglia_costo tree = 
  let rec aux (a,b) = function
    [] -> (a,b)
    | (a', b')::xs -> if b'>b then aux (a', b') xs
                    else aux (a,b) xs
  in aux (0,0) (foglie_costi tree);;

  type expr =
  Jolly
  | Int of int
  | Var of string
  | Sum of expr * expr
  | Diff of expr * expr
  | Mult of expr * expr
  | Div of expr * expr;;


let rec pattern_matching e1 e2 = match e2 with
  Jolly -> true
  | Int _ -> e1 = e2
  | Var _ -> e1 = e2
  | Sum (e', e'') -> e1 = e2 || {if match e1 with Sum(a', a'') -> (pattern_matching a' e') && (pattern_matching a'' e'')| _ -> false}
  | Diff (e', e'') -> e1 = e2 || {if match e1 with Diff(a', a'') -> (pattern_matching a' e') && (pattern_matching a'' e'') | _ -> false}
  | Mult (e', e'') -> e1 = e2 || {if match e1 with Mult(a', a'') -> (pattern_matching a' e') && (pattern_matching a'' e'') | _ -> false}
  | Div (e', e'') -> e1 = e2 || {if match e1 with Div(a', a'') -> (pattern_matching a' e') && (pattern_matching a'' e'') | _ -> false};;


let rec pattern_matching e1 e2 = match (e1, e2) with
  (_, Jolly) -> true
  | (Int a, Int b) -> a = b
  | (Var a, Var b) -> a = b
  | (Sum(a', a''), Sum(b', b'')) | (Diff(a', a''), Diff(b', b'')) | (Mult(a', a''), Mult(b', b'')) | (Div(a', a''), Div(b', b'')) -> pattern_matching a' b' && pattern_matching a'' b''
  | (_, _) -> false;;

  pattern_matching (Sum(Var "a", (Diff(Mult(Var "b", Var "c"), Var"d")))) (Sum(Jolly, Mult(Jolly, Jolly)));;


type jolly = Jolly | Int of int | Var of string;;

let rec max_subcommon_tree t1 t2 = match (t1, t2) with
  (Tr(a, ta1, ta2), Tr(b, tb1, tb2)) -> if a = b then Tr(a, max_subcommon_tree ta1 tb1, max_subcommon_tree ta2 tb2)
                                        else Tr(Jolly, Empty, Empty)
  | (_, Empty) | (Empty, _) -> Tr(Jolly, Empty, Empty);;

max_subcommon_tree (Tr(Int 1, Tr(Int 2, Tr(Int 4, Empty, Empty), Tr(Int 5, Empty, Empty)), Tr(Int 3, Tr(Int 6, Empty, Empty), Tr(Int 7, Empty, Empty))))
(Tr(Int 1, Tr(Int 2, Tr(Int 4,Empty,Empty), Empty),Tr(Int 3, Tr(Int 5, Tr(Int 6,Empty,Empty), Tr(Int 7,Empty,Empty)), Empty))) ;;