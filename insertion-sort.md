![[insertion-sort.gif]]

> L'array viene diviso in due parti, di cui una è ordinata. 
> 1. Si parte dall'elemento con indice 2, da inserire nella parte ordinata. `key`
> 2. Si confronta con gli elementi della parte ordinata, partendo dall'ultimo
> 3. Quando `key` è minore di un elemento della parte ordinata, viene spostato a destra. 
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
$$\Large -2c + 4cn +7c (\frac{n + (n+1)}{2}) = \Theta(n^2)$$ (quadratica)

Questo vale **solo** per il caso peggiore, in cui $\Large t_1$ vale i (lista ordinata al contrario)
Per il caso **migliore** (quando $\Large t_1 = 1$ e quando la lista +è già ordinata) si ottiene $\LARGE \Theta (n)$ (linare)

## Verifica correttezza