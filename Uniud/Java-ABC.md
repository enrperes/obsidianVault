# Java Style Rules
![[Pasted image 20231011101159.png|500]]

### Package names -> `lowerCamelCase`
### Class names -> `UpperCamelCase`
### Method and variable names -> `lowerCamelCase`
##### Methods should start with a verb -> `enrollStudent`

## On names
- **Classes** ~ category
	- Concrete nouns (`Customer, Account, WikiPage..`)
	- Avoid using  general names: `Manager, Processor, Data, Info`...
- **Methods**
	- use *verbs*. (`save, deletePage, getName...`)
- **Variables**, instances ~ thing belonging to a category (class)
	- length of name is proportional to scope size. (blocco in cui la variabile è definita: `i, j` va bene solo per qualche ciclo for o funzioni brevi.)
		- Avoid: 
			- `O` (capital O)
			- `I, l`
		- Don't include variable type in name 

---

I campi di classe hanno `static` (da evitare)

## Classes

>[!example]- Parole chiave
> - `extends`
> 	- Utilizzato per creare una relazione di ereditarietà tra le classi (sottoclassi)
> 	- Le sottoclassi ereditano campi e metodi della classe parent. 
> - `implements`
> 	- Per dichiarare che una classe sta implementando un' [[interfaccia-java|interfaccia]]
> - `this`
> 	- [[this-java]]

### Visibility 
![[Pasted image 20231018114711.png|400]]
(Subclass outside the package)
#### Rules: 
- Use `private` whenever possibile
- for `fields` always use `private`
- use `public` only for constants meant to be exported elsewhere. 

## Packages 
Contenitori concettuali di nomi, ognuno unico all'interno. Si possono importare in file diversi 
```java
package it.uniud.poo.utilities;
import it.uniud.professors.School.getProfessors;
```
- Use symbolic names 

Servono a organizzare e raggruppare classi e interfacce in una struttura gerarchica. I membri di una classe possono avere livelli di accessibilità diversi (public, private...) 
I membri dichiarati dentro un package possono essere accessibili solo da classi nello stesso package. 

`java.utils` contiene classi per la gestione delle collezioni, `java.io` per input/output. 

Servono a semplificare la manutenzione in progetti molto grandi. 

## Local Variables
### Stack 
> Parte di memoria usata per gestire le chiamate di funzione e le variabili locali all'interno delle funzioni. Gli oggetti nello stack hanno una durata limitata e vengono deallocati quando non in uso. Più veloce rispetto a Heap. 

**Activation records** with: 
- values of variables 
- return address
- returned value 
>[!info]+ LIFO policy 
>> Last In First Out
>
> Gli elementi più recenti inseriti nello stack sono i primi ad essere rimossi. Il primo elemento inserito nello stack sarà l'ultimo ad essere rimosso. 
> Immaginare pila di libri. Tra le operazioni dello stack: 
> - Push = aggiunge elemento in cima allo stack
> - Pop = rimuove elemento in cima allo stack
> - Peek = visualizza l'elemento in cima allo stack

### Heap 
> Area di memoria destinata all'allocazione dinamica di oggetti o dati a cui si accede tramite puntatori. 

Gli oggetti nell'Heap hanno una durata più lunga rispetto allo Stack. Devono essere esplicitamente deallocati quando non più in uso, usando il garbage collector. 


## Identity and equality 

#todo 

### Shallow and deep equality 

---

## Enumeration (`enum`)

```java
public enum MyDay{
	MON, TUE, WED, THU, FRI, SAT, SUN
}
switch(day){
	case MON: 
		System.out.println("Mondays are bad");
		break;
	case FRI:
		System.out.println("Fridays are better");
		break;
}
```

## Type checking 
Java is **Strongly Statistically typed**
- Every variable must have a type. 
- Every method has its signature 
- Compiler checks type correctness of each assignment and call
Compiler deduces the **apparent type** of an expression. 
- at compile time
- `List<Stydent> theBestOnes = new ArrayList<Studen>();`
- `List<Student>` è il tipo apparente di `theBestOnes`
- `ArrayList<Student>` è il tipo reale di `theBestOnes`
### Type Hierarchy
Il tipo a sinistra dell' assegnamento può essere uguale o un sovra-tipo. Non può essere più specifico. 

