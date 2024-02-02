Ricorsivo 
![[Pasted image 20240202113704.png#invert|400]]
Fino ad arrivare a vettori da un elemento. 
Per unire i due subarray ordinati si usa la procedura `merge(A, p, r, q)`. 
Vengono effettuati circa n confronti, quindi la complessità di merge è $\Large \Theta(n)$. L'idea di merge si basa su: 
- Copiare temporaneamente `A[p:r] e A[r+1:q]` in due array L e R, poi unirli in `A[p:q]`. 

> [!attention]- Code
> ```clike 
> mergesort(A, p, q){
> 	if (p<q){
> 		r = (p+q)/2
> 		mergesort(A, p, r)
> 		mergesort(A, r+1, q)
> 		merge(A, p, r, q)
> 	}
> }
> 
> 
> // input: A[p:q], A[r+1:q] entrambi ordinati 
> // output: A[p:q] ordinato 
> merge(A, p, r, q){
> 	nL = r-p+1 // length of A[p:r]
>  	nR = q-r // length of A[r+1: q]
>  	L[1:nL], R[1:nR] // initialize two arrays
>  	for(i=1 to nL){
> 	 	L[i] = A[p-1 +i]
>  	}
>  	for(j=1 to nR){
> 	 	R[j] = A[r+j-1]
>  	}
>  	i = 1, j = 1, k = p
>  	while(i<nL and j<nR){
> 	 	if L[i] <= R[j]{
> 		 	A[k] = L[i]
> 		 	i++
> 	 	} else {
> 		 	A[k] = R[j]
> 		 	j++
> 	 	}
> 	 	k++
>  	}
>  	while(i<nL){
> 	 	A[k] = L[i]
> 	 	i++, k++
>  	}
>  	while(j<nR){
> 	 	A[k] = R[j]
> 	 	j++, k++
>  	}
> }
> ```

### Correttezza
> MergeSort termina sempre con A[p:q] ordinato. 

Dimostrazione su $\Large n = q-p+1$ = lunghezza porzione da ordinare. 
BASE: n=1 --> A[p:q] ha un solo elemento, quindi è ordinato. 
HPind: Mergesort(A, p, q) termina con A[p:q] ordinato se $\Large q-p+1<n$
TSind: Mergesort(A, p, q) termina con A[p:q] ordinato se $\Large q-p+1 =n$

####  Dimostrazione: 
(guardando il codide)
Siamo fuori dal caso base quindi n>1, si entra nel corpo dell'if, viene calcolato $\Large r$. 
- `mergesort(A, p, r)`sapendo che $\Large r-p+1 < q-p+1=n$ per ipotesi induttiva termina con A[p:r] ordinato. 
- `mergesort(A, r+1, q)` sapendo che $\Large q-(r+1)+1<q-p+1=n$ per ipotesi induttiva di nuovo termina con A[r+1, q] ordinato. 

Si sono verificate quindi le due condizioni necessarie per la funzione `merge()`, che è corretta, quindi la procedura `mergesort()` è corretta. 

### Complessità 
$$
\Huge
\Theta(n \log n)
$$$

