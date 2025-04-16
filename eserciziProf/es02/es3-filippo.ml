(*Funzione data: verifica che la coppia giorno-mese esista*)
let data (d, m) =
  match m with
  "aprile" | "giugno" | "settembre" | "novembre" -> d>0 && d<=30
  | "febbraio" -> d>0 && d<=28
  | "gennaio" | "marzo" | "maggio" | "giugno" | "luglio" | "agosto" | "ottobre" | "dicembre" -> d>0 && d<=31
  | _ -> false;;