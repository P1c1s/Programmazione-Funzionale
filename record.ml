type persona = {nome : string; cognome : string; eta: int};;

let mario = {nome = "Mario"; cognome = "Filini"; eta = 25};;

Printf.printf "nome: %s\ncognome: %s\netà: %d\n" mario.nome mario.cognome mario.eta;;