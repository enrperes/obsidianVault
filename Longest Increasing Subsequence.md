# LIS I
Problema: calcolare la lunghezza della Longest Increasing Subsequence di una sequenza di interi s. 

Il metodo ricorsivo ricalcola spesso gli stessi sottoproblemi e ha complessità esponenziale. 

### Parte 1
Si basa sull'ipotesi che tutti gli elementi della sequenza s siano compresi tra $1$ e $n$, con $n=s.length$ 

Il parametro $t$ varia solo in `[0...n]` quindi si crea una tabella `memo[i][t]` per memoizzare i risultati calcolati. 

### Parte 2
Quando i valori di s possono essere molto grandi $\Large \to$ non si può usare t come indice di array. 
**Idea**: 
Rappresentare t indirettamente tramite indice j
Quindi non vengono usati direttamente i valori numerici di t, ma solo indici. 
