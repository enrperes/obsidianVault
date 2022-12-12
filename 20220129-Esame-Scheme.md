![[Pasted image 20221212114436.png]]

```scheme
(define pair    ;val: lista di caratteri, 2 elementi
  (lambda (x y) ;x, y: caratteri
    (if (char<? y x)
        (list y x)
        (list x y)
        )
    )
  )
```
`char<?` confronta il numero del codice ASCII del carattere 


> **1.2** Utilizzando `pair` definisci in Scheme la procedura `pair-list` (utilizzando la ricorsione)
```scheme
(define pair-list
  (lambda (u v)
    (if (null? u)
        null
        (cons (pair (car u) (car v)) (pair-list (cdr u) (cdr v))
              )
        )
    )
  )
```


