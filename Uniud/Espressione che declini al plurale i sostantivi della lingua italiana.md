###### Espressione che declini al plurale i sostantivi della lingua italiana

![[CDC7862B-31FD-43B0-89EC-651EA7689808.png|400]]

```scheme
(string-append (substring "protiro" 0 (- (string-lenght "protiro") 1)) "i")
```

```scheme
(define) plurale
	(lambda (sm)
		(string-append (substring sm 0 (- (string-length sm) 1)) "i")
	)
```


string-append ha 2 argomenti
Substring ha 3 argomenti: Stinga; a partire dal carattere n; 
