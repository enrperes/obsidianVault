
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