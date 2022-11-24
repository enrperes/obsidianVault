> Detto $P(n)$ un predicato su $\mathbb{N}$, il principio di induzione si basa sull'*ipotesi induttiva* che valga $P(0)$ e la verità di $P(n) \Rightarrow P(n+1)$. Se ciò è verificato, $P(n)$ vale $\forall n \in \mathbb{N}$ 

## 1. Base dell'induzione 
> Si verifica la proprietà $\large P(n)$ sul più piccolo numero fra quelli per cui si vuole dimostrare la proprietà 
## 2. Passo induttivo 
> Si dimostra che vale $\large P(n) \to P(n+1)$

Quindi si prende come **ipotesi** che $\large P(n)$ valga per il numero $\large n$ e **sfruttando l'ipotesi** si dimostra che la proprietà vale per il numero $\large P(n+1)$ 

### Esempio

$\large P(n): n^2 + n$ è numero pari $\large \forall  n \in \mathbb{N}$. **Passo induttivo:** $\large P(n+1)= (n+1)^2 + (n+1)$: numero pari. 
**Ipotesi**: $\large n^2 + n$: numero pari $\LARGE \to$ $\large (n+1)^2 + (n+1)$: numero pari. 
Più formalmente: 
$$\large P(0) \land \forall n (P(n) \to P(n+1)) \to \forall n P(n)$$
Il principio di induzione è valido per qualsiasi $\LARGE n$ se riusciamo a verificare la base $\large P(0)$ e il passo induttivo $\large \forall n(P(n) \to P(n+1))$



