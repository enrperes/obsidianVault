 Insieme di 5 principi di progettazione software formulati per creare codice pulito, di facile manutenzione e flessibile. 

- $\Large S$ - Single Responsibility Principle
- $\Large O$ - Open-Closed Principle
- $\Large L$ - Liskov Substitution principle
- $\Large I$ - Interface Segregation Principle
- $\Large D$ - Dependency Inversion Principle

### Single Responsibility Principle (SRP)
States that a **class** should only have one reason to **change**: It should only have only one job and do one thing.
- Makes the class more focused, easier to understand and the code modular, maintainable. 

### Open-Closed Principle (OCP)
Software entities  (classes, functions...) should be open for extension but closed for modification. 

- **Open** for extension: What the module can do is extendable. 
- **Closed** for modification: The source code cannot ben modified even though you can extend its functionality. 

> A class, module, function, can extend their behavior without modifying the entity itself. 

### Liskov Substitution Principle (LSP)
> Focuses on maintaining the integrity of the program when substituting objects of a base class with object of a derived class: this means that Objects of a parent class should be substitutable with Objecst of its subclass whiteout breaking. 

Objects of subclasses should behave the same way as objects of superclasses. 


### Interface Segregation principle (ISP)

### Dependency Inversion Principle (DIP)
High level modules should not depend on low-level modules. Both should depend on abstractions. 
Abstraction should not depend on details. Details should depend on abstractions. 

> [!Attention]- Da Wiki
> When following this principle, the conventional [dependency](https://en.wikipedia.org/wiki/Dependency_(computer_science) "Dependency (computer science)") relationships established from high-level, policy-setting modules to low-level, dependency modules are reversed, thus rendering high-level modules independent of the low-level module implementation details. The principle states:
> 
> 1. High-level modules should not import anything from low-level modules. Both should depend on abstractions (e.g., interfaces).
> 2. Abstractions should not depend on details. Details (concrete implementations) should depend on abstractions.
> 
> By dictating that _both_ high-level and low-level objects must depend on the same abstraction, this design principle _inverts_ the way some people may think about object-oriented programming.
> 
> The idea behind points A and B of this principle is that when designing the interaction between a high-level module and a low-level one, the interaction should be thought of as an abstract interaction between them. This not only has implications on the design of the high-level module, but also on the low-level one: the low-level one should be designed with the interaction in mind and it may be necessary to change its usage interface.
> 
> In many cases, thinking about the interaction in itself as an abstract concept allows the coupling of the components to be reduced without introducing additional coding patterns, allowing only a lighter and less implementation-dependent interaction schema.
> 
> When the discovered abstract interaction schema(s) between two modules is/are generic and the generalization makes sense, this design principle also leads to the following dependency inversion coding pattern.
> 

> [!example]  **Simple(er) explaination** 
 > 	In traditional OOP thinking, high level modules (containing business logic) depend on low level modules (containing implementation details). This creates tight coupling between high and low level modules. Changes in low level modules may impact high level modules, making the system less flexible and harder to maintain. 
 >
 > Now with DIP, instead of HL modules depending on LL modules, we introduce an abstraction (which can be an interface or abstract class) that both HL and LL modules depend on. In doing this the control of the flow is inverted. HL modules depend on abstractions, LL modules implement those abstractions. 
 > Allows for flexibility and decoupling. 
 > [[DIP-Example]]
 >
 > *Business logic* -> RegistrazioneAppello
 > *Dominio* -> Appello, Docente, Corso, Studente. (boh)

 
 


---

1. **Single Responsibility Principle**
	1. Una classe, funzione, metodo deve svolgere solo un compito. Se una classe ha troppe responsabilità, diventa difficile da comprendere. (applicare questo principio ai **metodi**). La responsabilità di un metodo è la sua postcondizione (quello che fa)
2. **Open-Closed Principle**
	1. Le classi dovrebbero essere aperte all'estensione ma chiuse alla modifica. 
3. **Liskov Substitution Principle**
	1. Gli oggetti di una classe derivata dovrebbero essere sostituibili senza influire sul comportamento corretto del programma. Quindi le sottoclassi dovrebbero estendere e specializzare il comportamento della classe base senza modificarlo. 
4. **Interface segregation Principle**
	1. Le interfacce dovrebbero essere specifiche per il cliente: una classe non deve essere costretta ad implementare metodi che non usa. 
5. **Dependency Inversion Principle**
	1. I moduli di alto livello non devono dipendere dai moduli di basso livello. Entrambi devono dipendere da astrazioni. Ovvero, le classi dipendono da interfacce o astrazioni invece di altre classi concrete. Rende il codice più flessibile e facile da testare. 