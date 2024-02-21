---
titlepage: "true"
title: Analisi
author: Enrico
titlepage-color: 4b4b4b
tags:
  - materia
---
#materia
# Analisi Matematica

### [[Analisi-info]]
### [[Analisi-appunti]]

2022-11-18

https://www.overleaf.com/project/637494482e5d81d38b74b34f/detacher

# Teoria degli insiemi 
## Notazione Generale

Gli insiemi contengono **elementi** e si identificano tra parentesi graffe $\{ \;\;\; \}$ 
L'appartenenza si indica con $\in$. Il numero di elementi di un insieme $A$ è detto **cardinalità** e si esprime come $|A| = n$. L'insieme vuoto è rappresentato con $\emptyset$

### Notazioni:
1. **Elencazione:** ogni elemento è elencato e separato tramite $\large ,$ . In caso di insiemi infiniti si possono usare i "..." e la forma dell'elemento. 
	- $\mathbb{N} = \{0,1,2...\}$ oppure $\mathbb{N} = \{0,1,2...n,...\}$
2.  **Selezione**: Si evidenzia che due insiemi si prendono gli elementi *tali che* abbiano una certa proprietà: 
	- $A = \{n \in \mathbb{N} | n$ è divisibile per $2\}$ 
3.  **Funzionale:** Si evidenzia la forma che gli elementi assumono al variare di un parametro definito. 
	- $A = \{2k | k \in \mathbb{N}\}$
## Operazioni tra insiemi 
- **Intersezione**: $A \cap B \to$ Elementi che appartengono sia in $A$ che in $B$
- **Unione**: $A \cup B \to$ Elementi che appartengono o in $A$ o in $B$ o in entrambi. 
- **Differenza**: $A \setminus B \to$ Elementi che appartengono in $A$ ma non in $B$. 
- **Prodotto cartesiano**: $A \times B \to$ L'insieme delle coppie ordinate $(a,b)\; \forall a \in A \land \forall b \in B$ 
## Relazioni tra insiemi 
- **Inclusione**: $A \subseteq B \to$ tutti gli elementi di $A$ sono anche elementi di $B$. ($A$ è sottoinsieme di $B$)
	- L'insieme $\emptyset$ è sottoinsieme di tutti gli insiemi, incluso se stesso. 
- **Disgiunzione**: $A \cap B = \emptyset \to$ due insiemi sono disgiunti quando nessun elemento di $A$ è anche elemento di $B$ e viceversa. 
## Insiemi Notevoli
- **Numeri naturali**: $\mathbb{N} = \{ 0,1,2,3,...\}$ 
- **Numeri interi:** $\mathbb{Z} = \{ ...,-2,-1,0,1,2,...\}$ 
- **Numeri razionali**: $\mathbb{Q} = \{ \frac{a}{b} \; \; \forall a,b \in \mathbb{Z} \land b \neq 0 \}$ 
- **Numeri reali**: $\mathbb{R}$
- **Numeri irrazionali**: $\mathbb{I} = \mathbb{R} \setminus \mathbb{Q}$  
- **Numeri complessi**: $\mathbb{C} = \{x+iy \; | \; \forall x, y \in \mathbb{R} \}$ 
Dunque $\mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q} \subset \mathbb{R}$ 
## Insiemi notevoli definiti da prorietà
- **Circonferenza unitaria**: $S_1: \{(x,y) \in \mathbb{R}^2 \; | \; x^2 + y^2 = 1\}$ 
- **Sfera unitaria**: $S_2: \{(x,y,z) \in \mathbb{R}^3 \; | \; x^2 + y^2 + z^2 = 1 \}$
- **Superfici Algebriche**: $S_n: \{(x_1, x_2, ..., x_n) \in \mathbb{R}^{n+1} \; | \; x_1^2 + x_2^2 + ... + x_n^2 = 1 \}$
	- l'indice $n$ indica la dimensione della superficie in uno spazio di $n+1$ dimensioni. 

# Applicazioni 
## Definizione
> Dati due insiemi $A$ e $B$, un'*applicazione* da $A$ in $B$ è una legge che ad ogni elemento di $A$ associa un elemento di $B$

$A$ è detto **Dominio**, mentre $B$ è detto **Codominio**.
$$f: A \to B$$
Un'applicazione può essere descritta elencando come vengono mappati gli elementi, oppure attraverso l'esplicazione della legge che li mappa.
>[!list]- Esempi 
> - $f: 0 \mapsto 1$
> 	- $f(0) = 1$
> - $f: 1 \mapsto 2$
> 	- $f(1)=2$
> - $f: 2 \mapsto 3$
> 	- $f(2) = 3$

L'immagine di $A$ rispetto ad $f$ si scrive $\large f(a) = \{b \in B \; | \; \exists a \in A \;|\; f(a) = b \} \subseteq  B$  
## Proprietà
### Iniettività 
$F: A \to B$ è detta invettiva se: 
$$\Large \forall x,y \in X, f(x) = f(y) \Rightarrow x = y$$
> Una funzione si dice **iniettiva** se due elementi distinti del codominio hanno immagini distinte. Ossia $a_1 \neq a_2$ implica $f(a_1) \neq f(a_2)$ e $a_1 = a_2$ implica $f(a_1) = f(a_2)$ 

ovvero: $$\Large \forall a_1 ,a_2 \in A (a_1 = a_2 \to f(a_1) = f(a_2) \land \forall b \in f(A) \exists a \in A \; | \; f(a) = b$$
![[43B40C39-5993-49F8-9F02-11CC7DCB49E6.png|200]]


### Suriettività (surgettività)
$\large f : X \to Y$ è detta suriettiva se: $$\Large \forall y \in Y \;\; \exists x \in X \;|\; f(x)=y$$
> Una funzione si dice **suriettiva** quando ogni elemento del **codominio** è immagine di almeno un elemento del **dominio.** Si ha che l'immagine coincide con il codominio 

ovvero:
$$\Large f(a)=B \;\; \land \;\; \forall b \in B \;\;\; f^{-1}(b) \neq \emptyset$$
![[7839874C-F0EA-4D7D-9098-5186D65E648D.png|200]] non esiste alcun elemento di $Y$ che non sia puntato da un elemento di $X$ 

### Biiettività (Biunivocità)
> una funzione $f$ è detta biunivoca se e solo se è sia iniettiva sia suriettiva.

## Controimmagine 
Data $f:A \to B$ e un elemento $b \in B$, è detta *controimmagine di* $\large b$: $$\Large f(b)^{-1}=\{a \in A \; |\; f(a) = b \}$$
> La controimmagine di un insieme è l'insieme degli elementi del dominio che vengono mandati nell'insieme dalla funzione. 

## Composizione
	Siano $A, B, C$ insiemi e siano $f: A \to B$ e $g: B \to C$. La funzione $g \circ f: A \to C$ è detta "*g composto f* " ed è  definita tramite la legge: $$\Large \forall a \in A \;\; g\;  \circ f(a) = {g(f(a))}$$
## Inversa 
### Inversa Destra o Sezione
Data $f: A \to B$ è detta **inversa Destra** una funzione $g: B \to A$ se vale che: $$\Large \forall b \in B \;\;\; f \circ g_{(b)} = b = id_B$$
e $$\Large \forall a \in A \;\; g \circ f_{(a)} = a = id_A$$
$\Large f$ ammette un'inversa Destra se e solo se è [[Analisi#Suriettività (surgettività)|suriettiva]]. 

### Inversa Sinistra 
Data $f: A \to B$ è detta **inversa sinistra** una funzione $g: B \to A$ se $$\Large \forall  a \in A \;\; g\circ f(a) = a = id_A$$
e $$\Large \forall b \in B\;\; f\circ g(b) = b = id_B$$
$\Large f$ ammette un'inversa Sinistra se e solo se è [[Analisi#Iniettività|iniettiva]]. 

### Inversa unica
Una funzione $f:A\to B$ biunivoca ammette un'unica Inversa Destra, che è anche l'unica Inversa Sinistra, detta: $f^{-1} : B\to A$ tale funzione vale $$\Large f \circ f^{-1} = id_B \;\;\;\;\;\;\;\;\; f^{-1}\circ f = id_A$$
## Applicazione delle funzioni

### Numerazione di elementi 
- Dati due insiemi $A$ e $B$ si dice che hanno la stessa cardinalità se $\exists g: A \to B$ biettiva. 
- $\mathbb{N}$ ha la stessa cardinalità di $\mathbb{Z}$ e $\mathbb{Q}$ 
- L'unione di insiemi numerabili è numerabile: 
- $\large \bigcup_{i=0}^{\infty} \; A_i$ è numerabile $\forall i \in \mathbb{N}$ 

### Principio dei cassetti 
Se $card_{(A)} > card_{(B)}$ allora non esistono applicazioni iniettive $A \to B$. 
$$\Large \exists x_1, x_2 \in A \; | \; x_2 \neq x_2 \land f_{x_1} = f_{x_2}$$
# ![[Principio-Induzione]] 
# Principio di buon ordinamento 
> ogni sottoinsieme non vuoto di $\mathbb{N}$ ha un minimo. 

# Teorema di divisione euclidea 
#todo 

