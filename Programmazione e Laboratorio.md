---
tags:
  - materia
---


>[!tldr]- Appunti
> # ![[Scheme]]
> # ![[Java]]

### [[Scheme_Primo_semestre|Lezioni Scheme]]

### [[Java_secondo_semestre]]

#### [[Esame-Programmazione]]

----

### Ricorsione di coda
Quando la chiamata ricorsiva è l'ultima operazione eseguita dalla funzione. Spesso i compilatori ottimizzano la ricorsione di coda trasformandola in un ciclo e risparmiando memoria e prevenendo il rischio di stack overflow. 
- Chiamata ricorsiva è l'ultima operazione nella funzione
- Output della chiamata ricorsiva è restituito senza elaborazioni
Fattoriale con ricorsione di coda: 
```scheme
 (define (factorial n)
	 (define (fact-iter acc n)
		 (if (= n 0)
			acc
			(fact-iter (* acc n)(- n 1))
		)
	 )
	 (fact-iter 1 n)
 ) 
``` 

`acc` è un accumulatore che tiene traccia del risultato parziale. 

### Le classi in Java
> Costrutto fondamentale che rappresenta una struttura usata per definire oggetti. Può essere considerata come un modello o un blueprint per create oggetti (istanze). 
> Contiene attributi (variabili) e metodi (funzioni) che definiscono il comportamento e lo stato di un oggetto. 

```java
 class Persona{
	 // attributi
	 String nome; 
	 int età; 
	 // metodi
	 void saluta(){
		 System.out.println("Ciao");
	 }
 } 
```

#### I costruttori 
Sono metodi speciali invocati quando viene creato un nuovo oggetto. Ha lo stesso nome della classe e viene usato per inizializzare gli attributi di un oggetto. 

```java
  class Persona{
	 // attributi
	 String nome; 
	 int età; 
	 // metodi

	// costruttore
	Persona(String nome, int età){
		this.nome = nome; 
		this.età = età; 
	}
	 void saluta(){
		 System.out.println("Ciao");
	 }
 }  
```

Gli oggetti sono istanze della classe. Quando si crea un oggetto si usa il costruttore della classe per inizializzare i valori degli attributi. 

##  Verifica della correttezza
> Dimostrazione che la funzione ricorsiva risolva il problema in tutti i casi. 
1. Verifica della correttezza parziale = correttezza della logica ricorsiva
2. verifica della terminazione = che il programma termini correttamente in tutti i casi 

Per prima cosa controllare che il caso base sia corretto: la condizione in cui la funzione non effettua ulteriori chiamate ricorsive. 
Assicurarsi che la funzione abbia una condizione di uscita ben definita che risolva il problema per i casi più semplici. 

Successivamente si verifica la correttezza del caso ricorsivo (ipotesi induttiva ). 
Supporre che per n-1 funzioni correttamente, verificare che funzioni per n. 