## (define)
Per definire le procedure. 

```scheme
 
(define supCilindro 
	(lambda (r h)  ; introduzione variabili r, h. Numeri reali. 
		(* (* 2 3.14 r) (+ r h))
    )
)

(supCilindro 5 11.8) ; ->  527.00
```

