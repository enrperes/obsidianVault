````scheme
(define femm?
  (lambda (s); s: string
   (or
    (char=? (string-ref s (- (string-length s) 1)) #\e)
    (char=? (string-ref s (- (string-length s) 1)) #\a)
    )
   )
  )
(define singolare?
  (lambda (s)
    (or
     (char=? (string-ref s (- (string-length s) 1)) #\o)
     (char=? (string-ref s (- (string-length s) 1)) #\a)
     )
    )
   ) 
(define are?
  (lambda (v)
    (char=? (string-ref v (- (string-length v) 3)) #\a)
   )
  )
(define verboS
  (lambda (v)
  (if (are? v)
      (string-append (substring v 0 (-(string-length v) 3)) "a")
      (string-append (substring v 0 (-(string-length v) 3)) "e")
	 )
  )
) 
(define verboP
  (lambda (v)
  (if (are? v)
      (string-append (substring v 0 (-(string-length v) 3)) "ano")
      (string-append (substring v 0 (-(string-length v) 3)) "ono")
     )
  )
)

(define verbo
  (lambda (s v)
    (if (singolare? s)
     (verboS v)
     (verboP v)
	    )
	)
)

(define artS
  (lambda (s)
    (if (femm? s)
        (string-append " la " s " ")
        (string-append " il " s " ")
	 )
	)
  )
  
(define artP
  (lambda (s)
    (if (femm? s)
        (string-append " le " s " ")
        (string-append " i " s " ")
       )
    )
  )
  
(define articolo
  (lambda (s)
  (if (singolare? s)
      (artS s)
      (artP s)
    )
  )
)
      
(define frase
   (lambda (p1 p2 p3)
  (string-append (articolo p1) (verbo p1 p2) (articolo p3)
 )
)
)
```