##### Procedura per verificare se parola è maschile o femminile 

https://replit.com/@enrperes/ProceduralAbstraction#main.scm
 ```scheme
 
 (define femminile ;val: bool
	 (lambda (s)
		 (string=? (substring s (-(string-length s) 1)) "a")
	 )
 )
```
Il secondo indice di substring si può omettere. 