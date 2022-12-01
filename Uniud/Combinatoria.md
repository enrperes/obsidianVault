#todo

> Numerazione e conteggio di insiemi finiti 

### ![[Regola della somma]]
---
### ![[Regola-del-prodotto|Regola del prodotto]]

### ![[Regola del complementare]]
### ![[Disposizioni]]
### ![[Permutazioni]]

---
2022-12-01

- Trovare il numero delle stringhe di lunghezza 9 e peso 3 (numero di cifre pari a 1)
 (Quindi scegliere le 3 posizioni fra le 9 possibili che contengono la cifra 1)
>[!done]- Risposta 
> $\Large C_{9, 3}$ 
- Stringhe di bit di lunghezza 9 che iniziano con 101? 
 >[!done]- Risposta
> $\Large 2^6$

- Stringhe di bit di lunghezza 9 che iniziano con 101 oppure che finiscono con 11? 
>[!done]- Risposta
> I due insiemi non sono disgiunti. Quindi si cerca la cardinalità dell'unione. Che è uguale a $|A| + |B| - |A\cap B|$ 
> = 176 

- Stringhe di bit di lunghezza 9 e peso 5 che iniziano con 101 o finiscono con 11? 
>[!done]- Risposta
> $\Large C_{6, 3}+ C-{7, 5}-C_{4,1}$

### Regola del complementare 

Se $B \subset A$ allora $A$ è l'unione dei sottoinsiemi disgiunti $B$ e $A \setminus B$.
$$\large \binom{a}{b}$$

## Triangolo di Tartaglia (Pascal)



												1        n=0
											 1     1        n=1
										  1     2     1        n=2
									   1     3     3     1        n=3
									1     4     6     4     1        n=4     (x+y)^4
								 1     5     10    10    5     1        n=5
							  1     6     15    20    15    6     1        n=6
						   1     7     21    35    35    21    7     1        n=7
						1     8     28    56    70    56    28    8     1        n=8
					 1     9     36    84    126   126   84    36    9     1        n=9
				  1     10    45    120   210   252   210   120   45    10    1        n=10
			   1     11    55    165   330   462   462   330   165   55    11    1        n=11
			1     12    66    220   495   792   924   792   495   220   66    12    1        n=12
		 1     13    78    286   715   1287  1716  1716  1287  715   286   78    13    1        n=13
	  1     14    91    364   1001  2002  3003  3432  3003  2002  1001  364   91    14    1        n=14

