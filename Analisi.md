#materia
# Analisi Matematica

[[Analisi-info]]

2022-11-18

https://www.overleaf.com/project/637494482e5d81d38b74b34f/detacher

# Teoria degli insiemi 
## Notazione Generale

Gli insiemi contengono **elementi** e si identificano tra parentesi graffe $\{ \;\;\; \}$ 
L'appartenenza si indica con $\in$. Il numero di elementi di un insieme $A$ è detto **cardinalità** e si esprime come $|A| = n$. L'insieme vuoto è rappresentato con $\emptyset$

### Notazioni:
1. **Elencazione:** ogni elemento è elencato e separato tramite `,` . In caso di insiemi infiniti si possono usare i `...`  e la forma dell'elemento. 
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

