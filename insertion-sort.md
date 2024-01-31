![[insertion-sort.gif|200]]

**Input:** una sequenza di n numeri $a_{1}\dots a_{n}$
**Output:** una permutazione dell'input tale che $a_{1}<a_{2}<\dots<a_{n}$

> L'array viene diviso in due parti, di cui una è ordinata. 
> 1. Si parte dall'elemento con indice 2 (`key`), da inserire nella parte ordinata.
> 2. Si confronta con gli elementi della parte ordinata, partendo dall'ultimo elemento della parte ordinata.
> 3. Quando `key` è **minore** di un elemento della parte ordinata, viene spostato a destra. 
> 4. Si ripete con l'elemento successivo nella parte non ordinata, fino alla fine. 

```java
insertionSort(A){
	for(i=2 to A.length){
		key = A[i] // elemento da confrontare 
		j = i-1 // j = indice precedente a i
		while(j>0 && A[j]>key){ // continua a spostarsi a sinistra (nella parte ordinata) finchè j>0 e a[j] è maggiore dell'elemento da confrontare 
			A[j+1] = A[j] // sposta l'elemento maggiore a destra 
			j = j-1} // decremento j per continuare con gli elementi precedenti
		}
		A[j+1] = key // assegna key nel posto giusto 
}
```

Dopo `i` passi la parte ordinata è lunga `i-1`

## Complessità 
La costante di tempo $\Large c$ dipende dalla potenza del calcolatore.
Ad ogni operazione di base corrisponde un $\Large c$.



```java
insertionSort(A){
	for(i=2 to A.length){                   // 3c * n + 2c
		key = A[i]                          // c * n-1
		j = i-1                             // ...
		while(j>0 && A[j]>key){             
			A[j+1] = A[j] 
			j = j-1} 
		}
		A[j+1] = key 
}
```

Il ciclo `for` va da `i = 2` a `n`. Quindi `n` volte. 
Quante volte il ciclo while viene eseguito dipende da come è ordinato il vettore di input. Quindi dipende da un parametro $\Large t_1$.
Quindi per le tre istruzioni dentro al while, la complessità si calcola con: 
- $\Large 3c \sum_{i=2}^{n} ti$
- $\Large 2c \sum_{i=2}^{n}(t_1 -1)$
- $\Large 2c \sum_{i=2}^{n}(t_1 -1)$

Sommando tutto e semplificando, si ottiene: 
$$T(n) = \Large -2c + 4cn +7c (\frac{n + (n+1)}{2}) = \Theta(n^2)$$ (quadratica)

Questo vale **solo** per il caso peggiore, in cui $\Large t_1$ vale i (lista ordinata al contrario)
Per il caso **migliore** (quando $\Large t_1 = 1$ e quando la lista +è già ordinata) si ottiene $\LARGE \Theta (n)$ (lineare)

## Verifica correttezza

- Inizializzazione:
	- inizialmente, $i=2$. Il subarray dato da $A[1\dots i-1]$ è quindi formato da un elemento, ed è ordinato. 
- Conservazione:
	- (dimostrazione informale, in quanto una formale richiederebbe la definizione di invariante per il ciclo while)
	- Sappiamo che il subarray $A[1\dots i-1]$ è ordinato. 
	- Il ciclo while sposta tutti gli elementi maggiori di $A[j]$ fino a una posizione $key$ di una posizione verso destra, preservandone l'ordine e duplicando il valore in posizione $key$. 
	- Tutti i valori precedenti a $key$ sono quindi maggiori di $A[j]$ e ordinati. 
	- Inserendo $A[j]$ in posizione $key$ l'invariante viene dimostrata. 
- Terminazione:
		- Alla fine del ciclo, quando $i = n+1$, l'invariante dice che l'intero array $A[1\dots j-1] = A[1\dots n]$ è ordinato.  

(File ASD-es pag 9)