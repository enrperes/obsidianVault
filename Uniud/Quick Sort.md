```clike
QuickSort(A, p, q){
	if (p < q){
		r = Partition(A, p, q)
		QuickSort(A, p, r-1)
		QuickSort(A, r+1, q)
	}
}
 
Partition(A, p, q){
	x = A[q]
	i = p-1
	for(j = p to q){
		if(A[j] <= x){
		i ++
		swap(A, i, j)
		}
	}
}
```

### Complessità 
- Caso peggiore: $\Large \Theta(n^2)$, con $m = 0$
- Caso migliore/medio: $\Large \Theta(n \;\;log \;\;n)$, con $\large m = \frac n 2$ 


