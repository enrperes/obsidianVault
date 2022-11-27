```scheme
(define giustapposizione ; val: lista
  (lambda (ls1 ls2)      ; ls1, ls2: liste
   (cond ((null? ls1)
          X)
          ((null? ls2)
          ls1)
          (else
	        (cons (car ls1) (giustapposizione (cdr ls1) ls2))
	        ))
  ))
```


`(giustapposizione '(1 2 3) '(4 5 6 7 8) )`
=> `(list 1 2 3 4 5 6 7 8)`