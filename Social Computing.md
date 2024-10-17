---
tags:
  - materia
---
[[info - social computing]]

---

> Cosa succede quando i sistemi computazionali vengono a contatto con i sistemi sociali 


Argomenti del corso: 

# [[1. Social Media]]

> [!example] Argomenti
> - Intro 
> 	- Esempi di SM
> 	- Importanza per la scienza dei dati 
> - Concetti
> 	- Definizioni
> 	- Esempi 
> 	- Classificazione (Generalisti, verticali, privati)
> - Fondamenti
> 	- Cenni storici 
> 	- Analisi reti sociali
> 	- Grafi e reti
> 	- Scienza delle reti
> 	- misure e modelli
> - Applicazioni

# 2. Crowdsourcing

> [!attention]  **Argomenti** 
 > - Crowdsourcing 
 > - Amazon Mechanical Turk
 > - Human computation
 > e LAB
 
- Human-In-The-Loop
- Artificial Intelligence
- Labeling for ML
---

# Grafi 
[...]
- Lista di archi 
- Lista di adiacenza
- Matrice di adiacenza ★

Una **componente** di un grafo indiretto è un sottografo connesso. C'è un cammino indiretto fra ogni coppia di nodi della componente. 
Nei grafi diretti si ha una componente fortemente connessa (SCC) quando per ogni coppia di nodi $u$ e $v$ della SCC c'è un cammmino diretto da $u$ a $v$ e viceversa. 

# Reti 
> Rete (network) = grafo (grande) con nodi e archi che esistono nel mondo reale.

Mondo reale nel seno che le conclusioni hanno conseguenze non solo teoriche. 

Di solito per rappresentare i problemi su una rete si usano grafi e risultati della teoria deli grafi. 

## Misura delle reti 

### Degree centrality 
> più è alto il grado di un nodo, più è centrale. 


> [!abstract]+ Definizione
> $d_{i}$ è il grado (numero di amici) del nodo $v_{i}$ 
> Nei grafi diretti (le connessioni hanno direzione), degree centrality si divide in grado uscente e entrante: **in-degree**, **out-degree**. 
> $$
> \Large C_{d}(v_{i})=d_{i}
> $$

*Esempio:* 
Degree centrality di $v_{i}$ è $d_{1} = 8$ 
Per gli altri $d_{j}=1, j\neq 1$ 

![[Pasted image 20241008150018.png#invert|300]]


#### Centralità di grado nei grafi diretti 
**in-degree:** numero di archi entranti 
**out-degree**: numero di archi uscenti. 
#### Centralità di grado normalizzata
Consente di confrontare nodi di grafi di dimensioni diverse. 
$$
\Large C_{D}(v) = \frac{deg(v)}{N-1}
$$
Dove N-1 è il massimo di connessioni possibili per un nodo: non può connettersi a tutti gli altri N-1 nodi del grafo. 
Stessa cosa vale per in e out degree. 

### Betweenness centrality 
Altro modo di esprimere la centralità "quanto uno è in mezzo ai piedi". Identifica i nodi che agiscono come ponti tra altre coppie di nodi. 

> *Quanto un nodo è importante nel connettere altri nodi tramite cammini* (si guardano solo gli shortest path)
$$
\Large C_{b}(v_{i}) = \sum_{{s\neq t\neq v_{i}}} \frac{\sigma_{st}(v_{i})}{\sigma_{st}}
$$
dove: 
$\Large \sigma_{st}(v_{i})$ = numero di cammini più corti da s a t che passano per $v_{i}$

$\Large \sigma_{st}$ = numero di cammini più corti dal nodo s al nodo t (information pathways)

> [!abstract]+  **Betweenness centrality** 
 > Alta B.C. è fondamentale per il flusso di info nella rete. Tante interazioni tra nodi devono passare tra di esso: intermediario cruciale
 > Bassa B.C. ha poca influenza sui cammini tra altri nodi. è periferico o ridondante rispetto alla connessione globale della rete. 

![[Pasted image 20241008150747.png#invert|650]]
Nell'esempio infattti V₂ ha Betweenness Centrality maggiore. 

#### Betweenness centrality normalizzata
Il numero massimo di cammini possibili tra qualsiasi coppia di nodi $s$ e $t$ è: $\frac{(N-1)(N-2)}{2}$ per i grafi non diretti. Per i grafi diretti non dividere per 2. 
Quindi il valore normalizzato: 
$$
\Large C_{b}^{n}= \frac{C_{b}(v)}{\frac{(N-1)(N-2)}{2}}
$$
(Per i grafi non diretti)
### Closeness Centrality 

> [!abstract]+  **** 
 > Misura quanto un nodo è vicino agli altri, la sua accessibilità all'interno del grafo considerando la somma delle distanze tra quel nodo e tutti gli altri. 
 > Definita come l'inverso della somma delle distanze più brevi dal nodo v a tutti gli altri nodi del grafo. 
 > $$
> C_{c}(v)=\frac{1}{\sum_{u\neq v}d(v,u)}
> $$

Un nodo con alta C.C. è *vicino* in termini di cammini minimi a molti altri nodi. 
Un nodo con bassa C.C. necessita di più passaggi per raggiungere la maggior parte degli altri nodi. 

Riassumendo: 
### Degree centrality 
- High Degree: Un nodo (persona o entità) ha molte connessioni o collegamenti diretti con altri nodi 
- Low Degree: Un nodo ha poche connessioni

### Closeness centrality 
- High: Un nodo è relativamente vicino agli altri nodi della rete: può raggiungere altri nodi con pochi step
- Low: Quando un nodo è più lontano dagli altri e per raggiungere il resto della rete servono tanti step. 

### Betweenness Centrality 
- High: Un nodo fa da tramite tra parti diverse della rete, facilitando la comunicazione tra nodi che non sono connessi direttamente. 
- Low: Un nodo non ha una posizione centrale nella rete e le comunicazioni lo bypassano. 
![[Pasted image 20241014190335.png#invert|800]]

![[Pasted image 20241015155002.png#invert]]

---

## PageRank
> [!info]+  **Fortuna di Google?** 
 > Non è la principale ragione per cui Google ha preso il monopolio: 
 > - non era l'unica innovazione 
 > - PageRank è solo il primo rudimentale algoritmo 

> PageRank of page $u$ is high if $u$ is linked from pages with high PageRank. 
> - From many pages
> - From pages with high Page Rank
> - Both: many high PageRank pages


![[Pasted image 20241015002532.png#invert|500]]

Dove: 
$r(v)$ = PageRank of $v$ 
$I(v)$ = set of pages that link $v$ 
$O(v)$ = set of pages linked from $v$

Quindi il PageRank del nodo **V** è dato dalla sommatoria dei PageRank (primo insieme) diviso il numero di outlink di ogni pagina (cardinalità del secondo insieme)
Ogni pagina $u$ contribuisce al PageRank delle pagine successive. 
Quindi $v$ riceve da $u$ una parte del PageRank di $u$.
$$
\Large \frac{r(u)}{|O(u)|}
$$

Serve una normalizzazione del PageRank, altrimenti cresce all'infinito: 
$$
\Large \forall v,  r(v)= c \cdot \sum_{u \in I(v)} \frac{r(u)}{|O(u)|}
$$
Tutti i valori PageRank delle pagine $u_{i}$ sono raccolti in un vettore $\Large r$, calcolato in modo iterativo, fino alla convergenza. Per aggiornare $\Large r$ si moltiplica per la matrice $\Large P$, che rappresenta i valori di probabilità di transizione tra pagine. (vedi sotto)
Si ottiene: 
$$
\Large r_{i+1}=r_{i}\cdot P
$$
Il processo viene ripetuto fino a quando si soddisfa la condizione di terminazione, che può essere: 
- $r_{i+1}=r_{i}$ 
- $|r_{i+1} - r_{i}| < \varepsilon$ 
Quando la convergenza è raggiunta, il vettore $r$ contiene i valori di PageRank finali di tutte le pagine. 
### Random Walks 
Pensare a "each page distributes its PageRank value to the linked pages" come: 
- User che nel browser naviga a caso nelle pagine web. 
- parte da una pagina a caso 
- Ad ogni step, sceglie un link a caso e lo segue. Ogni link ha la stessa probabilità. 
Il PageRank si può quindi pensare come la *probabilità* che l'utente navighi su quella pagina durante un cammino random. 

### Markov chain
> Modo formale per rappresentare le Random Walks

Definita da una matrice $P$, $n \times n$ con $n$ stati con delle probabilità di transizione. 
Ovvero: è un grafo pesato con $n$ nodi (stati)

![[Pasted image 20241015125730.png#invert|350]]

$P_{ij}$ indica la probabilità che dal nodo $i$ si passi al nodo $j$. 

Esempio:

![[Pasted image 20241015125850.png#invert]]

Probabilità che dal nodo 1 vado al nodo 2: $\Large \frac{3}{4}$
Dal nodo 2 è più probabile stare nel nodo 2 ($\Large \frac{3}{4}$) che andare in 1. 

### Probability Vector
invece di rappresentare la posizione con il numero dello stato, si rappresenta con un vettore: 
tutti 0, 1 in corrispondenza della posizione corrente. 

Vantaggi: generalizzabile a posizioni con probabilità: valori da 0 a 1 in base alla probabilità di essere in quella posizione (la somma deve fare 1)

### Step of the walk
Quindi avendo la matrice e il vettore di probabilità si può rappresentare un passo della camminata con la moltiplicazione matrice x vettore. 

![[Pasted image 20241015130851.png#invert]]
Il vettore risultante indica le probabilità di passare da $i$ a $1\dots n$ (nel caso base, quando la probabilità è 1). 
Avendo ad esempio 2 valori da 0.5 "sommano" il loro contributo nel risultato finale. 

Si cerca $x$ tale che $\Large x = x \cdot P$ --> convergenza
### Eigenvectors
Quindi, per definizione, $x$ è l'autovettore di $P$. 
Non sempre esiste: 

### Ergodic Markov Chains
> - A path exists from any state to any other state. (=grafo fortemente connesso)
> - Ad ogni passo della camminata ci dev'essere una probabilità > 0
> - Aperiodica: non devono esserci loop "infiniti"


## HITS: Hyperlink Induced Topic Search

- **Hubness value**: $\Large h(x)$ 
- **Authority value**: $\Large a(x)$

![[Pasted image 20241015133815.png#invert|450]]
#### Authority 
#### Hubness


### Matrices and vectors visualization

2 vectors (column) for $H$ and $A$.
Per calcolare l'*hubness* di $u_{i}$: 
- sommare tutti i valori di authority delle pagine linkate da $u_{i}$, ovvero: 
- Sommare tutti i valori di authority, moltiplicando per 1 quelli linkati e per 0 gli altri: 

![[Pasted image 20241015134846.png#invert]]

= moltiplicazione del vettore riga per la colonna a. 
Il vettore riga è dato dalla i-esima riga della matrice di adiacenza $A$: 

![[Pasted image 20241015135025.png#invert|500]]
$$
\Large h = A\cdot a 
$$

![[Pasted image 20241015135747.png#invert|450]]

[...]

## Remarks

### PageRank
Pros: non spammabile, quality index for the whole web, used in Google 
Cons: Not query specific, complex computation. 

### HITS, Kleinberg
Pros: Query specific, works on small graphs, hubs and auth
Cons: easily spammable (on the hubs), complex computation (on small graphs

- **PageRank is a query-independent algorithm, while HITS is query-dependent**. This means that PageRank assigns a "quality" score to each web page regardless of the search query, while HITS scores pages based on their relevance to a particular query.
- **PageRank works on the entire web graph, while HITS operates on a smaller subset of pages called the Base Set**. The Base Set is generated by expanding the initial set of retrieved pages (Root Set) with their in-links and out-links.
- **PageRank models a random walk on the web, while HITS uses a circular, recursive idea to identify hub and authority pages**. PageRank views web pages as states in a Markov chain and assigns scores based on the probability of landing on a page during a random walk. HITS, on the other hand, assigns two scores to each page: a hub score (H) based on its out-links to high-authority pages, and an authority score (A) based on its in-links from high-hub pages.
- **PageRank is more resistant to spam than HITS**. Since PageRank considers the entire web graph, it is difficult for spammers to manipulate its results. HITS, on the other hand, is more susceptible to spam because it relies on a smaller set of pages that can be more easily influenced.
- **PageRank is computationally more complex than HITS**. Because PageRank calculates scores for the entire web, it requires more computational resources. HITS, working on a smaller Base Set, is computationally less demanding. However, even for HITS, ensuring convergence might be challenging.

> [!quote]  **Seeley, 1949** 
 > «We are involved in an "infinite regress": an actor's status is a function of the status of those who choose him; and their status is a function of those who choose them, and so on ad infinitum»
 
# Social Network Analysis (SNA)

## Terminology 
Actor, Relation, Strength, Weight, Ties...

![[Pasted image 20241015144528.png#invert]]

- **Local Bridge**
	- Arco fra due nodi che sarebbero più lontani senza di esso. 
	- Di grado k: k sarebbe la distanza fra i due nodi senza il ponte. (Tamara-Boris, k=3)
- **Global Bridge**
	- Se rimosso, disconnette la rete (Tom-Trevor)
- **Triangle**
	- Subgraph completo di 3 nodi (Mike-Alex-Peter)
- **Weak Tie**
	- Arco debole se appartiene a pochi triangoli
	- Mike-Peter: Sono amici, ma i loro amici non sono amici 
- **Strong Tie**
	- Arco forte se appartiene a tanti triangoli. 
	- Trevor-George: sono amici e anche i loro amici sono amici tra di loro 
	- Tipicamente corrispondono a legami di amicizia più forti. 
- **Geodesic**
	- Shortest path between two nodes (La *geodesica* tra due nodi è il cammino più breve)
	- = linea più breve che connette due punti su una superficie. 
- **Diameter**
	- Lunghezza della geodesica più lunga della rete. 
	- "quanto lontani" possono essere due nodi nella rete. 
	- Steve - Nigel hanno diametro 6
- **Degree of a node**
	- Number of arcs 
- **Degree Distribution**
	- For each degree, number of nodes that have that degree
- **Densità**
	- Proporzione di archi / nodi: 
	- $\Large \frac{arcs}{\frac{nodes*(nodes-1)}{2}}$ 
- **Clustering Coefficient (C)**
	- Di un nodo: numero di archi 

Relevant: [The Strength of weak ties](https://www.jstor.org/stable/pdf/2776392.pdf)


## Transitività e Reciprocità 
Transitività = Se A amico di B e B amico di C, A amico di C
Reciprocità = A amico di B, B amico di A


