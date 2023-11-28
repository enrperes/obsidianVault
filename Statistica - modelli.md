# Modello uniforme discreto 

> Descrive esperimenti con numero finito di esiti equiprobabili

$$
\Large X\sim Ud(x_{1},\dots,x_{n})
$$
Funzione di densità

$$
\Large
\begin{align*}
    f_{X}(x; x_{1}, \dots, x_{n})=\left\{
    \begin{array}{rrr}
     \frac{1}{n} & \text{se} & x=x_{1}, \dots, x_{n}\\ \\
     0 & &\text{altrimenti}\\
    \end{array}\right.
\end{align*}
$$

Inoltre: 
$$
\Large
\begin{align*}
E(X) = \sum_{i=1}^{n} \frac{x_{i}}{n} = \frac{n+1}{2}\\ \\
V(X) = \sum_{i=1}^{n}\frac{(x_{i}-E(X))^{2}}{n} = \frac{n^{2}-1}{12}
\end{align*}
$$
# Modello binomiale 
> Esperimenti che possono essere rappresentati come estrazioni con reinserimento da un'urna di composizione nota (esperimento bernoulliano)

$$
\Large
X \sim Bi(n, p) 
$$
Con $S_{X}=\{0, \dots, n\}$ e $n$ che indica il numero di prove indipendenti, $p$ la probabilità comune di successo. 
Funzione di densità: 
$$
\Large
\begin{align*}
 f_{X}(x;\; n,p)=\left\{
 \begin{array}{rrr} 
 \binom{n}{x} p^{x} (1-p)^{n-x}  & \text{se} &x \in S_{X} \\ 
 0 & & \text{altrimenti} & \\ 
    \end{array}\right. 
 \end{align*}
$$
Inoltre: 
$$
\Large
\begin{aligned}
E(X_{i})= np \\ \\
V(X )= np(1-p)
\end{aligned}
$$

# Modello Poisson
> Descrive problemi di conteggio quando non c'è una limitazione superiore per il supporto o problemi in cui tale limitazione è irrilevante. 

$$
\Large
X \sim P(\lambda)
$$
Con $S_{X} = \mathbb{N}$
Funzione di densità: 
$$
\Large
\begin{align*}
 f_{X}(x; \lambda)=\left\{
 \begin{array}{rrr} 
 \frac{\lambda^{x} e^{ - \lambda }}{x!} & \text{se} & x \in S_{X}\ \\ 
 0 & & \text{altrimenti} & \\ 
    \end{array}\right. 
 \end{align*}
$$
Si ha che: 
$$
\begin{align}
 E(X) = \lambda \\
V(X)= E(X^{2})- (E(X))^{2} = \lambda
\end{align}
$$
Quindi media e varianza coincidono a $\lambda$

# Modello geometrico 
> Descrive il tempo di attesa, espresso come il numero di replicazioni indipendenti di un esperimento bernoulliano, con probabilità di successo $p$ per osservare per la prima volta un successo. 

$$
\Large
X \sim Ge(p)
$$
con $S_{X} = \mathbb{N}^+$ 
Funzione di densità: 
$$
\Large
\begin{align*}
 f_{X}(x; \lambda)=\left\{
 \begin{array}{rrr} 
 (1-p)^{x-1}p & \text{se} & x\in S_{X} \\ 
 0 & & \text{altrimenti} & \\ 
    \end{array}\right. 
 \end{align*}
$$
Si ha che: 
$$
\begin{align}
E(X) = \frac{1}{p}  \\
V(X) =  \frac{1-p}{p^{2}}
\end{align}
$$Modello caratterizzato dall'assenza di memoria

# Modello uniforme continuo 
> Descrive esperimenti aleatori rappresentabili come un'estrazione casuale di un numero dall'intervallo $[a,b]$

$$
\Large
X \sim U(a,b)
$$
Con $S_{X} = [a,b]$
Funzione di densità: 
$$
\Large
\begin{align*}
 fX(x; a,b)=\left\{
 \begin{array}{rrr} 
 \frac{1}{b-a} & \text{se} & a\leq x \leq b \\ 
 0 & & \text{altrimenti} & \\ 
    \end{array}\right. 
 \end{align*}
$$
Funzione di ripartizione: 
$$
\Large
\begin{align*}
 F_{X}(x;a,b)=\left\{
 \begin{array}{rrr} 
 0 & \text{se} & x < a \\ 
 \frac{x-a}{b-a} & \text{se} & a\leq x\leq b \\ 
 1 & \text{se} & x\geq b 
    \end{array}\right. 
 \end{align*}
$$
Si ha che: 
$$
\Large
\begin{align}
E(X) = \int_{a}^{b} x \frac{1}{b-a}\; dx = \frac{b+a}{2}  \\ \\
V(X) = \frac{(b-a)^{2}}{12}
\end{align}
$$
# Modello esponenziale 
> Utilizzato per rappresentare durate e tempi di vita o funzionamento, nel caso in cui sia plausibile assumere la proprietà di assenza di memoria o usura. 

$$
\Large
X \sim Esp(\lambda)
$$
Con $S_{X} = [0, +\infty[$
Funzione di densità: 
$$
\Large
\begin{align*}
 f_{X}(x;\lambda)=\left\{
 \begin{array}{rrr} 
 \lambda e^{ -\lambda x } & \text{se} & x \in S_{X} \\ 
 0 & & \text{altrimenti} & \\ 
    \end{array}\right. 
 \end{align*}
$$
Funzione di ripartizione: 

$$
\Large
\begin{align*}
 F_{X}(x;\lambda)=\left\{
 \begin{array}{rrr} 
 1-e^{ -\lambda x } & \text{se} & x > 0 \\ 
 0 &  \text{se}  & x \leq 0 & \\ 
    \end{array}\right. 
 \end{align*}
$$
