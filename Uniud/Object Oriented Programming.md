---
aliases:
  - Programming
  - OOP
  - Programmazione
  - Oggetti
---
[[OOP-info]]
[[IntelliJ info]]

# [[Esercizi-oop|Esercizi]]

---
# [[Concepts]]

---

# Teoria

## [[Decomposition]]

## [[Abstaction]]

## [[Java-ABC]]

## [[Java-Exceptions]]

## [[Java-Assertions]]

## [[Abstract Data Types]]

# [[Iterators]]
## [[Type Families]]

## [[Object Oriented Design]]

## Notes
Scrivendo pre e post condizioni -> scrivere funzioni parziali 

`List<Map<String, Integer>> var` -> `var` Lista di mappe con Integer e String  (esempio: elenco nomi studenti e voti ottenuti)
`List <VotiCorso> var` è un tipo di dato astratto con classe `VotiCorso`. Fa la stessa cosa ma nel primo caso manipolando `var` è chiaro come è fatto il tipo di dato. Nel secondo caso si può non conoscere l'implementazione di `VotiCorso`


#### `Int[]` vs `Vector<Integer>`

| `Int[]` | `Vector<Integer>` |
| :--- | ---- |
| Array of primitive data types "int". Arrays can only store primitive data types. | Part of Java Collections Framework. Holds objects of type "Integer". Uses the wrapper class "Integer" to store integer values. Collections in Java can only store Objects, not primitive data types. |
| Arrays have a fixed size, cannot be changed later | Dynamically resizable. |
|  |  |

#### Type Casting 

`(dataType) value;`
```java
this.elements = (Vector<Integer>) s.elements.clone();
```

#### `Equals` || `==` 
|  | `equals()` | `==` |
| ---- | ---- | ---- |
| **Purpose** | Compares the **value** of Objects | Compares the reference of Objects |
| **Overridden** | Typically overridden by classes | Not  |
| **Comparison** | Allows for flexible comparison | Only checks if objects are the same object in memory.  |

#### `.elementAt()` vs `.get()`
| Feature | .elementAt() | .get() |
| ---- | ---- | ---- |
| Access type | Position-based | Value-based |
| Collection type | Supports direct index access | Stores elements by value |
| Example usage | Accessing an element by its index in an array or list | Accessing an element with a specific value in a Set or Map |


> [!info]- Index
>
> - [x] **Procedural abstraction**
> 	- [x] Decomposition
> 	- [x] Parametrization
> 	- [x] Specification
> 	- [x] Data Abstraction
> 	- [x] Categorization
> - [x] **Java ABC**
> 	- [x] Style rules
> 	- [x] syntax 
> 		- [x] classes, variables, specification
> 	- [x] Packages
> 	- [x] Visibility 
> 	- [x] Mutability
> 	- [x] Objects
> 	- [x] Method and calls
> - [x] **Types**
> 	- [x] primitive types
> 	- [x] Conversions
> 	- [x] Autoboxing
> 	- [x] Strings
> 	- [x] Enumeration
> 	- [x] Type checking 
> 	- [x] Type Hierarchy 
> 	- [x] Overloading 
> 	- [x] Method dispatching
> - [x] **Specifications**
> 	- [x] Procedure / function
> 	- [x] Contract of a method 
> 	- [x] Type abstraction
> 	- [x] Abstraction benefits
> 	- [x] Partial abstractions
> - [x] **Exceptions**
> 	- [x] Syntax
> 	- [x] Advantages
> 	- [x] Specification example 
> 	- [x] Throwing exceptions
> 	- [x] Handling exceptions
> 	- [ ] Exceptions as classes 
> 	- [ ] Methods of exceptions
> 	- [ ] Masking, reflecting
> - [x] **Assertions**
> 	- [x] How to enable them
> 	- [x] When to use / not to use
> 	- [ ] Deal with preconditions 
> 	- [x] Assertive programming as opposed to defensive programming 
> - [ ] **Abstract Data Types**
> 	- [ ] `IntSet` example
> 	- [x] Implementing an ADT 
> 	- [x] cloning, equality: the issue
> 	- [x] Specification of ADT
> 	- [ ] The abstraction invariant 
> 	- [x] The abstraction function
> - [x] **Iterators** 
> 	- [x] `IntSet` example
> 	- [x] Defining, creating, implementing iterators
> 	- [x] Common problems
> - [x] **Principio Liskov**
> 	- [x] Type hierarchy, inheritance 
> 	- [x] Liskov substitution principle
> 	- [x] Java type safety 
> 	- [x] Problems 
> 	- [x] Methods rule
> 	- [x] Properties rule
> 	- [x] Polymorphism 
> - [ ] **Dependency inversion** 
> 	- [ ] Examples
> - [x] **Interfaces** 
> - [ ] **Abstract classes**
> - [ ] **Anonymous classes**
> 	- [ ] Functional programming 
> 	- [ ] `lambda-example.pdf` 
> - [ ] **Generic Types**
> 	- [ ] Generic classes
> 	- [ ] Generic methods
> 	- [ ] Type erasure
> 	- [ ] Bounded generic types
> 	- [ ] Subtyping  generic types
> 	- [ ] Wildcards
> - [ ] **Object Oriented design**
> 	- [ ] Design patterns
> 		- [ ] Factory 
> 		- [ ] Builder 
> 		- [ ] Observer 
> 		- [ ] Decorator
> 		- [ ] Composite
> 		- [ ] Bridge
> 	- [ ] Responsibility
> 	- [ ] Design principles
> 	- [ ] **CRC** technique
> 	- [ ] `design pattern example pdf`