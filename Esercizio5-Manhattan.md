



```scheme
(define path
  (lambda (i j)
    (if (or (= i 0) (= j 0)) 1
          (+ (path i (- j 1)) (path (- i 1) j))
          )
    )
  )

(define path3d
  (lambda (i j k)
    (cond ((= i 0)(path j k))
          ((= j 0)(path i k))
          ((= k 0)(path i j))
          (else (+ (path3d (- i 1) j k) (path3d i (- j 1) k) (path3d i j (- k 1)))
 ))))
```