
[[Programmazione e laboratorio-info]]
[[Programmazione e laboratorio-pdf]]


---

http://users.dimi.uniud.it/~claudio.mirolo/teaching/programmazione/presentations/introduzione/start.html
2022-10-07
#### Espressioni
Superficie totale di un cilindro 
$(2 \pi r^2) + 2\pi r$

-> $2 \cdot \pi \cdot r \cdot (r+h)$ 

---
# Scheme $\lambda$


![[B473D7B8-37C2-413B-BBC4-3112E5076D99.png|300]]
Language: Intermediate Studente with Lambda 

###### Espressione che calcola la superficie totale di un cilindro. 
```scheme
(*(*(*2 3.1415)5.0)(+ 5.0 11.8))
=
(* 2 3.1415 5.0 (+ 5.0 11.8))
```
= 527.7

###### Con ***Variabili***: 
```scheme
(lambda (r h)(* (* 2 3.14 r (+ r h))) 5 11.8)

```
Astrae proceduralmente il costrutto. 
Procedura lambda che dipende da due valori (il cui ordine è importante). I due valori sono *r*, *h*.  


https://replit.com/@enrperes/First-Test


###### Espressione che declini al plurale i sostantivi della lingua italiana

![[CDC7862B-31FD-43B0-89EC-651EA7689808.png|400]]

```scheme
(string-append (substring "protiro" 0 (- (string-lenght "protiro") 1)) "i")
```

```scheme
(define) plurale
	(lambda (sm)
		(string-append (substring sm 0 (- (string-length sm) 1)) "i")
	)
```


string-append ha 2 argomenti
Substring ha 3 argomenti: Stinga; a partire dal carattere n; 

##  (lambda)
Introduce le variabili 

## (define)

```scheme
 
(define supCilindro 
	(lambda (r h)  ; introduzione variabili r, h. Numeri reali. 
		(* (* 2 3.14 r) (+ r h))
    )
)

(supCilindro 5 11.8) ; ->  527.00
```


![[78FF4480-ECFF-465A-92EF-00656F8AA60E.jpeg|300]]

##### Procedura per verificare se parola è maschile o femminile 

https://replit.com/@enrperes/ProceduralAbstraction#main.scm
 ```scheme
 
 (define femminile ;val: bool
	 (lambda (s)
		 (string=? (substring s (-(string-length s) 1)) "a")
	 )
 )
```
Il secondo indice di substring si può omettere. 

2022-10-14 08:37 
###### Da infinito a participio passato 

 ```scheme
 (define ato ;val :bool
  (lambda (s) ;s: string
   ;(string=? (string-ref s (- (string-length s) 1)) "are")
    (string-append (substring s 0 (- (string-length s) 2)) "to")
    )
  )
```

(string-ref str k) -> returns character at position k in str. First position =  0. 
## (if)


```scheme
(if C E1 E2) ; C1 ? E1 : E2

```

3 argomenti: 
- Condizione (booleana)
- Espressione 1
- Espressione 2 (non può essere omesso)

Se il risultato di C è vero si valuta E1 e il risultato di if è E1. 
Falso: valuta E2, if = E2. 
Solo quando si valuta C si valuta o E1 o E2. 

#### Generalizzazione del plurale 

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

----

**Tipi numerici**
- Interi. Non ha limiti di dimensioni particolari
	(expt base esponente) -> ``(expt 15 2)`` = 125
	(sqrt base) -> ``(sqrt 2)`` = 1.4142
- Razionali: 
	- ``(/ 3 4) = 0.75``
	- 3 tipi di visualizzazione (tasto destro)
- Double: (floating point)
	- ``#i0.75``
- Numeri complessi
	- ``(sqrt -1)`` = 0+1i
- Costanti: 
	- pi, e, 
Operazioni con numeri misti : 
``(+ 1 3/4)``

Backslash e doppio apice sono caratteri speciali


2022-10-17 12:41
 ###  Complemento a uno
(invertire stringa binaria in modo ricorsivo)

```scheme
(define compluno ; val: stringa di 0/1
	(lambda (seq)    ; seq: stringa di 0/1
	  (if (> (string-length seq) 1)
  (string-append
   (bit-compl (substring seq 0 1))
   (compluno (substring seq 1))
  )
  (bit-compl seq) ; sequenza di 1 bit 
)))

(define bit-compl 
  (lambda (bit) ; bit: "0", "1"
    (if (string=? bit "0")
	  "1"
	  "0"
    )
  )
)
```

--- 12:51 ---

```scheme

(define s
	(lambda (k)
		(if (>= k 2)
		(/ (s (- k 2)) 2)
		(if (= k 0) s0 s1)
		)
	)
  )

(define s0 (expt 2 1/4)) ; radice quarta di 2
(define s1 (expt 2 -1/4)); inversa della radice quarta di 2

```

---

## 2022-10-21 8:30
>[!info] funzioni
>	cond()
>	quotient()
>	let()

## (cond)

Per avere più ``(if)`` in sequenza: 

```scheme
(cond (test1
       ("action1"))
      (test2
       ("action2"))
      (test3
       ("action3") ("action4"))
      (else
       ("action5"))
)

(cond (C1 E1)
	  (C2 E2)
	  ...
	  (Ck EK)
	  (true E)
)

```
Comodo quando ci sono tanti condizioni. La prima condizione Ci che viene verificata determina l'esecuzione dell'istruzione Ei. Se C1 e C2 sono entrambe verificate ``cond`` assume il valore della prima. Se nessuna è verificata c'è un errore. ``(true E)`` assegna valore *true* al cond quando nessuna condizione è verificata. 


#### (quotient)
Risultato della divisione in numero intero. 
#### (remainder)
Il resto della divisione 

## (let)
serve ad associare dei valori a dei simboli. 
### Distinzione tra ``(let)`` e ``(define)``
Define è un'associazione permanente. ``(define k 0)`` -> k diventa una costante. Inoltre **NON** è un'espressione. Non restituisce alcun valore. 
Il ``let`` definisce un'espressione e ha valore solo all'interno delle sue parentesi. è un'espressione, infatti assume un valore. ``(let ((k 0)) (+ k 1)`` valuta k, 

```scheme
(let ((k (quotient (string-length seq) 2)) ; definisce k come indice della posizione intermedia 
	  ))

(let ((k 0)) (+ k 1))
```

Con il let si aprono due parentesi, c'è sempre almeno una associazione. 

[[50DED43C-55D1-4D7C-B703-7955B62D2BD8.jpeg|codice 20221021]]


---

2022-10-24 11:46

![[8834A672-566D-4177-B76A-945BEA80D7DD.jpeg|350]]
Sotto la versione equivalente senza `let` 


---

[[PLAB-2022-10-27]]

---

2022-11-04 08:37

## Numeri di Stirling  del secondo tipo 

Nessun cioccolatino fuori e nessun piatto vuoto. I piatti sono anonimi.
esempio: 4 piatti, 16 cioccolatini univoci. 
esempio2: 2 piatti e 3 cioccolatini. -> 3 modi possibili
Esempio3: 3 piatti, 4 cioccolatini -> ''

```scheme
(define st
	(lambda (n k)
		(if (or (= k 1) (= k n))
		1
		(+ (st (- n 1)(- k 1)) (* k (st (- n 1) k)))
		)
	)  
)
```


![[Pasted image 20221104101004.png|400]]

