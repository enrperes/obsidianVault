3 versioni del programma LIS, prima con ricorsione classica, poi Top-down e infinie bottom-up. 

### Ricorsione classica
- Funzione ricorsiva che segue la definizione matematica del problema. 
- Spesso genera molte chiamate duplicate sugli stessi sottoproblemi
- La struttura di supporto è il call stack stesso 

### Top-down con memoization 
- Tecnica base uguale a quella della ricorsione con aggiunta di una tabella di memoizzazione (array o matrice) che salva i risultati già calcolati 
- Prima di calcolare un sottoproblema si controlla se è già stato calcolato, in caso viene restituito subito senza ricalcolare. 
- Come strutture di supporto ci sono tipicamente array 

Tecnica applicata a LIS I parte 2

### Bottom-up iterativa
- Tecnica base: la tabella viene riempita iterativamente partendo "dal basso", i casi più semplici. 

> [!example]+  **Spiegazione**
> 2 modi di affrontare LIS: 
> il primo è con approccio top-down. Viene scritta la ricorsione in modo naturale e ad ogni passo si decide se prendere o saltare l'elemento corrente. La funzione riceve i parametri i e j, l'indice corrente e l'indice dell'ultimo elemento preso. La ricorsione esplora entrambe le scelte e ritorna la migliore. 
> Viene usata la matrice `memo` per evitare ricalcoli e salvare i risultati per ogni stato. 
> 
> Il secondo approccio è bottom up, iterativo. Si parte dal caso base (quando l'array è finito con lunghezza = 0) e si riempie iterativamente la matrice. 
> Ogni cella rappresenta uno stato (i, j) e il suo valore dipende dagli stati già calcolati. 
> In pratica la logica è la stessa ma si inverte l'ordine dei calcoli. 
> 
> Una volta calcolata la matrice con LLIS, per avere LIS basta seguire la tabella: 
> - si parte dallo stato iniziale (0, n). In ogni cella si guarda come è stato ottenuto il valore: se è uguale a `mem[i+1][j]` equivale a `skip`, se è uguale a `1+mem[i+1][i]` allora equivale a `take`:  si aggiunge l'elemento a LIS e si sposta in diagonale. 
> Si continua così fino in fondo. 


# LIS I
Problema: calcolare la lunghezza della Longest Increasing Subsequence di una sequenza di interi s. 
Il metodo ricorsivo ricalcola spesso gli stessi sottoproblemi e ha complessità esponenziale. 

### Parte 1
Si basa sull'ipotesi che tutti gli elementi della sequenza s siano compresi tra $1$ e $n$, con $n=s.length$ 

Il parametro $t$ varia solo in `[0...n]` quindi si crea una tabella `memo[i][t]` per memoizzare i risultati calcolati. 

### Parte 2
Quando i valori di s possono essere molto grandi $\Large \to$ non si può usare t come indice di array. 
**Idea**: 
stato = coppia (i, j) dove 
- i = posizione corrente indice
- j = indice ultimo elemento preso. Se non è ancora stato preso, j = n. 
Tabella memo salva la miglior lunghezza ottenibile considerando gli indici da i in poi quando l'ultimo preso è j. 

Nel passaggio ricorsivo ci sono due casi: 
1. Saltare `s[i]` 
	1. Non cambia l'ultimo preso
2. Prendere `s[i]` se è valido (quindi maggiore del precedenet) 

Caso base: quando i == n non ci sono più elementi 



# LIS 2
Bottom-up iterativo compilando una matrice $(n+1)(n+1)$ 
- colonne: doce della sequenza partendo da i
- Righe: indice

I casi in cui $j>i$ non sono rilevanti 

PDF:
![[Pasted image 20250830154704.png#invert|center|500]]
Ogni nodo corrisponde a uno stato (i, j) 
gli archi rossi corrisponderebbero alle chiamate ricorsive in `llisRec` 
Arco va a destra: skip
Arco va in diagonale: take


