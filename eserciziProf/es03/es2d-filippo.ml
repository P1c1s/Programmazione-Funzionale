(*Funzione occorre -> ricerca esistenziale (OR importante nella chiamata ricorsiva)*) 
let rec occorre n =
  try
    let s = read_int() in
    match s=n with
    false -> occorre n
    | _ -> occorre n || true
  with _ -> false
;;

let rec occorre n =
  try
    let s = read_int() in
    if s=n then (occorre n) || true
    else occorre n
  with _ -> false
;;