type multi_expr = 
  MultiInt of int
  | MultiVar of string
  | MultiDiff of multi_expr * multi_expr
  | MultiDiv of multi_expr * multi_expr
  | MultiSum of multi_expr list
  | MultiMult of multi_expr list;;


let rec subexpr e1 e2 = match e1 with 
  MultiInt _ | MultiVar _ -> e1 = e2
  | MultiDiff  (e', e'') | MultiDiv (e', e'') -> e1 = e2 || subexpr e' e2 || subexpr e'' e2
  | MultiSum lst | MultiMult lst -> e1 = e2 || List.exists (function x -> subexpr x e2) lst;;


let rec subst e x e2 = match e with
  MultiVar v -> if v = x then e2 else MultiVar v
  | MultiInt i -> MultiInt i
  | MultiDiff (e', e'') -> MultiDiff ((subst e' x e2),(subst e'' x e2))
  | MultiDiv (e', e'') -> MultiDiv ((subst e' x e2),(subst e'' x e2))
  | MultiSum lst -> MultiSum (List.map (function y -> subst y x e2) lst)
  | MultiMult lst -> MultiMult (List.map (function y -> subst y x e2) lst);;


subst (MultiDiff(MultiDiv((MultiInt 2), (MultiVar "s")), MultiDiv((MultiVar "k"), (MultiVar "s")))) "s" (MultiInt 3);;

type 'a ntree = Tr of 'a * 'a ntree list;;


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

(* Sbagliata *)
let rec preorder = function 
  Tr(x, []) -> x
  | Tr(x, lst) -> x::(List.fold_right preorder [] lst);;

(* Soluzione prof*)
let rec preorder = function Tr(x, lista) -> x::(List.flatten (List.map preorder lista));;

let rec postorder = function Tr(x, lista) -> (List.flatten (List.map postorder (List.rev lista)))@[x];;

let rec inorder = function Tr(x, lista) -> (List.flatten (List.map inorder (take ((List.length lista)/2) lista)))@[x]@(List.flatten (List.map inorder (drop ((List.length lista)/2) lista)));;

Tr(1, [Tr(2,[]); Tr(3, [Tr(5, [])]); Tr(4,[])])


let rec foglie_in_lista lst = function
  Tr(x,[]) -> List.mem x lst
  | Tr(x, lista) -> List.for_all (foglie_in_lista lst) lista;;


let rec num_foglie = function
  Tr(x, []) -> 1
  | Tr(x, lista) -> List.fold_left (fun acc y -> acc + num_foglie y) 0 lista;;

let rec lista_guida lista = function
  Tr(n, list) -> match lista with
                [] -> n
                | x::xs -> lista_guida xs (List.nth list x);;


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


