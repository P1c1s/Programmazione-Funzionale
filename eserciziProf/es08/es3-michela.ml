type 'a tree = 
  Empty 
  | Tr of 'a * 'a tree * 'a tree;;

(* Esercizio 1*)

let rec stessa_struttura t1 t2 = match (t1, t2) with
  (Empty, Empty) -> true
  | (Tr(_, a1, a2), Tr(_,b1, b2)) -> stessa_struttura a1 b1 && stessa_struttura a2 b2
  | (_,_) -> false;;

  stessa_struttura (Tr(1, Tr(2, Empty, Empty), Tr(3, Empty, Empty))) (Tr(10, Tr(20, Empty, Empty), Tr(30, Empty, Empty)));;
  stessa_struttura (Tr(1, Tr(2, Empty, Empty), Tr(3, Empty, Empty))) (Tr(10, Tr(20, Empty, Empty), Empty));;

(* Esercizio 2 *)

let xor a b =
  (a || b) && not (a && b);;

let add x = function lst ->  if (not (List.mem x lst)) then x::lst else lst;;

let mapping t1 t2 = match (t1, t2) with
  (Empty, Empty) -> []
  | (Tr(a, l1, r1), Tr(b, l2, r2)) ->(a, b)::(mapping l1 l2)@(mapping r1 r2);;

let esiste_mapping t1 t2 = 
  if not (stessa_struttura t1 t2) then false 
  else let lst = mapping t1 t2
    in let rec aux = function
      [] -> true
      | (a,b)::xs ->  if ((List.assoc_opt a xs) = None) then true && aux xs
                    else ((List.assoc a xs) = b) && aux xs 
    in aux lst;; 



let esiste_mapping t1 t2 = 
  if not (stessa_struttura t1 t2) then false 
  let lst = mapping t1 t2
    in let rec aux = function
      [] -> true
      | (a,b)::xs ->  if ((List.assoc_opt a xs) = None) then true && aux xs
                    else ((List.assoc a xs) = b) && aux xs 
    in aux lst;; 

esiste_mapping (Tr(1, Tr(2, Empty, Empty), Tr(2, Empty, Empty))) (Tr(10, Tr(20, Empty, Empty), Tr(40, Empty, Empty)));;


mapping (Tr(1, Tr(2, Empty, Empty), Tr(2, Empty, Empty))) (Tr(10, Tr(20, Empty, Empty), Tr(30, Empty, Empty)))

(* Esercizio 2 *)

let rec path p = function
  Tr (a, Empty, Empty) -> not (p a)
  | Tr (a, l, r) -> (not (p a) && path p l) || (not (p a) && path p r);;

let p = function x -> (x mod 2) == 0;;

path p (Tr(1, Tr(2, Empty, Empty), Tr(3, Empty, Empty)))

(* Esercizio 3 *)

type 'a sostituzione  = ('a * 'a tree) list

let rec applica subst = function
  Empty -> Empty
  | Tr(x, Empty, Empty) -> (try List.assoc x subst 
                          with _ -> Tr(x, Empty, Empty))
  | Tr(x, l, r) -> Tr(x, applica subst l, applica subst r);; 

applica [(2, Tr(4, Empty, Empty)); (10, Tr(3, Empty, Empty)); (4, Tr(6, Empty, Empty))] (Tr(10, Tr(2, Tr (2, Empty, Empty), Empty), Tr(3, Empty, Tr(4, Empty, Empty))));;

(* Esercizio 4 *)

let rec rami = function
  Empty -> []
  | Tr(x, Empty, Empty) -> [[x]]
  | Tr(x, l, r) -> (List.map (fun y -> x::y) (rami l))@(List.map (fun y -> x::y) (rami r));;

let path_coprente t lista =
  let lst = rami t
  in try List.find (fun y -> (List.for_all (fun x -> List.mem x y) lista)) lst with _ -> [];;

path_coprente (Tr(10, Tr(2, Tr (2, Empty, Empty), Empty), Tr(3, Empty, Tr(4, Empty, Empty)))) [2;3];;

let albero =
  Tr(1,
    Tr(2, Tr(4, Empty, Empty), Tr(5, Empty, Empty)),
    Tr(3, Empty, Empty)
  );;

path_coprente albero [1; 2; 4];;