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



> come scrivere jaume r







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