(*Funzione ultime_cifre: restituisce le ultime due cifre di n in una coppia*)
let ultime_cifre n = ((abs((n/10) mod 10)), abs(n mod 10));;