type 'a ntree = Tr of 'a *'a ntree list

type multi_expr = 
  MultiInt of int
  | MultiVar of string
  | MultiDiff of multi_expr * multi_expr
  | MultiDiv of multi_expr * multi_expr
  | MultiSum of multi_expr list
  | MultiMult of multi_expr list

(* Esercizio 1a *)

let rec subexpr me1 me2 = match me1 with 
  MultiInt e -> me1 = me2
  | MultiVar e -> me1 = me2
  | MultiDiff (e', e'') | MultiDiv (e', e'') -> me1 = me2 || subexpr e' me2 || subexpr e'' me2
  | MultiSum lst | MultiMult lst -> me1 = me2 || List.exists (fun x -> subexpr x me2) lst;;


(* Esercizio 2a *)

let rec subst e1 s e2 = match e1 with 
  MultiInt s -> e2 
  | MultiVar s -> e2
  | MultiDiff (e', e'') -> MultiDiff((subst e' s e2), (subst e'' s e2))
  | MultiDiv(e', e'') -> MultiDiv((subst e' s e2), (subst e'' s e2))
  | MultiMult lst -> MultiMult (List.map (fun x -> subst x s e2) lst)
  | MultiSum lst -> MultiSum (List.map (fun x -> subst x s e2) lst);;

(* Esercizio 2 *)

let rec preorder = function
  Tr(x, [])-> [x]
  | Tr(x, lst) -> x::(List.flatten (List.map preorder lst));;

  preorder (Tr(1, [Tr(1, [Tr(2, [])]); Tr(11, [])]))

let rec postorder = function
  Tr(x, [])-> [x]
  | Tr(x, lst) -> (List.flatten (List.map postorder lst))@[x];;

  postorder (Tr(1, [Tr(1, [Tr(2, [])]); Tr(11, [])]))

let rec take n = function
  [] -> []
  | x::xs -> if n = 0 then [] 
              else x::(take (n-1) xs);;

let rec drop n = function 
  [] -> []
  | x::xs -> if n = 0 then x::xs
              else drop (n-1) xs;;

let rec inorder = function 
  Tr(x, []) -> [x]
  | Tr(x, lst) -> let n = List.length lst 
                    in (List.flatten (List.map inorder (take (n/2) lst)))@[x]@(List.flatten (List.map inorder (drop (n/2) lst)));;

(* Esercizio 3 *)

let rec foglie_in_lista lst = function
  Tr(x, []) -> List.mem x lst
| Tr(_, lista) -> List.for_all (foglie_in_lista lst) lista;;

(* Esercizio 4 *)

let rec num_foglie = function
  Tr(_, []) -> 1
  | Tr(_, lst) -> List.fold_left (fun acc x -> acc + num_foglie x) 0 lst;;

let foglie_costi tree =
  let rec aux (a,costo) = function
    Tr(x, []) -> [(x, costo+x)];
    | Tr(x, lista) -> List.flatten (List.map (aux (x,costo+x)) lista)
  in aux (0,0) tree;;


let foglia_costo tree = 
  let rec aux (a,b) = function
    [] -> (a,b)
    | (a', b')::xs -> if b'>b then aux (a', b') xs
                    else aux (a,b) xs
  in aux (0,0) (foglie_costi tree);;
