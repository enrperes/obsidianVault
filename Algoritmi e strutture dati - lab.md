# TEST PASSED? 
- [x] 1
- [x] 2
- [x] 3
- [x] 4
- [x] 5
- [x] 6
- [x] 7
- [x] 8 
- [x] 9 Fatto in $O(n^{3})$. Da fare in $O(n)$. 
- [ ] 10 
- [ ] 11 **Majority element** (Programma che riceva in input array non ordinato di lunghezza $n$, con interi non necessariamente positivi. Output = elemento maggioritario, ovvero l'elemento che occorre un numero di volte $\Large > \frac{n}{2}$. Se tale elemento non esiste, stampa "No majority"
	- [ ] $O(n^{2})$
	- [ ] $O(n\log(n))$
	- [ ] $\Theta(n+k)$ nell'ipotesi aggiuntiva che tutti i valori dell'array siano nel range $[0,k]$. 
	- [ ] $\Theta(n)$ Senza alcuna ipotesi aggiuntiva
- [ ] **12** - Spiegato nella lezione di 29 novembre e 6 dicembre, da rivedere. 
- [x] 13 - (fatto solo quicksort) Tutti gli algoritmi di ordinamento. Implementare anche Quicksort_fast con complessità $O(n \log (m))$ con $n$ = lunghezza array e $m$ numero di valori distinti in esso.  
- [ ] 14 - Implementare una struttura dati min-heap, albero binario quasi completo in cui valore di un nodo è sempre minore o uguale ai valori dei figli. Programma interattivo: ad ogni iterazione deve essere possibile indicare un'operazione. 
	- [ ] `build x1, x2, x3, ...`
	- [ ] `length`
	- [ ] `getmin`
	- [ ] `extract`
	- [ ] `insert x`
	- [ ] `change i x` 
- [ ] 15 - Selezione: calcolare il k-esimo elemento più piccolo in un array dato ( senza ordinare il vettore prima, magari)
	- [ ] Per k volte: 
		- [ ] Estrarre il minimo dalla heap ausiliaria
		- [ ] Introdurre nuovi elementi, ovvero i figli della heap 
- [ ] [[Esercizio-16-ASD|16]]
- [ ] 17
- [ ] 18
---

# Progetto lab - Algoritmi di selezione
_spiegato lezione 6 dicembre_


```py
import time
start = time.monotonic() # tempo monotonico di sistema. Risoluzione = 1ms
algoritmo(a)
end = time.monotonic()
t = end - start
```

Per misurazioni più precise con algoritmi veloci si esegue l'algoritmo $n$ volte senza fermare il clock, dividendo poi per il $n$. 

![[Pasted image 20231206120333.png|800]]

$x$ = tempo di esecuzione da stimare  
$\tilde{x}$ = tempo misurato
$\Lambda$ = risoluzione del clock / errore osservato
$$
\Large
\begin{align}
|\tilde{x}-x| \leq \Delta   \\
\epsilon = \text{errore relativo} = \frac{\Delta}{x} < 0.001? 
\end{align}
$$