Dato un insieme $A$, quante coppie $A \times A$ in cui il primo elemento è diverso dal secondo elemento? l

$|A| = n$. L'insieme delle k-uple di elementi distinti di $A$, ovvero $\{ (a_1, ... a_k)\in A^k : a_i \neq a_j \;\; per \;\; i \neq j \}$ ha cardinalità pari a:
$$\huge \frac{n!}{(n-k)!}$$
>[!example]- Esempio
>$|A| = 4$
> $k = 3 \to \;$ terne di 4 elementi distinti a due a due:
>$$\frac{4!}{(4-3)!}$$ 

### Contare funzioni iniettive
> Le disposizioni possono essere utilizzate per contare quante sono le funzioni *iniettive* da un insieme con *n* elementi a un insieme con *k* elementi. 
>> Se $|A| = k$ e $|B| = n$ allora l'insieme delle funzioni iniettiva con dominio $A$ e codominio $B$ ha cardinalità: $D_{n,k}$ 

Esempio: 
$k=3, n=6$ e gli insiemi  $A = \{1,2,3\}, \;\;\; B=\{1,2,3,4,5,6\}$  
La funzione iniettiva $f(1)=1, f(2) = 4, f(3) = 5$ viene identificata con la terna $(1,4,5)$  di elementi distinti del codominio $B$. 
La terna $(3,1,5)$ di elementi distinti di $B$ rappresenta invece la funzione iniettiva $f(1) = 3, f(2) = 1, f(3) = 5$
- $D_{6,3} = 6 \cdot 5 \cdot 3$ = 90. Quindi esistono 90 funzioni iniettiva da $A$ a $B$.

