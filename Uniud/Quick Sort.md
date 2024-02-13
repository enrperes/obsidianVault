Divide and conquer sorting algorithm with complexity of $\Large O(n\log n)$, so highly efficient. 
![[Pasted image 20240207123002.png#invert| center |500]]
Partitioning 
> [!example] Divide
> Partitioning the array `a[p:q]` into two sub arrays `a[p, r-1]` and `a[r+1, q]` such that each element in the low side is **less than or equal to** the *pivot* `a[r]`, which is $\large \leq$ than each element in the high side. 

> [!example] Conquer
> Call `quicksort` recursively to sort each sub array 

> [!example]+ Combine 
> by doing.. nothing. Because the two sub arrays are already sorted. 

> [!quote] Pseudocode
> 
> ```clike 
> // sort subarray A from index p to r.
> quicksort(A, p, q){
> 	if p < r: // base case. Subarray has at least 2 elements, p<r
> 		//partition the sub array around the pivot
> 		q = partition(A, p, q) // partition the subarray around a pivot. 
> 		quicksort(a, p, r-1) // sort the left subarray
> 		quicksort(a, r+1, q) // sort the right subarray 
> }
> 
> // Partitions the subarray A from p to r around a pivot. Returns the index of the pivot element after partitioning. 
> partition(A, p, q){
> 	x = A[q]                     // the pivot 
> 	i = p-1                      // Highest index in the low side
> 	for(j = p to q-1){           // Process each element other than the pivot
> 		if(A[j] <= x){           // Does this element belong in the low side? 
> 			i++                  // index of a new slot in the low side
> 			swap(A[i], A[j])     // Put the element there
> 		}             
> 	}
> 	swap(A[i+1], A[q])           // Pivot goes to the right of the low side 
> 	return i + 1                 // New index of the pivot 
> }
> ```



### Complessità 
- Caso peggiore: $\Large \Theta(n^2)$, con $m = 0$
- Caso migliore/medio: $\Large \Theta(n \;\;log \;\;n)$, con $\large m = \frac n 2$ 

Unlike merge sort, sorts ==in-place==. 




```clike
// no corecto 

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
	swap(A[i+1], A[q])
}
```

## Partition 
At the beginning of each iteration of the 


---
