#### Generalizzazione del plurale 

Data una parola al singolare, il programma la declina al plurale controllando se è un sostantivo maschile o femminile. 
```scheme

(define femm?
  (lambda (s)
    (string=? (substring s (- (string-length s) 1)) "a")
    )
  )

(define plurale-f
  (lambda (s)
    (string-append (substring s 0 (- (string-length s) 1)) "e")
    )
  )

(define plurale-m
  (lambda (s)
    (string-append (substring s 0 (- (string-length s) 1)) "i")
    )
  )

(define plurale
  (lambda (s) ; s: string
    (if (femm? s)
        (plurale-f s)
        (plurale-m s)
        )
    )
  )
```
