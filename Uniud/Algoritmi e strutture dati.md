---
aliases:
  - ASD
  - Algoritmi
  - Strutture dati
---

## [[Algoritmi e strutture dati-info]]

## [[Algoritmi e strutture dati - lab]]
## [[Esercizi-ASD]]
---

# [[Ordinamento]]


# Modello di calcolo 
Per: 
- **Valutare la complessità**
	- Tempo
	- Spazio
- **Dimostrare la correttezza**

# Strutture dati 
## Array 
- Struttura dati 
	- Statica (dimensione fissa)
	- Elementi omogenei (stesso tipo)
	- Indicizzato `A[1]` 
		- In pseudo-codice gli array partono da 1 
		- `A[1..5]` = elementi da 1  a 5
		- `A[5...1]` = insieme vuoto 
	- Accesso diretto 
		- Costo di accesso costante: $\Large \Theta (1)$, non dipende dall'indice del vettore. 
---

# Complessità 

### Spazio 
Per determinare se in place o meno, 
##### In Place
Se l'algoritmo opera direttamente sui dati di input senza richiedere memoria significativa aggiuntiva. Spazio costante rispetto all'input
##### Non in Place
Spazio allocato cresce al crescere dell'input. Ad esempio Merge sort non è in place perchè usa due array ausiliari, ciascuno di dimensione $\frac{n}{2}$. 

$\Huge \Theta$ rappresenta una notazione asintotica, definisce un limite stretto superiore e inferiore per il comportamento di un algoritmo in termini del suo input. 
### Tempo 
> Quante operazioni di base l' algoritmo esegue su un generico input di lunghezza $\Large n$

Le operazioni di base sono: 
- Assegnamenti 
- Confronti 
- Test booleani
- Operazioni aritmetiche
- ...

Si assume che ognuna impieghi un tempo costante $\Large c$, che varia in base al calcolatore. 
Il costo di ogni operazione di base è $\Large c$ **indipendentemente** dalla grandezza dei numeri. (Confrontare 0 con 1 equivalente a confrontare due numeri molto grandi e vicin)
= *Modello di calcolo con criterio di costo uniforme*

# Correttezza
#### Invariante ciclo for 
1. Inizializzazione
	1. L'invariante è vera prima di iniziare il ciclo
2. Conservazione
	1. Se l'invariante è vera prima, rimane vera prima della successiva iterazione
3. Terminazione
	1. Quanto il ciclo termina, l'invariante prova che l'algoritmo è corretto

> [!example]  **Esempio Insertion Sort** 
 > ![[insertion-sort#Verifica correttezza]]
---

## Divide et impera

- Dividere in sottoproblemi 
- Risolvere i sottoproblemi
- Ricomporre le soluzioni 
-> Spesso il modo più semplice per applicare questo metodo è la ricorsione 

### Top down vs Bottom up approach
1. Top-Down 
	- Start by defining the overall problem at a high level and then break it down into smaller tasks. 
1. Bottom-Up

# Merge Sort
# Notazione asintotica

# Equazioni ricorsive di complessità 

[[Quick Sort]]


---

# Binary trees 
## Binary search tree 
$\Large T$ è un $\Large\texttt{BST}$ $sse$ `InOrder(T)` stampa le chiavi in ordine crescente senza ripetizioni. 
*dimostrazione:*
- Per induzione sul numero di chiavi di $\Large T$. 
- **Base**:
- $n = 1$
- **Passo**:
	- HPind:
		- $m$ chiavi con $m<n$, ordine crescente
	- Tesi: 
		- $\Large T$ è un $\Large \texttt{BST}$ con $n$ chiavi, `InOrder(T)` stampa in ordine crescente 
		- 
