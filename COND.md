Usato per verificare più condizioni. Quando la prima condizione viene verificata, si esegue l'istruzione corrispondente. Se ci sono più condizioni che si verificano viene eseguita solo la prima istruzione. Se **nessuna** condizione è verificata c'è un errore. 
``else`` alla fine solo se nessuna condizione è verificata. 

```scheme
(cond ((= i 0)(path j k))
          ((= j 0)(path i k))
          ((= k 0)(path i j))
          (else (+ (path3d (- i 1) j k) (path3d i (- j 1) k) (path3d i j (- k 1)))
 ))
```

```scheme
(cond (("condizione")("istruzione"))
	  (("condizione")("istruzione"))
	  (("c")("i"))
	  (else ("istruzione"))
	  )
```

