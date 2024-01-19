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
```java
class MyClass extends MySuperClass implements YourInterface{
	//field, constructor, method declarations
}
```
>[!example] Parole chiave
> - `extends`
> 	- Utilizzato per creare una relazione di ereditarietà tra le classi (sottoclassi)
> 	- Le sottoclassi ereditano campi e metodi della classe parent. 
> - `implements`
> 	- Per dichiarare che una classe sta implementando un' [[Interface|interfaccia]]
> - `this`
> 	- [[this-java]]

### Visibility 
![[Pasted image 20231018114711.png|400]]
(Subclass outside the package)

##### Public
Highest level of accessibility. The class is visible to any class or package. Used for general-purpose classes or members. 
#####  Protected 
Allows access to the class within its own package and subclasses. Used to hide implementation details while allowing subclasses to access them for inheritance purposes. 
#####  Default
Package-private visibility. Only accessible within the same package. 
##### Private 
Access restricted within the same class only. 
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

> [!attention]  **Identity** `==`
 > Refers to the uniqueness of an object in memory. Determines wether two references are pointing to the same **object instance.** (referring to the same memory location) 
 > 
 
> [!attention]  **Equality** `equals()` 
> Refers to the content or value of two objects. Determines wether they have the same data or attributes. 
> Performed with the `equals()` method in the `Object` class. Can and should be overwritten in subclasses. 
>  

```java
String p1 = "hello";
String p2 = "hello";
s1 == s2 // True

String s1 = new String("Hello");
String s2 = new String("Hello");
s1 == s2 // False
s1.equals(s2) // True
```

### Shallow and deep equality 

![[Abstract Data Types#Equality and comparison]]


# Java Type System

> [!attention]-  **Primitive types** 
 > They are not Objects, they don't support parameters. 
 > - byte
 > - chat
 > - int
 > - short
 > - long
 > - float
 > - double
 > - bool

### Autoboxing 
automatically converts primitive data types to their corresponding wrapper classes (and vice versa). 
**Boxing** is the process of converting a primitive data type to its corresponding wrapper class. 
`Int` -> `Integer` = boxing. 
Unboxing is the opposite.

**Wrapper classes** offer some benefits: 
1. Encapsulation: providing methods for accessing and modifying its value. 
2. Type safety: Preventing incompatible operations and conversions. 
3. Nullability: can represent the `null` value, no possible with primitive data types. 

Primitive data types are better in terms of speed and memory usage.

## Enumeration (`enum`)

> Special type that defines a set of predefined constants. 

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

```java
public class EscapeSqlReference extends EscapeReference {
	protected String escape(Object text){
		return StringEscapeUtils.escapeSql(text.toString());
		}
}
```

If $\Large T$ extends $\Large S$ then $\Large T$ must have all methods of $\Large S$. 

#### Overloading 
A feature that allows defining multiple methods with the same name but different parameter lists. 

```java
public class C{
	public double power(int i, long c){// do AAA}
	public double power(long x, int c){// do BBB}
	public double power(long x, long y){// do CC}
}
```
Which of the three is executed is based on the parameters in input. 
