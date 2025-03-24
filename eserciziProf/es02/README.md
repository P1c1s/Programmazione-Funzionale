# Esercizi Proposti - 2

Questo repository contiene la soluzione a una serie di esercizi di programmazione in OCaml. Gli esercizi sono stati progettati per migliorare la comprensione delle funzioni e delle strutture di controllo in OCaml.

## Indicazioni Generali

Si prega di tenere presente le seguenti indicazioni durante la risoluzione degli esercizi:

- Evitare di fare un cut and paste della modalità interattiva di OCaml. Riportare il codice in un formato che possa essere caricato da OCaml con la direttiva `#use`.
- Le funzioni devono essere definite prima di essere utilizzate.
- Ogni funzione ausiliaria deve avere una specifica dichiarativa che descriva cosa calcola e il tipo.
- Curare l'indentazione del codice.
- Evitare di definire funzioni equivalenti a funzioni predefinite in OCaml.

## Esercizi

### 1. Funzione `ultime_cifre`

Definire una funzione `ultime_cifre: int -> int * int` che restituisce le due ultime cifre di un intero. 

#### Esempi:
```ocaml
ultime_cifre 245  (* restituisce (4, 5) *)
ultime_cifre 5    (* restituisce (0, 5) *)
ultime_cifre (-245) (* restituisce (4, 5) *)
ultime_cifre (-5)   (* restituisce (0, 5) *)
```

La funzione non deve mai sollevare eccezioni, ma riportare sempre una coppia di interi.
Si cerchi di fornire una soluzione semplice, che operi direttamente su numero, anziché passare per la sua rappresentazione come stringa. Si ricordi che n/m e’ il risultato della divisione intera, `n mod m` il modulo, e
abs n il valore assoluto.


### 2. Funzione `bello`
Una cifra è bella se è 0, 3, 7; un numero è bello se la sua ultima cifra è bella
e la penultima (se esiste) non lo è. Quindi in particolare le cifre belle sono
numeri belli. Definire un predicato bello: int -> bool che determini
se un numero è bello. La funzione non deve mai sollevare eccezioni, ma
riportare sempre un bool.

#### 3. Funzione `data`
string -> bool, che, applicata a una coppia (d,m), dove d è un intero e
m una stringa, determini se la coppia rappresenta una data corretta, assu-
mendo che l’anno non sia bisestile. Si assume che i mesi siano rappresentati
da stringhe con caratteri minuscoli ("gennaio", "febbraio",. . . ).
La funzione non deve mai sollevare eccezioni, ma riportare sempre un
bool.