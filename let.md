`(let [*definition...*] expression)`

> Usato per definire una variabile, associa un valore ad un simbolo. 
#### Distinzione tra `(let)` e `(define)`: 
- `(define)` è un'associazione permanente. `(define k 0)` fa diventare k una costante, non restituisce alcun valore. 
- `(let)` definisce un'espressione (che ha valore solo dentro le parentesi) e, essendo un'espressione, assume un valore. 

```scheme
	(let ((k (quotient (string-length seq) 2)) ; definisce k come indice della posizione intermedia 
	  ))

(let ((k 1)) (+ k 2)) ; 3
```

Si aprono sempre almeno due parentesi perchè c'è sempre un'associazione.