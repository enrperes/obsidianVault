[[esercizio9scheme.pdf]]

 ## Parte 1: cifrario di cesare

`univ-char>integer` restituisce la posizione di un carattere char nella stringa alphabet. 
`univ-char>integer-supp` è la procedura di supporto ricorsivo. 
- Cerca il carattere char nella stringa alphabet. Scorre carattere per carattere, fino a trovarlo o a superare la lunghezza (error)

`alt-regula`: 
La funzione `cipher` prende un messaggio, una regola e un alphabeto e restituisce la stringa cifrata applicando la regola ad ogni carattere. 
 



```scheme
; data una chiave (integer) di crittazione
; restituire la procedura di crittazione
; (usa l'alfabeto latino dell'epoca repubblicana)
; A B C D E F G H I L M N O P Q R S T V X

; Alfabeto di riferimento
(define alfabeto-latino "ABCDEFGHILMNOPQRSTVX")

; char->integer personalizzato
;    in input il carattere e la stringa che codifica l'alfabeto di riferimento
(define univ-char->integer
  (lambda (char alphabet)
    (univ-char->integer-supp char alphabet 0)
    ))

; procedura di supporto ^
(define univ-char->integer-supp
  (lambda (char alphabet value)
    (if (>= value (string-length alphabet))
        error
        (if (char=? char (string-ref alphabet value))
            value
            (univ-char->integer-supp char alphabet (+ 1 value))))
    ))

; versione alternativa della regula di crittazione (usa
; la procedura univ-char->integer).
(define alt-regula
  (lambda (fattore)
    (lambda (carattere alphabeto indice)
      (if (<= indice (- (string-length alphabeto) 1))
          (if (char=? carattere (string-ref alphabeto indice))
              ; T: ending case
              (if (>
                   (+ (univ-char->integer carattere alphabeto) fattore)
                   (- (string-length alphabeto) 1))
                  ; T
                  (string-ref alphabeto
                              (- (+ (univ-char->integer carattere alphabeto) fattore) (string-length alphabeto)))
                  ; F
                  (string-ref alphabeto (+ indice fattore)))
              ; F: recursive call
              ((alt-regula fattore) carattere alphabeto (+ 1 indice)))
          error)
      )))
; Cifratore
(define cipher ; val: stringa cifrata
  (lambda (nuntius regula alphabeto) ; nuntius: stringa da cifrare, regula: procedura di crittazione
    (if (= (string-length nuntius) 0)
        ""
        (string-append
         (string (regula (string-ref nuntius 0) alphabeto 0))
         (cipher (substring nuntius 1) regula alphabeto)))
    ))

(define alt-antiquum-codicem-Caesar (alt-regula 3))


; esempio: 
(cipher "ROMA" alt-antiquum-codicem-Caesar alfabeto-latino)
; VRPD
```

 ## Parte 2: costruzione astratta di operazioni aritmetiche (add, mul, pow)

`i` identità: restituisce il proprio argomento. 
`z` restituisce sempre 0 (usata per inizializzare mul con 0)
`u` restituicse sempre 1 (usata per inizializzare pow con 1)
`s2` funzione binaria che restituicse v+1 (il successore) 
`H` Funzione (di ordine superiore) che prende due funzioni `f, g` e ritorna una funzione `f(m n)` dove: 
- `m` numero su cui operare
- `n` contatore per ricorsione. 
Se n = 0 (caso base) ritorna `f(m)` 
Altrimenti applica ricorsivamente `g(m, risultato_ricorsivo)` dove il risultato ricorsivo è `((H f g) m (n-1))`

```scheme
; Parte II: RISOLTA

; Spunti:
; add(m, 0) = m
; add(m, n) = succ(add(m, n-1))
;
; mul(m, 0) = 0
; mul(m, n) = add(m, mul(m, n-1))
;
; pow(m, 0) = 1
; pow(m, n) = nul(m, pow(m, n-1))

; Definisci H, che ha argomenti e valore procedurali, e poi
; definisci add, mul e pow applicando H.
; Esempio: (define mul (H (lambda (x) 0) add))

; procedura identità i
(define i
  (lambda (x)
    x
    ))

; procedura costante 0
(define z
  (lambda (x)
    0
    ))

; procedura costante 1
(define u
  (lambda (x)
    1
    ))

; procedura successore a due parametri (dipendente solo da uno)
(define s2
  (lambda (u v)
    (+ v 1)
    ))

; procedura H alto ordine
(define H
  (lambda (f g)
    (lambda (m n)
      (if (= n 0)
          (f m)
          (g m ((H f g) m (- n 1))))
    )))


(define add (H i s2)) 
(define mul (H z add))
(define pow (H u mul))
; ------------------------------------------------------------------------
  
```
