
Definisce (dare un nome) alle procedure 

```scheme
 
(define sup-tot-cil ; rinominazione procedura come "sup-tot-cil" 
	(lambda (r h)   ; introduzione variabili r, h. Numeri reali. 
		(* (* 2 3.14 r) (+ r h))
    )
)

(sup-tot-cil 5 11.8) ; ->  527.00
```

