> Dato un vettore A trova l'elemento che finirebbe in posizione i-esima se A fosse ordinato 

Ordinando il vettore la complessità sarebbe $\Large \Omega(n \log n)$
Usando Partition, senza ordinare, $\Large O(n)$

Alcuni casi particolari: 
- i=1 -> trova il minimo 
- i=n -> trova il massimo 
- i = 5 -> trova il minimo per 5 volte 

## Prima soluzione: quasiSelect

Sfruttando partition, si costruisce questa soluzione: 
```clike
quasiSelect(A, p, q){
	if(p=q): return A[p]
	else{
		r = partition(A, p, q)
		if (i=r): return A[r]
		if (i<r): return quasiSelect(A, p, r-1, i)
		if (i>r): return quasiSelect(A, r+1, q, i)
	}
}
```

Il problema è che partition usa come pivot l'ultimo elemento del vettore passatogli come argomento. Quindi non è detto che sia il mediano, la chiamata successiva potrebbe avvenire al massimo su n-1 elementi



## Ottimizzazione di quasiSelect

1. Si divide A il blocchetti da 5 elementi 
2. Per ogni blocchetto si trova il mediano e si copia in B, array ausiliario
3. Si trova il mediano di B (il mediano dei mediani) -> M
4. Si usa M come pivot per il partition

```clike
Select(A, p, q){
	if(p=q): return A[p]
	else{
		M = findMedian(A, p, q) // And copy in in B[i]
		swap(A, M, q)
		r = partition(A, p, q)
		if (i=r): return A[r]
		if (i<r): return quasiSelect(A, p, r-1, i)
		if (i>r): return quasiSelect(A, r+1, q, i)
	}
}
```

# Complessità




$$
    f_{X}(x; x_{1}, \dots, x_{n})=\left\{
    \begin{array}{rrr}
     \frac{1}{n} & \text{se} & x=x_{1}, \dots, x_{n}\\ \\
     0 & &\text{altrimenti}\\
    \end{array}\right.
$$
 