2022-11-29
# Successioni in $\Large \mathbb{R}$  
$n \mapsto x_n$ è una successione in $\mathbb{R}$ 
- è crescente se $\forall n, k \in \mathbb{N}$ con $h<k$
$$X_h \leqslant X_k$$
- è strettamente crescente se: 
$$X_h < X_k$$

In particolare, crescente se: $\forall n \in \mathbb{N} \; \; X_h < X_{h+1}$ e decrescente se $\forall n z k \;\;X_h \geqslant X_k$

>Una successione è detta **Monotona** se è crescente o decrescente. Non tutte le successioni lo sono. 

> Una successione monotona è limitata superiormente o inferiormente. 

> TEOREMA: 
> Per ogni successione in $\large \mathbb{R}$ esiste una sottosuccessione monotona. Ovvero: 
> Da ogni successione si può estrarre una sottosuccessione monotona. 

#dimostrazione #todo 

2022-11-30
# Limiti di successioni in $\Large \mathbb{R}$  

Successioni limitate inferiormente e superiormente non sono per forza convergenti {1, -1, 1, -1...}
Ma la convergenza implica la limitatezza. 

---
[Limite di una successione - wiki]([](https://it.wikipedia.org/wiki/Limite_di_una_successione?wprov=sfti1))

> Valore a cui tendono i termini di una successione. Se tale limite esiste finito, la successione si dice **Convergente**. 

La successione dei reciproci degli interi positivi $\large \frac 1 n$  tende a 0. 

### Limite della retta reale
Un numero reale $x$ è limite di una successione di numeri reali $\{ a_n \}$ se la **distanza** fra i numeri $a_n$ e $x$ (data dal valore assoluto $|a_n - x|$ è abbastanza piccola quando $x$ è sufficientemente grande.)

Quindi: $x$ è il limite della successione se: 
$$\forall \varepsilon > 0 \;\; \exists N \in \mathbb{N} : |a_n - x| < \varepsilon \;\; \forall n > N$$
E si scrive:
$$\lim_{n\to +\infty}a_n = x$$
Se $x=0$ la successione è detta infinitesima. 

Per il [[teorema-unicità-limiti|Teorema di unicità dei limiti]] il limite di una successione, se esiste,  è unico. 

### Limite in spazi metrici 

In uno [[spazio metrico]] $(X, d)$ dove $d$ è la funzione distanza, un punto $x$ di  $X$ è limite di una successione $\{ x_n \}_n$  se: 
$$\forall \varepsilon > 0 \exists N | \forall n > N \; d(x_n, x) < \varepsilon$$

