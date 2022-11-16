## `(string-append)`
Utilizzato per giustapporre due stringhe.

```scheme
(string-append "ciao" "o") ; "ciaoo"
```

## `(string-length)`
Calcola la lunghezza di una stringa (**partendo da 1**)

```scheme
(string-length "0123")  ; 4
(string-append (substring "protiro" 0 (-(string-length "protiro")1))"i")  ; "protiri"
```

## `(substring)` 
Crea una sottostringa. I due parametri indicano il carattere di partenza e di fine. 

```scheme
(substring "ciao" 2 3)      ; "a"
(substring "1234" 0 3)      ; "123"
(substring "123456789" 4 7) ;"567"
```

## `(string=?)`
Confronta due stringhe e ritorna `true` o `false` . 
```scheme
(define femm?
	(lambda (s)
	(string=? (substring s (-(string-lenght s) 1)) "a") ; confronta l'ultima lettera della stringa *s* con "a"
	)  
)
```
## `(char=?)` 
Confronta dua caratteri. 

## `(string-ref)`
Serve ad estrarre un preciso carattere. I caratteri vengono identificati con `#\a` con `a` = carattere. 
```scheme
(define femm?
	 (lambda (s)
		 (char=? (string-ref "ciao" (- (string-length "ciao") 1)) #\a) ; false: "o" != "a"
	 ) 
)
```