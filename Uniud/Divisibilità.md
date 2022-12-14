#todo 
2022-12-09

---

## Algoritmo veloce per l'MCD di Euclide 

$$a = 3945; b= 2357$$
La divisione da resto 1578. Il MCD tra $a$ e $b$ = MCD (b, resto), quindi (2357, 1578). Dividendo di nuovo a / b il resto è 789 -> (MCD 1578 789) -> a / b da resto 0. -> il MCD è quindi 789. 

### Algoritmo di Euclide in generale
> Siano a, b interi positivi non entrambi nulli. Dividere il più grande con il più piccolo, guardando il resto della divisione. 
> Ricominciare da capo ponendo a = b e b = resto. Finchè r = 0.

#todo 
![[Pasted image 20221209140226.png|400]]

## Teorema di Bezout 
> Dati $a, b$ non entrambi nulli il loro massimo comun divisore è una loro combinazione linear, ovvero esistono interi h, k tali che $(MCD a b) = ha + kb$

***Proprietà fondamentale da ricordare^^***