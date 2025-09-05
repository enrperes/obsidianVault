Per confrontare due file e rilevarne le differenze. 
Strategia: rielabora e perfeziona la soluzione del problema della sottosequenza più lunga.

d = delete
a = add

Le modifiche sono poi rappresentate in una lista del tipo: 
```rkt
'(n_riga_t1 operazione n_riga_t2 contenuto)
```

#### Funzionamento

- `diff` funzione principale che chiama la funzione ricorsiva `delega` 
- Funzione ricorsiva `delega` che esplora ricorsivamente le liste (testi), riga per riga (riga = elemento atomico indivisibile)
- `i1, i2` sono gli indici di posizione 
- `t1, t2` sono il resto del primo e secondo file
- `result` è una listsa che accumula le modifiche. 

Cond: 
1. entrambe liste vuote $\Large \to$ finito 
2. t1 vuoto $\Large \to$ aggiunge le righe rimaste di t2 (e viceversa)
3. righe correnti uguali $\Large \to$ passa alla prossima senza segnare differenze
4. righe diverse $\Large \to$ 
	1. Se t2 non esiste in t1 $\Large \to$ aggiunta
	2. se t1 non esisgte in t2 $\Large \to$ cancellazione 


```scheme
(define diff
  (lambda (text1 text2)
    (letrec
        ((delega
           (lambda (t1 t2 i1 i2 result)
             (cond
              ; Caso 1: entrambe le liste sono vuote, restituisco il risultato
              (
               (and (null? t1) (null? t2))
               (reverse result)
               )
              ; Caso 2: t1 è vuoto, aggiungi tutte le righe rimanenti di t2
              (
               (null? t1)
               (delega t1 (cdr t2) i1 (+ i2 1)
                            (cons (list i1 'a i2 (car t2)) result)
                )
               )
              ; Caso 3: t2 è vuoto, elimina tutte le righe rimanenti di t1
              ( 
               (null? t2)
               (delega (cdr t1) t2 (+ i1 1) i2
                            (cons (list i1 'd i2 (car t1)) result)
                )
               )
              ; Caso 4: righe uguali, salta alla riga successiva
              (
               (equal? (car t1) (car t2))
               (delega (cdr t1) (cdr t2) (+ i1 1) (+ i2 1) result)
               )
              ; Caso 5: righe diverse: controlla se esiste da qualche parte più avanti 
              (else
               (let ((rest-t1 (member (car t2) t1)) ; cerca car t2 in t1
                     (rest-t2 (member (car t1) t2)))
                 (cond
                  ; Cancellazione (riga di t1 non esiste in t2) 
                  (
                   (null? rest-t1) 
                   (delega (cdr t1) t2 (+ i1 1) i2
                                (cons (list i1 'd i2 (car t1)) result)
                    )
                   )
                  ; Aggiunta (riga di t2 non esiste in t1)
                  (
                   (null? rest-t2)
                   (delega t1 (cdr t2) i1 (+ i2 1)
                                (cons (list i1 'a i2 (car t2)) result)
                    )
                   )
                  ; Cancellazione (entrambe esistono)
                  (else
                   (delega (cdr t1) t2 (+ i1 1) i2
                                (cons (list i1 'd i2 (car t1)) result)
                    )
                   )
                  )
                 )
               )
              )
             )
           ))
        ; output: lista dai due testi con differenze
       (delega text1 text2 1 1 '()))
    ))

; test 
(define file1 '("AAA" "BBB" "CCC"))
(define file2 '("AAA" "BDB" "CCCX"))

(diff file1 file2)
```

output: 
```scheme
 '((2 d 2 "BBB") (3 d 2 "CCC") (4 a 2 "BDB") (4 a 3 "CCCX")) 
```

Spiegazione: 

Spiegazione:

- Riga 2 (BBB) è stata cancellata → (2 d 2 "BBB")
- Riga 3 (CCC) è stata cancellata → (3 d 2 "CCC")
- Riga 2 di file2 (BDB) è stata aggiunta → (4 a 2 "BDB")
- Riga 3 di file2 (CCCX) è stata aggiunta → (4 a 3 "CCCX")