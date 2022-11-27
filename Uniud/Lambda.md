

Permette di effettuare una **Astrazione procedurale.** 
`(lambda)`  quindi definisce le variabili. 

```scheme
(define sup-tot-cil
	(lambda (r h)  ; r e h sono due variabili generali che individuano raggio e altezza del cilindro
		(*(*(* 2 3.1415)r)(+ r h))
	)  
)
```

