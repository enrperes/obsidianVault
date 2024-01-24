---
aliases:
  - Liskov
  - hierarchy
---
# Type families 
Refers to a group of **related** classes or interfaces that share common properties. 
These classes often inherit from a common base class (or interface) -> **hierarchy**

- Code reuse
- Abstraction

> [!example]-  **Example** 
> ![[Type Hierarchy example]]


# Liskov Substitution Principle (LSP)
> *Subtype objects can be used to replace supertype objects without affecting the behavior of clients*
##### Base Class = Supertype
##### Derived Class = Subtype
which inherits all **public** methods,  re-implements `remove()`, `insert()`, `MaxIntSet()` and implements the new method `max()`. 

It's one of the [[SOLID programming#Liskov Substitution Principle (LSP)|Solid principles]], it states that objects of a superclass should be replaceable with objects of a subclass without affecting the program. 
(if a program is using an object of a base class, it should be able to use objects of derived classes without knowing it)

> [!attention]  **LSP necessary conditions** 
> If SUB is a subtype of SUPER, p(x) a property that is true for any instance x of SUPER, then p(y) needs to be true for any instance y of SUB
> - Signature rule
> 	- methods of SUB must be compatible
> 	- Java compiler ensures this rule. 
> - Methods rule
> 	- SUB should require less & promise more
> 	- Java cannot ensure this
> - Properties rule
> 	- SUB should preserve all properties of SUPER

> [!example]-  **Example** 
 > ![[LSP-example]]

---

When defining a subtype we specify the differences with respect to its supertype: 
- New methods
- New fields
> [!example]-  **Example** 
 > In `IntSet`, we have the `IntSet` class and also the `IntSetMax` class which has the `max()` operation that returns the maximum value of the set. 


## Java Type Safety 
The compiler ensures that methods of the **supertype** are inherited by the **subtype** -> therefore the LSP holds for the syntax part, but not necessarily for the contracts. 


## Polymorphism 
> *ability of something to take many forms*

Objects and Methods can be polymorphic: 
- An instance of a supertype can be cast into an instance of a subtype 
	- Objects of different classes can be treated as objects of a common base class. (achieved with inheritance or interfaces(implements...))
- Dispatching to different methods within a class based on different signatures. 

> [!attention] \
 > If the Liskov principle cannot be achieved, use delegation and association instead of hierarchy and inheritance. 

---

# Dependency inversion 

[[SOLID programming#Dependency Inversion Principle (DIP)]]

