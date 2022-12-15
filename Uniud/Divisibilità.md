#todo 
2022-12-02
2022-12-09


# Divisibilità tra interi $\in \mathbb{Z}$
> a, b sono numeri interi. $$\Large a = q \cdot b + r$$

Dove $b \neq 0$ e $r$ è sempre positivo o nullo. Il quoziente $q$ può essere positivo, negativo, nullo. 

## Definizione di divisibilità 
Dati due numeri *a, b*; *b divide a* se esiste $k \in \mathbb{Z}$  tale che $bk = a$. (Ovvero quando il resto della divisione $\Large \frac b a$ è uguale a 0)
### *b divide a* = $\Large b|a$  
La divisibilità è una proprietà transitiva e i segni non contano quando il resto è uguale a 0. 
0 è multiplo di ogni intero. 

# Combinazioni lineari 
%%utili per il codice RSA%%
> Dati due numeri $a, b$; $c$ è *combinazione lineare* di a, b quando $$\Large c = ka + hb$$ con $k,h \in \mathbb{Z}$ 

h e k sono detti coefficienti della combinazione lineare. 
>[!example]- Esempio combinazioni lineari di 6 e 15:
>$-9 = 1 \cdot 6 +1 \cdot 15$
>$12 = (-3) \cdot 6 (-2) \cdot 15$

> Se $n|a$ e $n|b$ allora $n$ divide ogni combinazione lineare di a,b

Questa proposizione è utile per stabilire se un numero è oppure no combinazione lineare di altri due numeri. 
Ad esempio 2 non è combinazione lineare di 6 e 15 perchè 3 divide 6 e 15 ma non 2. 
>[!info]- Dimostrazione 
>Se n divide a allora esiste k tale che nk = a; se n divide b allora esiste h tale che nh = b. Se esiste una combinazione lineare di a e b allora esistono x, y tali che c = xa + yb. E di conseguenza: $$\Large c = xa + yb = x (nk) = y(nh) = n(xk +yk)$$ da cui si vede che n divide c: $\Large n | c$


## Algoritmo per determinare se numero è combinazione lineare di un altro







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