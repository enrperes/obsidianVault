---
title: Modelli Statistici
author: Enrico
titlepage: "true"
toc-own-page: "true"
---
# Modello uniforme discreto 

> Descrive esperimenti con numero finito di esiti equiprobabili

$$ \color{orange} 
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

# Modello di Bernoulli 
> Esperimenti nei quali si vuole solamente verificare se un evento si è verificato o meno. 

(esempio $n$ articoli, $x$ difettosi)

$$
\Large \color{orange} 
X \sim Ber(\pi)
$$
$$
\Large
\begin{align}

f_{x}(X) = \pi^{x}(1-\pi)^{1-x}  \\

\text{con x = 0, 1}
\end{align}
$$

Inoltre: 
$$
\Large
\begin{align}
E(X) = \pi \\ \\
V(X) = \pi(1-\pi)
\end{align}
$$

# Modello binomiale 
> Esperimenti che possono essere rappresentati come estrazioni con reinserimento da un'urna di composizione nota (esperimento bernoulliano)

$$
\Large \color{orange}
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
\Large \color{orange} 
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
\Large \color{orange}
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
$$
Modello caratterizzato dall'assenza di memoria

# Modello uniforme continuo 
> Descrive esperimenti aleatori rappresentabili come un'estrazione casuale di un numero dall'intervallo $[a,b]$

$$
\Large \color{orange}
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
\Large \color{orange}
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

Si ha che: 
$$
E(X) = \frac{1}{\lambda}, \;\;\;\;\;\;\; V(X) = \frac{1}{\lambda^{2}}
$$
# Modello normale o Gaussiano
> il più importante. Usato in vari contesti, in particolare per descrivere presenza di caratteri antropometrici (struttura e peso) e per approssimare diverse distribuzioni di probabilità discrete e continue. 

$$\color{orange}
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
\begin{align}
E(X) = \mu \\ 
V(X) = \sigma^{2}
\end{align}   
$$
Se $\mu = 0$ e $\sigma^{2}=1$ si ottiene la **distribuzione normale standard**: $\Large N(0,1)$. 

# Modello $\chi^{2}$
$$\color{orange}
\Large
Y \sim \chi^{2}(n)
$$
è una variabile casuale continua con supporto $S_{Y} = [0, +\infty[$ e: 
$$
\Large
\begin{align}
E(Y) = n \\
V(Y) = 2n
\end{align}
$$
Per $n \to +\infty$ la distribuzione di probabilità tende alla distribuzione normale
Funzione di densità: 
$$
\Large
f(x) = \frac{1}{2^{\frac{g}{2}} \displaystyle \int_{0}^{+ \infty} e^{-x}x^{(\frac{g}{2})-1}\, dx } x^{\frac{g}{2}-1}e^{-\frac{x}{2}}
$$

# Modello t-student
$$
\color{orange} \Large
T \sim t(n)
$$
Variabile casuale continua con supporto $S_{t} = \mathbb{R}$ e: 
$$
\Large
\begin{align}
E(T) = 0 \\
V(T) = \frac{n}{n-2}
\end{align}
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
\color{orange}
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

----
# Teorema del limite centrale 

> Data una successione di V.C. $X_{i}$ indipendenti con media $\mu$ e varianza $\sigma^{2}$, allora la somma e media campionaria standardizzate coincidono. 

$$
\Large
\begin{align}
Z_{n } = \frac{\bar{X}-\mu}{\sqrt{ \frac{\sigma^{2}}{n} }} = \frac{S_{n}-n\mu}{\sqrt{ n\sigma^{2} }}  \to Z \sim N(0,1)  \\ \\
Z_{n} = \frac{(\bar{X}_{n}-\mu)\sqrt{ n }}{\sigma} \to Z \sim N(0,1)

\end{align}
$$
 Le distribuzioni gaussiane approssimate si possono usare anche per le V.C. **non gaussiane**
 Per $\Large n$ **elevato** si usano le distribuzioni approssimate: 
$$
\Large
\begin{align}
\bar{X_{n}}\sim \left( \mu, \frac{\sigma^{2}}{n} \right)  &  &;  &  & S_{n} \sim (n\mu, n\sigma^{2})
\end{align}
$$
Inoltre, per $\Large n$ elevato, vale che: 
$$
\Large
\begin{align}
 P(a<\bar{X_{n}}\leq b) \doteq \Phi\left( \frac{b-\mu}{\left(\sigma / \sqrt{ n } \right)} \right)- \Phi\left( \frac{a-\mu}{(\sigma/\sqrt{ n })} \right)  \\ \\ \\
P(a<S_{n}\leq b) \doteq \Phi\left( \frac{b-n\mu}{\sigma \sqrt{ n }} \right) - \Phi \left( \frac{a-n\mu}{\sigma \sqrt{ n }} \right)
\end{align}
$$