
## [[Algoritmi e strutture dati-info]]

[[Esercizi-ASD]]
---

# Modello di calcolo 
Per: 
- **Valutare la complessità**
	- Tempo
	- Spazio
- **Dimostrare la correttezza**

## Ordinamento 

### [[insertion-sort|Insertion Sort]] 
## [[Merge Sort]]

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
Non viene considerato l'input. 

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
[...]

---

## Divide et impera

- Dividere in sottoproblemi 
- Risolvere i sottoproblemi
- Ricomporre le soluzioni 
-> Spesso il modo più semplice per applicare questo metodo è la ricorsione 

# Merge Sort
