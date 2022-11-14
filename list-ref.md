**list-ref**

```scheme
(define lista-ref  ; val: ...(elemento in posizione k)
  (lambda (ls k)
    if (= k 0)
	    (car ls)
	    (lista-ref (cdr ls)(- k 1))
	    )
))
```

Elemento in posizione k di una lista. 

`(lista-ref '(1 2 3 4 5 ) 2)` => 3