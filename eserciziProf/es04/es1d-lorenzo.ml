let rec drop n lista = match (n, lista) with
  | (0, _) -> lista
  | (_, []) -> lista
  | (_, _) -> drop (n-1) (List.tl lista);;
