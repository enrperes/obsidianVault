---
title: Modelli Statistici
author: Enrico
titlepage: "true"
titlepage-color: "B0E0E6"
---

# Modello uniforme discreto 

> Descrive esperimenti con numero finito di esiti equiprobabili

$$ \color{blue} 
\Huge X\sim Ud(x_{1},\dots,x_{n})
$$

Funzione di densità

$$
\Large
    f_{X}(x; x_{1}, \dots, x_{n})=\left\{
    \begin{array}{rrr}
     \frac{1}{n} & \small\text{se} & x=x_{1}, \dots, x_{n}\\ \\
     0 & &\small\text{altrimenti}\\
    \end{array}\right.
$$

Inoltre: 

$$
\Large
E(X) = \sum_{i=1}^{n} \frac{x_{i}}{n} = \frac{n+1}{2} \qquad 
V(X) = \sum_{i=1}^{n}\frac{(x_{i}-E(X))^{2}}{n} = \frac{n^{2}-1}{12}
$$

# Modello di Bernoulli 
> Esperimenti nei quali si vuole solamente verificare se un evento si è verificato o meno. 

(esempio $n$ articoli, $x$ difettosi)

$$
\Large \color{blue} 
X \sim Ber(\pi)
$$

$$
\Large
\begin{array}{rrr}
f_{x}(X) = \pi^{x}(1-\pi)^{1-x} \\
\small \quad \text{con x = 0, 1}
\end{array}
$$
 
Inoltre: 

$$
\Large
E(X) = \pi \\ \\
V(X) = \pi(1-\pi)
$$

# Modello binomiale 
> Esperimenti che possono essere rappresentati come estrazioni con reinserimento da un'urna di composizione nota (esperimento bernoulliano)

$$
\Large \color{blue}
X \sim Bi(n, p) 
$$

Con $S_{X}=\{0, \dots, n\}$ e $n$ che indica il numero di prove indipendenti, $p$ la probabilità comune di successo. 
Funzione di densità: 

$$
\Large
 f_{X}(x;\; n,p)=\left\{
 \begin{array}{rrr} 
 \binom{n}{x} p^{x} (1-p)^{n-x}  & \small\text{se} &x \in S_{X} \\ 
 0 \qquad \small\text{altrimenti} & \\ 
    \end{array}\right. 
$$

Inoltre: 

$$
\Large
E(X_{i})= np \\ \\
V(X )= np(1-p)
$$

# Modello Poisson
> Descrive problemi di conteggio quando non c'è una limitazione superiore per il supporto o problemi in cui tale limitazione è irrilevante. 

$$
\Large \color{blue} 
X \sim P(\lambda)
$$

Con $S_{X} = \mathbb{N}$
Funzione di densità: 

$$
\Large
 f_{X}(x; \lambda)=\left\{
 \begin{array}{rrr} 
  \frac{\lambda^{x} e^{ - \lambda }}{x!} & \quad \small\text{se} & x \in S_{X}\ \\ 
 0 \qquad \small \text{altrimenti} & \\ 
\end{array}\right.
$$

Si ha che: 

$$
 E(X) = \lambda \\
V(X)= E(X^{2})- (E(X))^{2} = \lambda
$$

Quindi media e varianza coincidono a $\lambda$

# Modello geometrico 
> Descrive il tempo di attesa, espresso come il numero di replicazioni indipendenti di un esperimento bernoulliano, con probabilità di successo $p$ per osservare per la prima volta un successo. 

$$
\Large \color{blue}
X \sim Ge(p)
$$

con $S_{X} = \mathbb{N}^+$ 
Funzione di densità: 

$$
\Large
 f_{X}(x; \lambda)=\left\{
 \begin{array}{rrr} 
 (1-p)^{x-1}p & \small\text{se} & x\in S_{X} \\ 
 0 \qquad \small\text{altrimenti} & \\ 
    \end{array}\right. 
$$

Si ha che: 

$$
E(X) = \frac{1}{p}  \\
V(X) =  \frac{1-p}{p^{2}}
$$

Modello caratterizzato dall'assenza di memoria

# Modello uniforme continuo 
> Descrive esperimenti aleatori rappresentabili come un'estrazione casuale di un numero dall'intervallo $[a,b]$

$$
\Large \color{blue}
X \sim U(a,b)
$$

Con $S_{X} = [a,b]$
Funzione di densità: 

$$
\Large
 fX(x; a,b)=\left\{
 \begin{array}{rrr} 
 \frac{1}{b-a} & \small\text{se} & a\leq x \leq b \\ 
 0 \qquad \small\text{altrimenti} & \\ 
    \end{array}\right. 
$$

Funzione di ripartizione: 

$$
\Large
 F_{X}(x;a,b)=\left\{
 \begin{array}{rrr} 
 0 & \small\text{se} & x < a \\ 
 \frac{x-a}{b-a} & \small\text{se} & a\leq x\leq b \\ 
 1 & \small\text{se} & x\geq b 
    \end{array}\right. 
$$

Si ha che: 

$$
\Large
E(X) = \int_{a}^{b} x \frac{1}{b-a}\; dx = \frac{b+a}{2}  \\ \\
V(X) = \frac{(b-a)^{2}}{12}
$$

# Modello esponenziale 
> Utilizzato per rappresentare durate e tempi di vita o funzionamento, nel caso in cui sia plausibile assumere la proprietà di assenza di memoria o usura. 

$$
\Large \color{blue}
X \sim Esp(\lambda)
$$

Con $S_{X} = [0, +\infty[$
Funzione di densità: 

$$
\Large
 f_{X}(x;\lambda)=\left\{
 \begin{array}{rrr} 
 \lambda e^{ -\lambda x } & \small\text{se} & x \in S_{X} \\ 
 0 \qquad \small\text{altrimenti} & \\ 
    \end{array}\right. 
$$

Funzione di ripartizione: 

$$
\Large
 F_{X}(x;\lambda)=\left\{
 \begin{array}{rrr} 
 1-e^{ -\lambda x } & \small\text{se} & x > 0 \\ 
 0 &  \small\text{se}  & x \leq 0  \\ 
    \end{array}\right. 
$$

Si ha che: 
$$
E(X) = \frac{1}{\lambda}, \qquad V(X) = \frac{1}{\lambda^{2}}
$$

# Modello normale o Gaussiano
> il più importante. Usato in vari contesti, in particolare per descrivere presenza di caratteri antropometrici (struttura e peso) e per approssimare diverse distribuzioni di probabilità discrete e continue. 

$$\color{blue}
\Large
X \sim N(\mu, \sigma^{2})
$$

Con $S_{X}=\mathbb{R}$. La funzione di densità: 

$$ \Huge
f_{X}(x; \mu, \sigma) =  \frac{1}{\sqrt{ 2\pi }\sigma}^{-\frac{(x-\mu)^{2}}{2\sigma^{2}}} 
$$

Il parametro $\mu$ è sia la moda che la mediana. Inoltre: 

$$
\Large
E(X) = \mu \\ 
V(X) = \sigma^{2}
$$

Se $\mu = 0$ e $\sigma^{2}=1$ si ottiene la **distribuzione normale standard**: $\Large N(0,1)$. 

# Modello $\chi^{2}$

$$\color{blue}
\Large
Y \sim \chi^{2}(n)
$$

è una variabile casuale continua con supporto $S_{Y} = [0, +\infty[$ e: 

$$
\Large
E(Y) = n \\
V(Y) = 2n
$$

Per $n \to +\infty$ la distribuzione di probabilità tende alla distribuzione normale
Funzione di densità: 

$$
\Large
f(x) = \frac{1}{2^{\frac{g}{2}} \displaystyle \int_{0}^{+ \infty} e^{-x}x^{(\frac{g}{2})-1}\, dx } x^{\frac{g}{2}-1}e^{-\frac{x}{2}}
$$

# Modello t-student
$$
\color{blue} \Large
T \sim t(n)
$$

Variabile casuale continua con supporto $S_{t} = \mathbb{R}$ e: 

$$
\Large
E(T) = 0 \\
V(T) = \frac{n}{n-2}
$$

Anche questo tende alla dist. normale per $n$ grande. 
La funzione di densità ha formula: 

$$\Large
f(t) = \frac{\Gamma \left( \frac{g+1}{2} \right)}{\sqrt{ \pi \cdot g }\;\;\Gamma\left( \frac{g}{2} \right)} (1+ \frac{t^{2}}{g})^{-\frac{g+1}{2}}
$$

Dove $\Gamma\left( \frac{g}{2} \right)$ indica l'integrale: 

$$
\Large \Gamma\left( \frac{g}{2} \right) = \displaystyle \int_{0}^{+\infty} e^{-x}x^{\frac{g}{2}-1} \, dx  
$$

# Modello F-fisher

$$
\color{blue}
\Large
F \sim F(n,m)
$$

Supporto $S_{F} = [0, +\infty[$ e: 

$$
\Large
E(F) = \frac{m}{m-2}
$$

La funzione di densità ha formula: 

$$
\Large
f(x) = \frac{\nu_{1}^{\nu_{1}/2}\;\;\nu_{2}^{\nu_{2}/2}\;\; \Gamma\left( \frac{\nu_{1}+\nu_{2}}{2} \right)}{\Gamma \left( \frac{\nu_{1}}{2}\right)\Gamma\left( \frac{\nu_{2}}{2} \right)} \frac{x^{\frac{\nu_{1}}{2}-1}}{(\nu_{1}x+\nu_{2})^{(\nu_{1}+\nu_{2})/2}}
$$

Con parametri $\nu_{1}, \nu_{2}$ positivi. 


# Teorema del limite centrale 

> Data una successione di V.C. $X_{i}$ indipendenti con media $\mu$ e varianza $\sigma^{2}$, allora la somma e media campionaria standardizzate coincidono. 

$$
\Large
Z_{n } = \frac{\bar{X}-\mu}{\sqrt{ \frac{\sigma^{2}}{n} }} = \frac{S_{n}-n\mu}{\sqrt{ n\sigma^{2} }}  \to Z \sim N(0,1)  \\ \\
Z_{n} = \frac{(\bar{X}_{n}-\mu)\sqrt{ n }}{\sigma} \to Z \sim N(0,1)
$$

 Le distribuzioni gaussiane approssimate si possono usare anche per le V.C. **non gaussiane**
 Per $\Large n$ **elevato** si usano le distribuzioni approssimate: 
 
$$
\Large
\bar{X_{n}} \sim \left( \mu, \frac{\sigma^{2}}{n} \right) \qquad S_{n} \sim (n\mu, n\sigma^{2})
$$

Inoltre, per $\Large n$ elevato, vale che: 
$$
\Large
 P(a<\bar{X_{n}}\leq b) \doteq \Phi\left( \frac{b-\mu}{\left(\sigma / \sqrt{ n } \right)} \right)- \Phi\left( \frac{a-\mu}{(\sigma/\sqrt{ n })} \right)  \\ \\ \\
P(a<S_{n}\leq b) \doteq \Phi\left( \frac{b-n\mu}{\sigma \sqrt{ n }} \right) - \Phi \left( \frac{a-n\mu}{\sigma \sqrt{ n }} \right)
$$