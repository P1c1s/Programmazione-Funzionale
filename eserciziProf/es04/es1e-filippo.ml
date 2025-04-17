(*Funzione append*)
let append l1 l2 =
  let rec reverse l1 acc =  (*funzione per invertire l1*)
    match l1 with
    [] ->
      let rec merge acc l2 =  (*l1 vuota o acc riempito con reverse, nel secondo caso unisco acc e l2*)
        match acc with
        [] -> l2
        | ac1::acs -> merge acs (ac1::l2)
      in merge acc l2
    | x1::xs1 -> reverse xs1 (x1::acc)  (*l1 non vuota, riempio acc con l1 invertito*)
  in reverse l1 []
;;