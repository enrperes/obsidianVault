Ipotesi: 
> Vettore A di numeri $\in \mathbb{R}\text{ in }[0,1[$ distribuiti uniformemente. 

Gli elementi di A sono ottenuti estraendo dall'intervallo [0, 1] con distribuzione uniforme. 

###  Procedimento 
Step 1
1. Si crea un vettore ausiliario C (bucket array) della stessa dimensione di A.
2. Si moltiplica l'elemento per la dimensione di C e si converte il risultato in intero. 
3. Si inserisce l'elemento nel bucket corrispondente all'indice calcolato 
4. Repeat for each element in A. 

Step 2 
1. Ordinare gli elementi dentro ogni bucket (qualsiasi algoritmo di ordinamento)
2. In media vengono ordinate $\Theta(n) \cdot \Theta(1)$ liste -> quindi la complessità media è $\Theta(n)$, se A ha distribuzione uniforme. Il caso peggiore è dato dall'algoritmo di ordinamento scelto, quindi $\Theta(n^{2})$ per insertion sort.
![[Pasted image 20240212181516.png|200]]
Step 3
- Dove inserire A[i]?
- `insertList(C[A[i]-n], A[i])`
- ![[Pasted image 20240212181604.png|300]]

The array is now sorted. 

> [!attention]- Code 
> 
> ```clike 
> bucketSort(A, n){
> 	let B[0:n-1] // new array, same dimension as A
> 	for(i=0 to n-1){
> 		make B[i] an empty list 
> 	}
> 	for(i=1 to n){
> 		insert A[i] into list B[n*A[i]] // parte intera inferiore 
> 	}
> 	for (i=0 to n-1){
> 		sort list B[i] // insertion sort 
> 	}
> 	concatenate the lists B[i] together in order 
> 	return concatenated lists
> }
> ```