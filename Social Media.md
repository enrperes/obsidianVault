![[1. Social Media]]


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

![[Pasted image 20241008150018.png#invert|200]]


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
![[Pasted image 20241014190335.png#invert|center|700]]

![[Pasted image 20241015155002.png#invert|center|700]]

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


![[Pasted image 20241015002532.png#invert|400]]

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

![[Pasted image 20241015125730.png#invert|300]]

$P_{ij}$ indica la probabilità che dal nodo $i$ si passi al nodo $j$. 

Esempio:

![[Pasted image 20241015125850.png#invert|500]]

Probabilità che dal nodo 1 vado al nodo 2: $\Large \frac{3}{4}$
Dal nodo 2 è più probabile stare nel nodo 2 ($\Large \frac{3}{4}$) che andare in 1. 

### Probability Vector
invece di rappresentare la posizione corrente con il numero dello stato, si rappresenta con un vettore $x$: 
tutti 0; 1 in corrispondenza della posizione corrente. 

Quindi se $x$ è il vettore di probabilità e ha un solo 1, se viene moltiplicato con la matrice $P$ si ottiene la sua i-esima riga, che contiene i valori di probabilità di procedere a un altro nodo, partendo da $i$.

Vantaggi: generalizzabile a posizioni con probabilità: valori da 0 a 1 in base alla probabilità di essere in quella posizione (la somma deve fare 1)

### Step of the walk
Quindi avendo la matrice e il vettore di probabilità si può rappresentare un passo della camminata con la moltiplicazione matrice x vettore. 

![[Pasted image 20241015130851.png#invert|500]]
Il vettore risultante indica le probabilità di passare da $i$ a $1\dots n$ (nel caso base, quando la probabilità è 1). 
Avendo ad esempio 2 valori da 0.5 "sommano" il loro contributo nel risultato finale. 

Si cerca $x$ tale che $\Large x = x \cdot P$ --> convergenza
### Eigenvectors
Quindi, per definizione, $x$ è l'autovettore di $P$. 
Rappresenta una distribuzione stabile delle probabilità, tale the $X_{i+1}=X_{i}$, quindi che rimane invariato al moltiplicare per $P$. 

	Non sempre esiste, ad esempio quando ci sono componenti isolati o quando la la Markov chain non è ergodica.

### Ergodic Markov Chains

> - Esiste un cammino da ogni nodo ad ogni altro nodo. (=grafo fortemente connesso)
> - Ad ogni passo della camminata ci dev'essere una probabilità > 0
> - Aperiodica: non devono esserci loop "infiniti"

> [!info]+  **PageRank Computation** 
 > - Build the matrix $P$ 
 > - Initial random probability vector $r_{0}$ 
 > 	- Se la catena è ergodica, un qualsiasi valore andrà bene (1/N)
 > - $\Large r_{i+1}=r_{i} \cdot P'$  
 > - Stop when $|r_{i+1} - r_{i}| < \varepsilon$ 
 > - Il vettore $r$ trovato è il **PageRank** di tutte le pagine e l'autovettore sinistro di P'. 

```clike
 pagerank(G, d = 0.15, epsilon = 0, num = +inf):
	 N = |G|
	 A = (1-d) * adjacency(G) + d * 1/N
	 r[0] = 1/N
	 for i in [i, num[ :
		 r[i] = r[i-1] * A
		 if r[i] = r[i-1] * A
		 if r[i] - r[i-1] <= epsilon: 
			 return r[i]
	 return r[i]
	
```

## HITS: Hyperlink Induced Topic Search
####  link analysis algorithm similar to PageRank. 
Funziona su set relativamente piccoli. 
### Root and Base sets
L'insieme Root contiene le pagine rilevanti per una query. Sono il punto di partenza per HITS. 
L'insieme Set include anche le pagine vicine al Root Set. 


> Good hubs link good authorities, good authorities are linked by good hubs. 
- **Hubness value**: $\Large h(x)$ 
- **Authority value**: $\Large a(x)$

![[Pasted image 20241015133815.png#invert|450]]

> [!question]+  **Procedure** 
 > - Assign initial $h(x)$ and $a(x)$ to any page in the Base Set. (initially set to 1)
 > - Aggiornare h e a iterativamente con le formule sopra
 > - Stop alla convergenza (quando h(x) e a(x) non variano più)
 
### Matrices and vectors visualization

2 vectors (column) for $H$ and $A$.
Per calcolare l'*hubness* di $u_{i}$: 
- sommare tutti i valori di authority delle pagine linkate da $u_{i}$, ovvero: 
- Sommare tutti i valori di authority, moltiplicando per 1 quelli linkati e per 0 gli altri: 

![[Pasted image 20241015134846.png#invert|500]]

= moltiplicazione del vettore riga per la colonna a. 
Il vettore riga è dato dalla i-esima riga della matrice di adiacenza $A$: 

![[Pasted image 20241015135025.png#invert|500]]
$$
\Large h = A\cdot a 
$$

![[Pasted image 20241015135747.png#invert|450]]

$\Large h$  è l'autovettore di $AA^T$ e $\Large a$ è l'autovettore di $A^TA$
Dove: 
- $AA^T$ è la matrice che rappresenta le relazioni tra le pagine basate sulle loro connessioni in *uscita*. Descrive quanto una pagina è un buon **hub** in base al numero di autorità che linka. 
	- **bibliographic coupligs matrix**
- $A^TA$ è la matrice che rappresenta le relazioni tra le pagine basate sulle conne ssioni in *entrata*. Descrive quanto una pagina è autorevole in base al numero di hub che la linkano 
	- **co-citation matrix**
## Remarks

### PageRank
Pros: non spammabile, quality index for the whole web, used in Google 
Cons: Not query specific, complex computation. 

### HITS, Kleinberg
Pros: Query specific, works on small graphs, hubs and auth
Cons: easily spammable (on the hubs), complex computation (on small graphs

> [!example]- Confronto dettagliato
> - **PageRank is a query-independent algorithm, while HITS is query-dependent**. This means that PageRank assigns a "quality" score to each web page regardless of the search query, while HITS scores pages based on their relevance to a particular query.
> - **PageRank works on the entire web graph, while HITS operates on a smaller subset of pages called the Base Set**. The Base Set is generated by expanding the initial set of retrieved pages (Root Set) with their in-links and out-links.
> - **PageRank models a random walk on the web, while HITS uses a circular, recursive idea to identify hub and authority pages**. PageRank views web pages as states in a Markov chain and assigns scores based on the probability of landing on a page during a random walk. HITS, on the other hand, assigns two scores to each page: a hub score (H) based on its out-links to high-authority pages, and an authority score (A) based on its in-links from high-hub pages.
> - **PageRank is more resistant to spam than HITS**. Since PageRank considers the entire web graph, it is difficult for spammers to manipulate its results. HITS, on the other hand, is more susceptible to spam because it relies on a smaller set of pages that can be more easily influenced.
> - **PageRank is computationally more complex than HITS**. Because PageRank calculates scores for the entire web, it requires more computational resources. HITS, working on a smaller Base Set, is computationally less demanding. However, even for HITS, ensuring convergence might be challenging.

> [!quote]  **Seeley, 1949** 
 > «We are involved in an "infinite regress": an actor's status is a function of the status of those who choose him; and their status is a function of those who choose them, and so on ad infinitum»
 
# Social Network Analysis (SNA)

## Terminology 
Actor, Relation, Strength, Weight, Ties...

![[Pasted image 20241015144528.png#invert|center|700]]

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
> I legami deboli sono spesso più importanti di quelli forti, per la diffusione delle informazioni e delle opportunità sociali. I legami deboli connettono individui appartenenti a gruppi sociali diversi. (ponti tra comunità)


## Transitività e Reciprocità 
Misurano proprietà di un insieme di nodi.

### Transitività
![[Pasted image 20241021083827.png#invert|left|100]] 
Se A amico di B e B amico di C, A amico di C
Nei grafi diretti può avere senso chiedersi se vale $cRa$ o $aRc$. 
Grafo completo != Transitività, però più o completo più è vicino alla transitività. 

Ci sono due indici di transitività: 
#### Coefficiente di clustering LOCALE
> Misura la transitività a livello dei singoli nodi: quanto i vicini di un nodo $v$ sono a loro volta connessi. 
$$C(v_{i}) = \frac{\text{coppie di vicini di v che sono connesse}}{\text{Coppie di vicini di v}}
$$

Fornisce un modo per determinare i "buchi strutturali", dove mancano archi e quindi i nodi non comunicano. 
[[Esempio coefficiente clustering locale|Esempio]]

#### Coefficiente di clustering GLOBALE
> Relativo a tutta la rete, misura la transitività in grafi indiretti. 

Un modo per calcolarla: 
Siccome ogni triangolo ha 6 cammini chiusi di lunghezza 2: 
$$
\large C = \frac{\text{(number of Triangles)}\times 6}{\mid\text{Paths of Length 2}\mid}
$$
### Reciprocità
 Se A amico di B, B amico di A 

![[Pasted image 20241021083755.png#invert|left|100]]
Versione semplificata della transitività, considera cicli di lunghezza 2. 
Per calcolarla: contare il numero di coppie reciproche nel grafo, usando la matrice di adiacenza. 

$$
\large R = \frac{\sum_{i,j,i<j}A_{i,j}A_{j,i}}{\frac{\mid E\mid}{2}}
$$
![[Pasted image 20241021090930.png#invert|600]]

Dopo aver calcolato il quadrato della matrice, si sommano gli elementi della diagonale e si divide per $\frac{1}{m}$, il numero totale di archi possibili. 


## Bilanciamento 
### Bilanciamento sociale
X e Y sono amici, Y e Z sono amici, X e Z sono nemici. 
(reti indirette)

La teoria del bilanciamento sociale modella la **coerenza** nelle relazioni amico / nemico. 
- Amico di mio amico è mio amico
- Amico di mio nemico è nemico
- Nemico di mio nemico è amico
- Nemico di mio amico è nemico 
Si modella in reti e grafi con "+" e "-" (signed graph)
Un triangolo di nodi è bilanciato sse: 
$\Large w_{ij} \cdot w_{jk} \cdot w_{ki}\geq 0$ 
Dove $w_{ij}$ indica il valore dell'arco fra i nodi $i$ e $j$. Un "+" vale 1 e un "-" vale -1.

### Status sociale
> Quanto un individuo è *prestigioso* all'interno della società. 
#### Teoria dello status sociale: 
Quanto sono consistenti gli individui nell'assegnare lo status ai loro vicini? 
Se status: 
- X > Y e Y > Z, allora: 
- X > Z
Altrimenti si crea una configurazione instabile (nelle reti dirette)

# Distribuzioni
## Power law
(polinomio inverso)
Molti reti "reali" mostrano una distribuzione dei gradi power law. 
In una distribuzione Power Law: 
- i valori piccoli sono comuni
- I valori grandi sono estremamente rari (non impossibili, diverso da una distribuzione gaussiana)
![[Pasted image 20241021094814.png#invert|left|300]]
$$
\Large f(k) \approx \frac{1}{k^{\alpha}}
$$

```functionplot
---
title: Power Law
xLabel: Degree
yLabel: P_k
bounds: [-1,8,-1,4]
disableZoom: true
grid: true
---
f(x) = 1/x
g(x) = 1/x^2
h(x) = 1/2.71^x^2
```


In un grafico con scala log/log diventa una retta. 

Es: 
- Popolarità siti web: 
	- Molti siti visitati meno di 1000 volte al mese
	- Pochi siti visitati milioni di volte al giorno
- Amicizia
	- Tanti individui con pochi amici 
	- Pochi individui con migliaia di amici 
- Distribuzione dei gradi
	- Molti nodi con grado basso 
	- Pochi nodi con grado alto
### PL - Degree Distribution 
La frequenza di un evento cambia in funzione della potenza di un attributo 
$$
\Large p_{d} = ad^{-b}
$$
$P_{d}$  = Fraction of users with degree d
$a$  = Power law intercept 
$d$  = node degree
$-b$  = esponente, range tipico [2, 3]

> [!abstract]+  **Reti sociali** 
 > La frazione di utenti che hanno in-degree $k$ è approx proporzionale a $\Large \frac{1}{k^{2}}$ 

![[Pasted image 20241022123932.png#invert|right|400]]
Per capire se una rete ha una degree distribution power law: 
1. calcolare il grado $k$ di ogni nodo. 
2. Calcolare $p_{k}$ la frazione di nodi con grado $k$ 
3. Disegnare il grafico su scala log-log, con $k$ su asse X e $p_{k}$ su asse Y. 
4. Se è power law sarà una retta. 
Non è un approccio sistematico, ci sarà rumore nella coda (pochi dati) e altre distribuzioni potrebbero avere lo stesso pattern. 

## Mondo piccolo
Un *rumor* si diffonde su una rete sociale. Tutti gli utenti che lo ricevono lo passano subito a tutti i loro amici. 
Quanto tempo passa prima che raggiunga (quasi) tutti i nodi della rete? Tempo medio? 
**= numero di hops**. 

L'**esperimento di Milgram** conferma questa teoria: Selezionate 296 persone tra Nebraska e Boston che devono spedire una lettera via intermediari che conoscono, 64 sono arrivate con numero medio di intermediari = 6. 
[Six Degrees of Separation](https://en.wikipedia.org/wiki/Six_degrees_of_separation)

**Dodds** ha replicato lo stesso esperimento via mail, ottenendo conferma del risultato. 

Numero di Erdös: numero di cammini contando le pubblicazioni scritte 
www.csauthors.net/
# Modelli delle reti 

Modelli matematici / stocastici di costruzione di reti, usati per studiare in modo più efficiente le reti. 

1. Regolari 
2. Reti casuali
3. Piccolo mondo
4. Scale-Free

Nessuno dei 4 modelli spiega completamente le reti reali...

## Reti Regolari 
> Con una topologia regolare, costruita a tavolino, Non casuale. 

Es: Completa, a stella, ad anello, a reticolo...
![[Pasted image 20241022141443.png#invert|left|400]]
- Avg path length e diametro spesso grandi
- Coefficiente di clustering spesso alto
- Distribuzione dei gradi spesso con un picco
- Connettività: spesso completamente connesse
- Nel mondo reale raramente sono così.

.
## Reti Casuali
Studi di Erdös-Rényi

Un grado con $n$ nodi e archi a caso. Fenomeni studiati: 
- Connettività, Diametro, Formazione Giant component 

> [!attention]+  **Grafi casuali per modellare reti reali?** 
 > **Average Path Length** = OK. I grafi casuali modellano bene la lunghezza media dei cammini minimi (bassa)
 > **Coefficiente di Clustering** = NO. Sottostimano drasticamente il coeff di clustering
 > **Degree Distribution** = NO. non hanno una distribuzione dei gradi di tipo Power law, ma Poisson. 


*Le amicizie si formano a caso*. 
2 modelli:  $G(n,m)$ , $G(n, p)$ 
### Modello $G(n, m)$ 
Il grafo ha $n$ nodi fissi e $m$ archi piazzati a caso fra i nodi. Senza multiarchi o auto archi, di solito indiretto. 

![[Pasted image 20241022144434.png#invert|left|200]]
 $\tiny G(4, 2)$ 


Si studia il caso $n \to \infty$, "limite termodinamico". 
Si studia il caso medio: quello che succede in media su in insieme di tanti (∞) grafi casuali. 
Motivazioni: 
- Si ottengono proprietà tipiche che tendono a valere per tutti i grafi grandi. 
- Comodo analiticamente, almeno per $n \to \infty$ 

### Modello $G(n, p)$ 
Si usa questo invece di $G(n, m)$, è più "maneggiabile" matematicamente e analiticamente. 

- $n$ nodi
- $p$ = probabilità che un arco esista 
Quindi, invece di fissare il numero di archi, si stabilisce la probabilità $p$ indipendentemente di esistenza archi. 

#### Grado medio?
Il numero medio di archi è $\Large m=p\left( \frac{n(n-1)}{2} \right)$ 
Quindi il grado medio sarà: 
$$
\Large c= \frac{2m}{n}=(n-1)p
$$
$c$ = grado medio 
$C$ = coefficiente di clustering 

#### Distribuzione dei gradi? 
Distribuzione di Poisson, quando le reti "reali" hanno una distribuzione a coda lunga. 
![[Pasted image 20241022145821.png#invert|300]]
Media = 5

####  Distanza fra nodi? (Coefficiente di clustering C)
Probabilità che i vicini di un nodo siano vicini fra di loro?

$$
\Large C = \frac{c}{n-1}
$$
è un valore molto basso che per $n \to \infty$ tende a 0. 
(da non confondere con $c$ , il grado medio di un grafo)
####  Giant component? 
[...]
La GC si forma quando $C = np = 1$ , quindi quando in media ogni nodo ha un arco. 
![[Pasted image 20241028085114.png#invert|right|300]]
Quindi
- per c<1 ci sono cluster piccoli e isolati. 
- Per c = 1 appare la **giant component**
- per c>1 quasi tutti i nodi sono connessi

Con $s$ passi, $c^{s}$ nodi raggiungibili. 


## Watts - Strogatz Small Wold (WSSW)

Reti piccolo mondo: Distanza piccola fra nodi e diametro basso, clustering alto. 
![[Pasted image 20241028091346.png#invert|600]]

### Procedura
- Si parte dalla rete regolare
- Si considera ogni arco 
- Con probabilità $p$ lo si ricollega casualmente (stando attenti a non creare loop o archi già esistenti)
- con $p=0$ --> rete casuale (ordine)
- con $p=1$ --> Rete casuale (disordine)

#### Due misure: L, C. 

L = Lunghezza media del cammino minimo fra due nodi della rete. = "quanti amici devo passare per raggiungere una persona"
C = Coefficiente di clustering (locale). Decresce in funzione di P. = "quanto gli amici di una persona sono amici fra di loro."

L è globale, C è locale.  

### WSSW: Distribuzione dei gradi
- Picco, cutoff inferiore
- Diversa da reti reali. 
- Simile a Poisson, media abbastanza stretta. 
- No power-law, no coda lunga, no hub...
- non spiegano la distribuzione dei gradi che si "trova in natura"

---
Riassunto: 

|          | Geodesiche | C      | Degree distribution |
| -------- | ---------- | ------ | ------------------- |
| Regolari | *NO*       | **OK** | *NO*                |
| Casuali  | **OK**     | *NO*   | *NO*                |
| WSSW     | **OK**     | **OK** | *NO*                |
(Con Geodesiche si intende la lunghezza media dei cammini minimi)
## Reti Scale-Free
> con distribuzione dei gradi **power law**. 

Studio di Barabási e Albert, 1999: *Attaccamento Preferenziale*: 
- Distribuzione di indegree e outdegree è **power law**, non Poisson. 
- Il Web è una rete piccolo mondo, ma non WSSW (ma dati limitati, solo con archi indiretti)

Distanza media fra nodi: `<d>` = lunghezza media del cammino minimo fra 2 nodi della rete
C'è una crescita logaritmica, anche aumentando di molto il numero di nodi, la distanza media rimane bassa. Se N = $8 \cdot 10^{8}$ -> d = 19, con un incremento del 1000%, d = 21, incremento piccolo. 
--> Rete piccolo mondo 

è solo il web che ha distribuzione power law? *no*
3 esempi: collaborazione attori, reti elettriche...
Quale altro modello può generare una distribuzione dei gradi power law? **


Barabasi e Albert propongono un nuovo modello stocastico, **Preferential attachment**. 
*Crescita rete con probabilità non uniforme:* 
ad ogni passo si aggiunge un nuovo nodo e un arco che lo collega ad un nodo pre esistente, con una probabilità proporzionale al grado del nodo. (quindi è più probabile che l'arco si formi con un nodo con grado alto) --> si forma una rete con pochi nodi con grado molto alto (HUB) 

|            | Geodesiche | C      | Degree distribution |
| ---------- | ---------- | ------ | ------------------- |
| Regolari   | *NO*       | **OK** | *NO*                |
| Casuali    | **OK**     | *NO*   | *NO*                |
| WSSW       | **OK**     | **OK** | *NO*                |
| Scale Free | **OK**     | *NO*   | **OK**              |

Quindi, degree distribution è power law, **ok**. La lunghezza media geodesica è basa quindi **OK**, il coefficiente di clustering è basso quindi *NO.*
### Varianti dell'attaccamento preferenziale
Per i primi 3 modelli cambia solo il modo in cui viene calcolata la probabilità 
#### NON LINEARE
$$
\Large P(v_{i})=\frac{d_{i}^{\alpha}}{\sum_{j}d_{j}^{\alpha}}
$$
Se $\alpha = 1$ è l'attaccamento preferenziale originale
$\alpha < 1$ il vantaggio di avere un grado alto è inferiore: non long tail, no hubs
$\alpha > 1$ il vantaggio di avere grado alto è maggiore: Winner takes it all, un singolo nodo connesso a tutti

#### ATTRATTIVITA' 
$$
\Large P(v_{j})= \frac{A+d_{j}}{\sum_{j}(A+d_{j})}
$$ 
> Idea: aggiungere al grado una certa costante $A$, per permettere ai nodi con grado 0 di ricevere collegamenti

Se $A=0$ è come l'originale
Evita che nodi con grado = 0 non ricevano link. è un problema soprattutto per i grafi diretti
Tutti i nodi hanno la stessa attrattività; 
Si ottiene sempre una power law, con pendenza che varia con A. Reti reali diverse hanno code pendenze diverse -> ✔

#### FITNESS
$$
\Large P(v_{j})= \frac{\eta_{i}d_{i}}{\sum_{j}(\eta_{i}d_{i})}
$$
Fitness = Capacità di adattarsi all'ambiente. 

> Idea: la fitness di un nodo è il suo nodo; più è alto più "prospera" nella rete. 

$\eta_{i}$ rappresenta la fitness del nodo $i$ 
Se i valori di fitness sono in un intervallo limitato: 
- Rete con Hub multipli
- Si elimina la dipendenza dal rich-get-richer dei nodi più vecchi. Anche i nodi giovani con fitness alta competono. 
(Si ottiene sempre una power law)


Il coefficiente di clustering continua a rimanere basso per queste 3 varianti ⚠️

#### RANDOM WALK
![[Pasted image 20241029142035.png#invert|right|400]]
Simile all'attaccamento preferenziale: si parte da una piccola rete qualsiasi. Ad ogni passo si aggiunge un nuovo nodo $i$, con $m>1$ archi attaccati. Il primo di questi archi è collegato con un nodo vecchio ($j$ ) scelto a caso, probabilità uniforme. 
Ogni altro arco degli $m-1$ viene collegato: 
- Con probabilità $\Large p$ *a un vicino* di $j$ scelto a caso
- Con probabilità $\Large 1-p$ a *un nodo vecchio qualsiasi* scelto a caso. 
Quindi $\Large p$ è la probabilità che si formi un triangolo. 

La presenza di triangoli implica un $\Large C$ alto --> "funziona". Crea una rete con: 
- Degree distribution = Power law
	- Si formano Hub
- Cammini brevi
- C alto

# Facebook 

### Studio: [[10a.Ugander2011.pdf]]
Nodi (utenti): 720 milioni
Archi (amicizie): 70 miliardi, 190 / utente in media

![[Pasted image 20241029145036.png#invert|center|600]]
- Monotona decrescente
- Cutoff a 5000
- Assomiglia a una power law ma non lo è
- Con la CCDF si vede come il rumore scompare nella coda. 

**Facebook Components size:** 
![[Pasted image 20241029145821.png#invert|center|500]]
Questa è una power law. C'è una giant component, dove il 99.1% dei nodi sono. 
Ecco perchè la media in una power law ha poco senso: sarà intorno al 100, ma non è una info "utile". 

**Facebook avg distance:** 
![[Pasted image 20241029150157.png#invert|center|400]]
[...]

**Coefficiente di clustering**

**Paradosso degli amici**


---

## Diffusione delle informazioni
> Processo per cui un'informazione si diffonde e raggiunge altri individui 

### 4 "modelli"
- Herd behavior
- Information cascade
- Epidemics (+ social contagion)
- Morris (benefici diretti)

> [!note]- Lessico
> 
> #### Sender
> uno o pochi mittenti che iniziano il processo
> #### Receivers
> Uno o molti destinatari che ricevono l'informazione
> L'insieme dei destinatari è molto più grande dei mittenti 
> #### Medium
> Mezzo tramite cui la diffusione avviene
> Ad es: per i rumor il mezzo è la comunicazione personale fra le persone.

![[Pasted image 20241104092644.png#invert|center|500]]
Come vengono diffuse le informazioni, relazione tra visibilità della rete e disponibilità delle informazioni. 

- **Herd Behavior (Comportamento di Gregge):** si verifica quando le persone seguono il comportamento degli altri basandosi sull'informazione globale e in una rete esplicita.
- **Information Cascades:** fenomeno dove gli individui prendono decisioni basate sull'informazione locale osservata, tipicamente in una rete esplicita.
- **Epidemics:** modelli di diffusione associati alle reti implicite dove l'informazione si propaga in modo simile alle epidemie.


### Herd behavior
Comportamento di gregge

> [!example]+  **Esempi** 
 > #### Ristorante
 > Area metropolitana. Ristorante A con ottime recensioni, ma vuoto. Ristorante B accanto, stessa cucina, ma tavoli pieni. Si decide di andare da B, credendo che altri abbiano avuto l'occasione di provare A --> comportamento di gregge
 >
 > #### Esperimento di Milgram
 > A New York è stato chiesto a una persona di fermarsi e guardare nel cielo. 4% dei passanti si fermano a guardare. 5 persone -> 20%. 18 persone -> 50%. 
 > 
 > #### Asch's Lines and Elevator experiments
 > Sotto pressione gli individui tendono a uniformarsi agli altri 
 
 Gli individui prendono decisioni osservando il comportamento degli altri. 

Esperimento delle urne ...


### Information Cascade
![[Pasted image 20241105134022.png#invert|right|180]]
Quando gli utenti repostano contenuto postato da altri utenti nella rete. 
A differenza del comportamento di gregge, gli utenti hanno meno informazione disponibile: si basano solo sulle decisioni degli utenti vicini a loro.
Es: Hotmail, appendeva un link di invito ad ogni mail inviata.

Rete diretta. I nodi (attori) sono binari: attivi se hanno adottato il comportamento/decisione, inattivi se non ancora. 

#### Independent Cascade Model (ICM)
Nodi attivi = senders, nodi inattivi = receivers 
$v$ = nodo attivo al tempo $t$. Per ogni vicino $w$ di $v$ c'è una probabilità $\Large p_{vw}$ che il nodo $w$ venga attivato al tempo $t+1$. La probabilità può variare per diverse coppie di nodi. 
$v$ al tempo $t$ ha solo una chance per attivare i suoi vicini, a $t+1$, non dopo.

Per massimizzare lo spread delle informazioni equivale a trovare l'insieme di nodi in una rete sociale tali che il loro spread aggregato nella rete sia massimizzato ❔

Formalizzazione del problema:
- Dati un budget limitato per adv e una stima dello spread tra individui
- Goal: avviare uno spread di grandi dimensioni 
- Quale set di individui conviene selezionare all'inizio? 

$k=$ budget = numero di nodi scelti inizialmente. 

> Nodi con centralità alta che siano abbastanza distanti nella rete, per iniziare lo spread in parti diverse della rete. 

$$
\Large f:2^{N} \mapsto \mathbb{Q}
$$
N: nodi, Q = rational numbers. 
**Problema (ottimizzazione)**: dato il budget (k), trovare il set iniziale $\Large S$, $\Large |S| = k$ che massimizza $\Large f(S)$ 

Soluzione: generare i numeri random una volta, all'inizio del processo ICM. non deterministico $\longrightarrow$ deterministico 


### Epidemics

- implicit network 
- Unknown connections between users
Suitable for global patterns: Trends, ratios of people getting infected...

#### 4 basic epidemics models
- SI, SIR, SIS, SIRS

#### Susceptible - Infected (SI) 
![[Pasted image 20241105145944.png#invert|right|100]]
**Susceptible** : individui che possono venire infettati 
*Infected*  : individui che hanno la possibilità di infettare i suscettibili. 

$\Large N = S(t)+I(t)$ 
Dove: 
$N$ = dimensione della popolazione (costante)
$S(t)$ = numero di individui suscettibili al tempo t
$I(t)$ = numero di infetti al tempo t
$\beta$ = probabilità di contatto. Se = 1, tutti vengono in contatto con tutti. Se = 0, nessuno incontra nessuno. 

Ad ogni istante di tempo, un individuo incontra $\beta N$ individui in media e ne infetta $\beta N$. 
Ad ogni step, la variazione del numero di individui in $S$ e $I$ è di $\beta IS$ 
Si ottiene: 
$$
\begin{gather} 
\frac{dS}{dt}= -\beta IS \\

\\ 

\Large \frac{NI_{0}e^{\beta tN}}{N+I_{0}(e^{\beta tN}-1)} 

\end{gather}
$$

![[Pasted image 20241112122754.png#invert|center|450]]

#### Susceptible - Infected - Recovered
![[Pasted image 20241111083818.png#invert|right|200]]
Alcuni individui infetti passano allo stato *recovered* (o guariscono o muoiono). Una volta in questo stato, non possono più infettare ed essere infetti. 
![[Pasted image 20241111084004.png#invert|center|450]]
> è possibile che dopo la stabilizzazione il numero di R sia < 100%, perchè alcuni possono non aver mai 
> contratto la malattia. S ed R decrescono / crescono monotonicamente. 

Ci sono 3 equazioni principali: 
- $\Large \frac{dS}{dt}=-\beta IS$ --> rate of change dei suscettibili. Negativo perché decrescono
- $\Large \frac{dI}{dt}=\beta IS-\gamma I$ --> rate of change degli infetti
- $\Large \frac{dR}{dt}=\gamma I$ --> rate of change dei recovered. 

Dati $\beta, \gamma$ si calcola il valore $\Large R_{0}$: *Basic reproduction number.*  = numero medio di individui che un **I** infetta prima di guarire. Ad esempio, se $\Large R_{0}$ = 2 --> crescita esponenziale (1, 2, 4, 8...) e l'epidemia **esplode**.
Se $\Large R_{0} = \frac{1}{2}$, epidemia si estingue quasi subito. 

è possibile calcolare come l'epidemia si comporta per $t \longrightarrow \infty$:
- $\Large R_{0} = \frac{\beta}{\gamma}=1$ indica la soglia epidemica. C'è epidemia se $\Large \geq 1$ 

Come per la componente gigante c'è una transizione di fase brusca, in base al valore di $\Large \frac{\beta}{\gamma}$ 

#### Susceptible - Infected - Susceptible
![[Pasted image 20241111084235.png#invert|right|200]]
Same as SI model with the addiiton of infected nodes recovering and becoming susceptible again. 
-  Caso 1: $\Large \beta N \leq \gamma$ 
	- Si guarisce più in fretta di quanto ci si ammali
	- Ci si mette di più ad ammalarsi che a guarire
- Caso 2: $\Large \beta N>\gamma$ 
	- Logistic growth function, come nel modello SI. 


### Traduzione sulle reti 

Un'assunzione fatta fin'ora è che tutti i nodi avessero grado simile. Ogni individuo viene a contatto con lo stesso numero di individui ---> si può ridefinire il **Basid Reproduction Number**

#### $\Large R_{0}$ su rete omogenea
Tutti i nodi hanno grado simile alla media $\langle k \rangle$ = grado medio 
Ogni I infetta un vicino S con probabilità $\beta$, come prima. 
Quindi $\Large R_{0} = \langle k \rangle \frac{\beta}{\gamma}$

Come diminuire $\Large R_{0} \langle k \rangle \frac{\beta}{\gamma}$? 
1. $\beta$ : diminuire la contagiosità (mascherine, vaccino)
2. $\gamma$ : aumentare la velocità di guarigione (cure)
3. $\langle k \rangle$ diminuire il grado medio (lockdown)

#### $\Large R_{0}$ su rete eterogenee
Gli hub si contagiano facilmente e contagiano molti altri nodi. 
Intervention = strategia di vaccinazione mirata, paradosso degli amici (amico ha più amici di me)

- è facile che un rumor raggiunga un hub, a quel punto la diffusione è molto alta. Se hub diventano spreader, allora ci saranno interazioni spreader - spreader frequenti ---> portano a stifler, quindi molte interazioni spreader-stifler...


### Modello Direct Benefit
Le persone vengono influenzate da altre persone sulla base di: 
- **Informazioni**
	- fare qualcosa perchè altri lo fanno, herd behavior
- **Benefici**
	- Fare qualcosa perché *conviene* rispetto a non farlo. 

Per un nodo, li **beneficio** di adottare un comportamento cresce al crescere del numero di vicini che lo adottano. (come adozione di tecnologie simili (whatsapp), interazioni sociali con chi ha opinioni simili.)

### Teoria dei giochi

![[Pasted image 20241112135213.png#invert|center|500]]
Ogni nodo sceglie fra due possibili comportamenti A e B. Se due nodi sono collegati da un arco c'è un incentivo (*payoff*) ad adottare comportamenti uguali. 


![[Pasted image 20241112135402.png#invert|left|200]]
**Matrice dei Payoff**. il guadagno quando si adotta il comportamento uguale è segnato nello slot corrispondente, per v e w.

La domanda è: se alcuni vicini adottano A e altri B, quale comportamento conviene adottare? 
Dipende da *payoff a* e *payoff b*, numero di vicini che adottano A e B. 

#### Regola di decisione

![[Pasted image 20241112135842.png#invert|right|200]]
$p$ = % di vicini che adottano A, $1-p$ = % di vicini che adottano B, $d$ = numero di vicini. 

Se $v$ adotta A --> payoff = $\Large pda$  
Se $v$ adotta B --> payoff = $\Large (1-p)db$ 
Regola di decisione
$$
\Large
\begin{gather}
p\geq \frac{b}{a+b}\\ \\
q= \frac{b}{a+b}
\end{gather}
$$
> Se almeno una frazione q dei miei vicini adotta A, allora lo faccio anche io. Se q è piccolo, payoff A >> payoff di B --> A è più attraente. 

2 ovvi equilibri: tutti adottano A, tutti adottano B.  

> [!abstract]+  Esempio
> Tutti stanno adottando B --> B è il default
> Alcuni early adopters passano ad A e possono convincere a catena gli altri B a cambiare. 
> È un processo monotono, se un nodo passa ad A, non torna indietro. 
> Il processo si ferma quando o tutti sono passati ad A o nessun nodo vuole più cambiare e c'è una coesistenza tra A e B. 
> ---
> Es:
> $\large a=3, b=2 \longrightarrow q=\frac{b}{(a+b)}=\frac{2}{5}$
> Quindi lo switch da B ad A avviene se almeno 2/5 dei *vicini* adottano A.
> è una reazione a catena: alcuni nodi inizialmente non sono in grado di cambiare ma ci riescono dopo con l'aiuto di altri nodi. 

![[Pasted image 20241112143023.png#invert|left|250]] 
Qui si ferma: nessun nodo ha almeno 2/5 dei vicini che adottano A. Per far ripartire la "cascata" (intervention) basterebbe convertire 12 e 13. Convertire nodi lontani non servirebbe a nulla. 
Se tutti i nodi passano ad A --> cascata completa. 

A differenza dell'ICM (Independent Cascade Model), dove ogni nodo prova indipendentemente a convincere i suoi vicini, qui è l'insieme di vicini. ICM è stocastico, questo modello è deterministico. 

#### INTERVENTION

Strategie che possono essere usate per far passare ad A: 
- migliorare il payoff di A
	- abbassare il prezzo, migliorarne le caratteristiche...
- Convincere i nodi chiave a convertirsi, per far ripartire la catena 
	- Regali, omaggi...

Quindi: 
- Per far *ripartire* una cascade
	- Aggiungere archi fra cluster diversi per rinforzare i legami deboli
	- Togliere archi all'interno di un cluster
- Per *bloccare* una cascade
	- Togliere archi fra cluster diversi, indebolendo i legami deboli
	- Aggiungere archi all'interno dei cluster per rafforzare le comunità 
### Cluster
![[Pasted image 20241112144347.png#invert|left|350]]
#### Risultato di Morris: 
Un **cluster** è una comunità coesa (sottografo quasi completo, molti legami interni e pochi esterni). 
I cluster fermano le cascate: una cascata si ferma SSE c'è un cluster. 

> un insieme di nodi è un cluster di densità $p$ se ogni nodo che vi appartiene ha almeno una frazione $p$  dei suoi vicini nel cluster. 

#### Teorema di Morris
1. Se il resto della rete contiene un cluster di densità $> 1-q$, allora non ci sarà una cascata completa (blocking cluster)
2. Se non c'è una cascata completa, allora c'è un cluster di densità $> 1-q$ 

> [!abstract]+  Dimostrazione per assurdo di 1. e 2.
>  
 > 

[...] 

### Awareness != Adoption

Weak ties: conoscenza non intime sono utili per diffusione di informazioni (o malattie!) --> Awareness
Sono inutili per la diffusione di mode e innovazione --> adoption

> Facile raccontare una barzelletta a uno sconosciuto, difficile convincerlo a fare una rivoluzione. 

#### Movimenti Sociali 
Hanno una diffusione lenta e locale. **Adoption**. hanno una soglia alta e non sfruttano i weak ties. 

#### Meme
Hanno una diffusione rapida e diffusa. **awareness**. hanno soglia bassa e sfruttano i weak ties. 



# Information disorder

### Misinformation
Informazioni false ma diffuse in buona fede
> 
### Disinformation
Fake news, diffuse volontariamente 
> Disinformation is not a piece of content. It's a strategy. 
### Malinformation
Leaks di informazioni private, media... (revenge porn)

## Truthfulness is multidimensional 
Non solo `TRUE / FALSE`. Su www.politifact.com ci sono 6 livelli: 
==True, Mostly true, Half true, Mostly false, False, Pants on fire==

But also more than one dimension: 7. 
Ognuno ha una scala da -2 a +2
1. **Correctness**
	1. Informazione espressa in modo corretto 
2. **Neutrality**
	1. Info espressa in modo oggettivo 
3. **Comprehensibility**
	1. Understandable / readable as opposed to difficult to understand
4. **Precision**
	1. Informazioni specifiche e precise, non vaghe
5. **Completeness**
	1. Completezza delle informazioni
6. **Speaker's trustworthiness**
	1. Credibilità delle fonti 
7. **Informativeness**
	1. L'utilità delle informazioni 

### Modelli epidemici per le Fake News
Combinazione tra modello SIR e ISR:
- Susceptible: chi non ha ricevuto fake news
- Spreader: chi l'ha ricevuta e la distribuisce 
- Recovered: chi non la distribuisce più
Modello più completo:
![[Pasted image 20241118094526.png#invert|center|600]]
Similarità con modello SIR:
**S**: susceptible
**I**: Exposed, Believer, Spreader
**R**: Not believer, Not spreader, debunker

Modello analogo: SEDPNR (Susceptible - Exposed - Doubtful - Positively Infected - Negatively Infected - Restrained) 

Non ci sono studi esaustivi sull'argomento. 

## Tre studi sperimentali sulla diffusione delle disinformazioni

### *The spread of true and false news online*, Science
https://science.sciencemag.org/content/359/6380/1146

Presi in considerazione 126000 rumors, su twitter, fact checked. 
- Fake News vengono diffuse di più, più velocemente e più in profondità
- Notizie false più recenti di quelle vere
- I bot diffondono notizie false e fake allo stesso modo ---> utenti reali "colpevoli"

4 Misure per quantificare la diffusione: 
- Depth
	- Numero di retweet 
- Unique users
	- Totale di utenti raggiunti che retweettano
- Structural Visibility
- Max breadth

Sulla base di queste misure, si diffondono più le fake news? 
![[Pasted image 20241118100556.png#invert|center|500]]
Sì, ma di poco. 
- Le news politiche si comportano "peggio"
- Fake News nuove si diffondono di più
- **Bot** (spammer): non fanno differenza tra fake/true news.

### *The spreading of misinformation online*, PNAS
https://doi.org/10.1073/pnas.1517441113

Facebook. 67 pagine pubblicate: metà notizie scientifiche e metà teorie cospirazionali.

![[Pasted image 20241118101437.png#invert|left|400]]
Il pattern di condivisione è simile per le due categorie. La maggior parte dei post ha **alta omogeneità**: misura di quanto due nodi sono nella stessa comunità. 
Si tendono a formare comunità separate, segregate. 
Utenti di comunità scientifiche tendono a leggere solo contenuti scientifici e viceversa. 


### *Debunking in a world of tribes*, PLoS ONE
https://doi.org/10.1371/journal.pone.0181821

Lo studio evidenzia che l’attuale approccio al debunking ha un impatto limitato nel ridurre la diffusione di disinformazione. Questo è attribuito alla persistenza del pregiudizio di conferma e alla difficoltà di cambiare le convinzioni radicate in un ambiente polarizzato. Gli autori suggeriscono che un approccio più inclusivo, mirato a promuovere il dialogo e l’apertura tra gruppi, potrebbe essere più efficace nel contrastare la disinformazione online.