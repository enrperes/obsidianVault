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

