Obiettivo: integrare il programma delle N regine con una GUI per visualizzare tutte le configurazioni (soluzioni) su una scacchiera
Viene fornito un package `queens.jar` che contiene la classe ChessboardView




### Parte 1
Modifica della classe Board utulizzando un'istanza di `SList<SList<Integer>>` per rappresentare le coppie di coordinate in cui sono collocate le regine. 

Prima venivano usate 4 liste di interi (rows, cols, diagAsc, diagDesc) per sapere quali righe, colonne e diagonali erano occupate. 
Ora le 4 liste vengono sostituite da una lista `SList<SList<Integer>>` dove: 
- ogni elemento della lista principale rappresenta una regina
- Ogni regina è a sua volta una lista di due interi `(i, j)` che le coordinate

Per una scacchiera 5×5 con tre regine in (4,5), (3,3), (1,4), la rappresentazione è:
`< 5 , 3 , ((4,5) , (3,3) , (1,4)) , " d1 c3 e4 " >`
 - 5 = dimensione della scacchiera
 - 3 = numero di regine presenti
 - `((4,5),(3,3),(1,4))` = lista di coppie intere
 - `d1 c3 e4` = rapp. in notazione scacchistica

#### Verificare se cella è minacciata
invece di guardare le 4 liste, adesso si scorre la lista di coppie (u, v). Una cella è minacciata quando: 
- i = u
- j = v
- i - j = u - v
- i + j = u + v

Quindi viene riscritta la classe Board 

`numberOfCompletions(BoardListe b)` = funzione ricorsiva che calcola quanti completamenti validi esistono a paritre dalla configurazione parziale b.
Caso base: ci sono `n` regine, ritorna 1
Altrimenti: prova a mettere una regina su ogni colonna della prossima riga (`i = q + 1` ) e per ogni posizione sicura (`if !sottoAttacco` ) continua ricorsivamente. 
= backtracking

`numberOfSolutions(int n)` = funzione pubblica che lancia il processo partendo da una scacchiera vuota. 

### Parte 2
