# [[Design Patterns]]


## Creational Design Patterns
Provide various object creation mechanisms, which increase flexibility and reuse of existing code. 

> [!attention]  **Factory**
> > To be used when we don't know the exact types and dependencies of the objects your code should work with, when you want to provide users a frameworks  with a way to extend its components. 
> 
> It separates product construction from the code the actually uses the product. 
> ![[Pasted image 20231221140221.png|450]] 
 > [[Factory method example]]


> [!example]  **Singleton**
> > Creational design pattern that lets you ensure that a class has only **one** instance, while providing a global access point to this instance. 
>
> Solving two problems at once, it violates the [[Concepts|Single Responsibility Principle]] 
> **The solution**: 
> - Make the default constructor private, this prevents other objects from using the `new` operator with the Singleton class

> [!attention]  **Prototype** (clone)
>  > Pattern that lets you copy existing objects without making the code dependent on their classes. 
>  
>  So instead of inheriting functionality from a Class, you inherit from an Object that already exists. 



