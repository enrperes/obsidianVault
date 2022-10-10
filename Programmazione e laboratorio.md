# Programmazione e laboratorio

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
## Scheme $\lambda$
![[B473D7B8-37C2-413B-BBC4-3112E5076D99.png|550]]
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

![[CDC7862B-31FD-43B0-89EC-651EA7689808.png|450]]

```scheme
(string-append (substring "protiro" 0 (- (string-lenght "protiro") 1)) "i")
```

```scheme
(define) plurale
	(lambda (sm)
		(string-append (substring am 0 (- (string-length sm) 1)) "i")
	)
```


string-append ha 2 argomenti
Substring ha 3 argomenti: Stinga; a partire dal carattere n; 

## $\lambda$: Procedural Abstraction
Introduce le variabili 

### `define`

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

