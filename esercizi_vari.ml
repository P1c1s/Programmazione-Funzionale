let ultime_cifre x = ((abs x mod 100)/10, abs x mod 10);;

let bello x = match abs x mod 10 with
| 0 | 3 | 7 -> if (abs x mod 100)/10 <> 0 &&  (abs x mod 100)/10 <> 3 && (abs x mod 100)/10 <> 7 then true else false
| _ -> false ;;

let bello x = match abs x mod 10 with
| 0 | 3 | 7 -> let y = (abs x mod 100)/10 in 
  match y with
  | 0 | 3 | 7 -> false
  | _ -> true
| _ -> false ;;

let bello x = match abs x mod 10 with
| 0 | 3 | 7 -> ( match (abs x mod 100)/10 with
  |0 | 3 | 7 ->(x<10)
  | _ -> true
  )
| _ -> false ;;

let data (d, m) = match (d, m) with
| (_,"gennaio") | (_, "") -> d <= 31
| (_, "febbraio") -> d<=28
| (_, "aprile") | (_, "giugno") | (_, "settembre") | (_, "novembre") -> d <= 30
| (_, _) -> false;;

let data (d, m) = match m with
| "gennaio"| "marzo" | "maggio" | "luglio" | "agosto" | "ottobre" | "dicembre" -> d <= 31 && d>0
| "febbraio" -> d<=28 && d>0
| "aprile" | "giugno" | "settembre" | "novembre" -> d <= 30 && d>0
|  _ -> false;;


let data (d, m) = (match m with
| "gennaio"| "marzo" | "maggio" | "luglio" | "agosto" | "ottobre" | "dicembre" -> d <= 31
| "febbraio" -> d<=28
| "aprile" | "giugno" | "settembre" | "novembre" -> d <= 30
|  _ -> false) && d>=1;;