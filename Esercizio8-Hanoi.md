[[esercizio8scheme.pdf]]

### Soluzione ricorsiva
Per trasferire una torre di n dischi dall'asticella sorgente a quella di destinazione, è necessario prima trasferire una torre di $\Large n-1$ dischi (tutti tranne quello di base) da $\Large s$ a $\Large t$ (transito). Successivamente, si può spostare la base da $\Large s$ a $\Large d$. 
Infine rimane il problema di trasferire una torre di n-1 dischi da $\Large t$ a $\Large d$, per riportarla sopra la base. 
Questo procedimento risolve il problema in modo ottimale, impiegando $\Large 2^{n-1}$ mosse per una torre di $\Large n$ dischi. 

Dato un intero positivo $\Large n$, la procedura `hanoi-moves` restituisce la lista di mosse che risolve il rompicapo per $\Large n$ dischi. 
Una mossa è descritta dalla coppia di asticelle in cui il disco spostato si trova prima e dopo quella mossa. 

#### Lista delle mosse
```scheme
(define hanoi-moves ; val: lista di coppie
  (lambda (n) ; n > 0 intero
    (hanoi-rec n 1 2 3)
    ))

; Ricorsione ad albero, k-esima mossa = (k <= 2^n - 1)
(define hanoi-rec ; val: lista di coppie
  (lambda (n s d t) ; n intero, s, d, t: posizioni
    (if (= n 1)
        (list (list s d))
        (let ((m1 (hanoi-rec (- n 1) s t d))
              (m2 (hanoi-rec (- n 1) t d s))
              )
          (append m1 (cons (list s d) m2))
          )
        )
    ))
```
1. Sposta n-1 dischi da s a t (`m1`)
2. Sposta il disco più grande da s a d
3. Sposta i n-1 dischi da t a d (`m2`)


#### Configurazione alla mossa k
```scheme
; Ricorsione di coda:

(define hanoi-disks
  (lambda (n k)
    (hanoi-disks-rec n k 1 2 3 n 0 0))) ; all’inizio tutti i dischi sono su torre 1


(define hanoi-disks-rec
  (lambda (n k s d t ns nd nt)
    (let ((half (expt 2 (- n 1)))) ; mossa in cui si muove il disco più grande
      (cond
        ;; Caso base: k = 0 → configurazione iniziale
        ((= k 0)
         (list (list s ns) (list d nd) (list t nt)))

        ;; Caso: mossa k è nella prima metà → ramo sinistro
        ((< k half)
         (hanoi-disks-rec (- n 1) k
                          s t d
                          (- ns 1) nt nd)) ; disco più grande resta su s

        ;; Caso: mossa centrale → disco più grande si sposta da s a d
        ((= k half)
         (list (list s (- ns 1))
               (list d (+ nd 1))
               (list t nt)))

        ;; Caso: mossa k è nella seconda metà → ramo destro
        (else
         (hanoi-disks-rec (- n 1) (- k half)
                          t d s
                          nt (- nd 1) (+ ns 1)))))))

  
(define incr ; val: lista di due interi
  (lambda (p)  ; p  : lista di due interi
        (list (car p) (+ (list-ref p 1) 1)) ; incrementa il contatore di dischi per l'asticella
     )
 )

; -------------- Grafica ----------------------------------- ; 

(define hanoi-picture
  (lambda (n k)
    (hanoi-picture-rec n k '(1 0) '(2 0) '(3 0) (towers-background n) n)
    )
  )

(define hanoi-picture-rec
    (lambda (n k s d t image start_n)
        (let (
              (half_moves (expt 2 (- n 1))) ; trova la mossa di mezzo 
              )
            (cond
                ((and (= n 1) (= k 0))     
                    
                    (above
                        (disk-image n start_n (car s) (list-ref s 1)) ; (above (disk-image 1 1 1 0) (towers-background 1))
                        image
                     ))
                ((and (= n 1) (= k 1))                               
                    
                    (above
                        (disk-image n start_n (car d) (list-ref d 1)) ; > (above (disk-image 1 1 2 0) (towers-background 1))
                        image
                     ))
                ((< k half_moves)
                    (hanoi-picture-rec
                        (- n 1) k (incr s) t d
                        (above
                            (disk-image n start_n (car s) (list-ref s 1))
                            image
                         )
                        start_n
                     ))
                (else
                    (hanoi-picture-rec
                        (- n 1) (- k half_moves) t (incr d) s
                        (above
                            (disk-image n start_n (car d) (list-ref d 1))
                            image
                         )
                        start_n
                     ))
             )
         )
     )
 )

```