Obiettivo: integrare il programma delle N regine con una GUI per visualizzare tutte le configurazioni (soluzioni) su una scacchiera
Viene fornito un package `queens.jar` che contiene la classe ChessboardView

### Classe `Board` 
 dato astratto che rappresenta una configurazione nella scacchiera.
- dimensione n
- quante regine sono già state posizionate
- coordinate delle regine (lista di coppie SList)
- stringa in notazione scacchistica
Metodi principali: 
- `underAttack(i, j)`
- `addQueen` crea una nuova scacchiera con una regina in più
- `arrangement()` restituisce la stringa in n. scacchistica. 

### Classe `Queens` 
Contiene gli algoritmi che usano Board
la parte 1 calcola il **numero** di soluzioni con backtracking
parte 2 costruisce la lista di tutte le soluzioni (`listofCompletions`) e le mosstra con la GUI 
Nel main viene preso n e viene stampato il numero di soluzioni + la finestra per visualizzarle. 

Ogni volta che l'algoritmo prova a mettere una regina viene fatta una richiesta a `Board` se quella casella è libera con `underAttack()`. Se libera viene creata una nuova Board con `addQueen`. Alla fine 


### Parte 1 - SList
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

(Quindi viene riscritta la classe Board)

`numberOfCompletions(BoardListe b)` = funzione ricorsiva che calcola quanti completamenti validi esistono a paritre dalla configurazione parziale b.
Caso base: ci sono `n` regine, ritorna 1
Altrimenti: prova a mettere una regina su ogni colonna della prossima riga (`i = q + 1` ) e per ogni posizione sicura (`if !sottoAttacco` ) continua ricorsivamente. 
= backtracking

`numberOfSolutions(int n)` = funzione pubblica che lancia il processo partendo da una scacchiera vuota. 

### Parte 2 - GUI

`listofSolutions` costruice la lista di soluzioni con `listofCompletions` 
`listofCompletions`:
Caso base: ritorna una lista con un solo elmento 
Caso ricorsivo: accumula le liste restituite con `addQueen` che non sono sotto attacco 

`gui(boardList)` crea una sola GUI: `new ChessboardView(n)`, cicla sulla lista e chiama `view.setQueen()` per ogni soluzione. La chiamata successiva rimane bloccata finché non viene cliccata la scacchiera. 
