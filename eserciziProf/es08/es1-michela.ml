type expr = Int of int
            | Var of String
            | Sum of expr * expr
            | Diff of expr * expr
            | Mult of expr * expr
            | Div of expr * expr;;

let subexpr e1 e2 = match e1 with 
  Int _ | Var _ -> e1 = e2
  | Sum(e_1, e_2) | Diff(e_1, e_2) | Mult(e_1, e_2) | Div (e_1, e_2) -> e1 = e2|| subexpr e_1 e2 || subexpr e1 e_2;;


let rec subst_in_expr e1 s e2 = match e1 with 
  Var s -> e2
  | Int _ -> e1
  | Sum(e_1, e_2) -> Sum(subst_in_expr e_1 s e2, subst_in_expr e_2 s e_2)
  | Diff(e_1, e_2) -> Diff(subst_in_expr e_1 s e2, subst_in_expr e_2 s e2)
  | Mult(e_1, e_2) -> Mult(subst_in_expr e_1 s e2, subst_in_expr e_2 s e2)
  | Div(e_1, e_2) -> Div(subst_in_expr e_1 s e2, subst_in_expr e_2 s e2);;
