---
aliases:
  - Heap
  - Binary Tree
---
Albero binario quasi completo, può essere MinHeap o MaxHeap a seconda della Heap property che rispetta. 

### Procedure
- Heapify 
- BuildMaxHeap
- HeapSort
- Insert, Extract, Increase, Max, Min

#### Heapify 
Mantiene la proprietà di heap nell'albero dopo un'operazione. 
```clike
maxHeapify(A, i){
	L = left(i), R = right(i) // find left and right children
	// identify the biggest node among i, L, R.
	if (L <= A.heapSize and A[L]>A[R]) 
		largest = L
	else 
		largest = i
	if (R <= A.heapSize and A[R] > A[largest])
		largest = R
	// If the biggest is not the current root, swap it with the current root and repeat recursively. 
	if (largest != i)
		swap(A[i], A[largest])
		maxHeapify(A, largest)
}
```

#### Build Heap
```clike
buildHeap(A,n)
	A.heapSize = n
	for (i = n/2 down to 1) // iterates from the middle element to the first. ensures that elements only get heapified if they have children. Leaf nodes automatically fulfill the max heap property. 
		maxHeapify(A, i)
```

#### Insertion 
1. Chiave inserita in H.heapsize
2. Confrontata con il genitore
```clike
maxHeapInsert(A, k)
	if (A.heapSize < A.length){ // check if there is space to insert a new element
		A.heapSize = A.heapSize + 1 // increase heapsize to account for k being added
		A[A.heapSize] = k
		i = A.heapSize // so that A[i] = k
		while(A[i] > A[parent(i)]){
			swap(A, i, parent(i))
			i = parent(i)
		}
	}
```
The loop ends when A[i] is less than or equal to its parent, ensuring that max-heap property is satisfied.  

### HeapSort
```clike
HeapSort(A){
	buildHeap(A)
	for(i=A.length down to 2){
		swap(A, 1, i)
		A.heapsize = A.heapsize - 1
		Heapify(A, 1)
	}
}

```

1. Build the heap from the unsorted array A
2. Swap root with last element, placing the largest element at the end, where it should be. 
3. Reduce HeapSize by 1 to exclude the biggest element. 
4. MaxHeapify the remaining elements to restore the property. 

##### Complessità 
$$
\Large O(n \log n)
$$
Come heapify. 
Con heapify iterativo è **in-place**. 
**non stabile**: elementi ripetuti non mantengono lo stesso ordine di partenza. 

#####  Correttezza
> HeapSort(A) termina sempre e al termine A è ordinato. 

Invariante ciclo for (sapendo che buildHeap è corretto): 
- All'inizio dell'i-esima iterazione del ciclo for: 
- ![[Pasted image 20240207120241.png]]
- test

![[Pasted image 20240207120512.png]]