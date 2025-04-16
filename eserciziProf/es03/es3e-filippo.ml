(*Funzione maxstring*)
exception NoString
let maxstring s =
  if s = "" then raise NoString else
      let rec loop max i =
        if (i < String.length s) then 
          if (Char.code s.[i] > Char.code max) then loop s.[i] (i+1)
          else loop max (i+1)
        else max
      in loop s.[0] 0
;;