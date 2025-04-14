exception NoInput

let read_max_min m = 
  try 
  with _ -> raise NoInput