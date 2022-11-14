```scheme
(define rvrs
  (lambda ls)
  (if (null? ls)
  null
  (append (rivers (cdr ls)) (cons (car ls) null))
  )
))
```

(rvrs '(1 2 3 4))
=> (list 4 3 2 1 )

Soluzione molto inefficiente. Una proposta più efficiente: 

```scheme
(define rovescio
  (lambda (ls rv)
   (if (null? ls)
   rv
   (rovescio-rec (cdr ls)(cons (car ls)rv))
   )
  ))
```