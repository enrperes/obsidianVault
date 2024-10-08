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
più è alto il grado di un nodo, più è centrale. 
$$
\Large C_{d}(v_{i})=d_{i}
$$
$d_{i}$ è il grado (numero di amici) del nodo $v_{i}$ 
Esempio: 

Degree centrality di $v_{i}$ è $d_{1} = 8$ 
Per gli altri $d_{j}=1, j\neq 1$ 
![[Pasted image 20241008150018.png#invert|310]]

#### Centralità di grado nei grafi diretti 

[...]

#### Centralità di grado normalizzata

[...]

#### Betweenness centrality 
Altro modo di esprimere la centralità "quanto uno è in mezzo ai piedi"
*Quanto un nodo è importante nel connettere altri nodi tramite cammini* (si guardano solo gli shortest path)
$$
\Large C_{b}(v_{i}) = \sum_{{s\neq t\neq v_{i}}} \frac{\sigma_{st}(v_{i})}{\sigma_{st}}
$$
dove: 
$\Large \sigma_{st}(v_{i})$ = numero di cammini più corti da s a t che passano per $v_{i}$

$\Large \sigma_{st}$ = numero di cammini più corti dal nodo s al nodo t (information pathways)

![[Pasted image 20241008150747.png#invert|650]]
#### Betweenness centrality normalizzata

[...]

#### Centralità di vicinanza

