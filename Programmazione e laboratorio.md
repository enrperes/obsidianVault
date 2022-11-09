###  [[Programmazione e laboratorio-info]]
### [[Programmazione e laboratorio-pdf]]

---

#wip



# Scheme $\lambda$


![[B473D7B8-37C2-413B-BBC4-3112E5076D99.png|300]]
Language: **Intermediate Studente with Lambda** 

Codice per calcolare la superficie di un cilindro: [[Scheme-superficie-cilindro|file]]
Codice per declinare al plurale i sostantivi regolari:  [[Espressione che declini al plurale i sostantivi della lingua italiana|file]]

![[Lambda]]

![[Define]]

![[78FF4480-ECFF-465A-92EF-00656F8AA60E.jpeg|300]]

#### Procedura per verificare se una parola è maschile o femminile: [[Procedura per verificare se parola è maschile o femminile|codice]]
#### Procedura per passare da infinito a participio passato [[Da infinito a participio passato|codice]]


![[IF|IF]]

Programma per la [[Generalizzazione del plurale]]. 


----
### [[Tipi numerici]]
In Scheme i numeri possono essere Interi, Razionali, Double, Complessi, Costanti, Misti: 


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


![[Pasted image 20221104101004.png|600]]

---

2022-11-07

# LCS: Longest Common Subsequence

LLCS = Lenght Longest Common Subsequence

```scheme
;; llcs(ax, by) --> k
;; llcs (ax, ay) = 1 + llcs (x, y)
;; llcs (ax, by) = max(llcs (ax, y), llcs(x, by)) se a != b
;;llcs ("", y) = llcs (x, "") = 0

```

```scheme
(define llcs ; val: intero
  (lambda(u v) ;u, v: stringhe
	  (cond ((or (string=? u "") (string=? v ""))
	  0)
	  ((char=? (string-ref u 0))
	  )
	  )
  ))
```