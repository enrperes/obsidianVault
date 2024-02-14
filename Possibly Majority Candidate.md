---
aliases:
  - PMC
  - Candidate
---
> Dato A determinare se esiste $x \in A$ che compare più di $\frac{n}{2}$ volte. 

## Soluzione 1
Se A è ordinato e X esiste, sicuramente il mediano = X
Ma questa soluzione non è in place. 

## Soluzione 2
1. Let `candidate` = 0
2. Scan A 
	1. If `A[i]` $\neq$ `candidate` -> decrement `count`
	2. If `A[i]` $=$ candidate -> increment `count`
	3. If `count` $=$ 0 -> update `candidate` to `A[i]`

```clike
MajorityCandidate(A){
	count = 0
	for (i=0 to A.length){
		if(count = 0)
			candidate = A[i]
	} else {
		if(A[i] = candidate)
			count ++
		else 
			count --
	}
	return candidate
}
```

$$
\begin{align}
\Large \Theta(n) &   \\ \\
\text{(In-Place)}
\end{align}
$$