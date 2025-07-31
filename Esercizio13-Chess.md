### Parte 1
Modifica della classe Board utulizzando un'istanza di `SList<SList<Integer>>` per rappresentare le coppie di coordinate in cui sono collocate le regine. 
(lista di liste di due interi)


`numberOfCompletions(BoardListe b)` = funzione ricorsiva che calcola quanti completamenti validi esistono a paritre dalla configurazione parziale b.
Caso base: ci sono `n` regine, ritorna 1
Altrimenti: prova a mettere una regina su ogni colonna della prossima riga (`i = q + 1` ) e per ogni posizione sicura (`if !sottoAttacco` ) continua ricorsivamente. 
= backtracking

`numberOfSolutions(int n)` = funzione pubblica che lancia il processo partendo da una scacchiera vuota. 

### Parte 2
