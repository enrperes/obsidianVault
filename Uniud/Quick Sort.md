Divide and conquer sorting algorithm with complexity of $\Large O(n\log n)$, so highly efficient. 
> [!example] Divide
> Partitioning the array `a[p:r]` into two sub arrays `a[p, q-1]` and `a[q+1, r]` such that each element in the low side is **less than or equal to** the *pivot* `a[q]`, which is $\large \leq$ than each element in the high side. 

> [!example] Conquer
> Call `quicksort` recursively to sort each sub array 

> [!example]+ Combine 
> by doing.. nothing. Because the two sub arrays are already sorted. 

> [!quote]- Pseudocode
> 
> ```clike 
> quicksort(A, p, r){
> 	if p<r:
> 		//partition the sub array around the pivot
> 		q = partition(A, p, r)
> 		quicksort(a, p, q-1)
> 		quicksort(a, q+1, r)
> }
> partition(A, p, q){
> 	x = A[q]
> 	i = p-1
> 	for(j = p to q){
> 		if(A[j] <= x){
> 			i++
> 			swap(A, i, j)
> 		}
> 	}
> }
> ```
> 

### Complessità 
- Caso peggiore: $\Large \Theta(n^2)$, con $m = 0$
- Caso migliore/medio: $\Large \Theta(n \;\;log \;\;n)$, con $\large m = \frac n 2$ 

Unlike merge sort, sorts ==in-place==. 




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

## Partition 
At the beginning of each iteration of the 

