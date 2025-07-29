[[esercizio5scheme.pdf]]

Generalizzazione del problema dei percordsi di Manhattan in spazio tridimensionale. 
> In quanti modi diversi si può andare dal punto **A** al punto **B** senza allungare inutilmente il percorso? 

![[manhattan3d.png|400]]


```scheme
(define path
  (lambda (i j)
    (if (or (= i 0) (= j 0)) 1
          (+ (path i (- j 1)) (path (- i 1) j)))
    )
  )

(define path3d
  (lambda (i j k)
    (cond ((= i 0)(path j k))
          ((= j 0)(path i k))
          ((= k 0)(path i j))
          (else (+ (path3d (- i 1) j k) (path3d i (- j 1) k) (path3d i j (- k 1)))
 ))))

;;Tests
(path3d 0 0 7) ; 1
(path3d 2 0 2) ; 6
(path3d 1 1 1) ; 6
(path3d 2 3 3) ; 560
```


Se uno dei due lati del piano è 0 si ottiene un segmento, quindi esiste un unico modo per andare da un punto all'altro. 

> [!note]+  **spiegazione** 
 > Conta i numeri di percorsi possibili da 0,0 a i,j su griglia 2D o 3D
 >``(path i j)`` Risolve il problema di Manhattan in 2D. 
 >