---
aliases:
  - ASD
  - Java
---

> High level descriptions of data structures with operations that can be performed on them. 
> They provide a **logical** model for data and operations, allowing to work with data structures without needing to know the implementation. 

ADTs are used to encapsulate data and the functions that operate on that data. 

For example, a **STACK** is an ADT that supports operations like push, pop, peek. 


### Procedural Abstractions 
Refers to the encapsulation of **procedures and operations** within an **ADT**. 
By providing Procedural Abstractions, ADTs enable a separation between implementation details and functionality offered by the data structure. 
- Enhances modularity 
- Allows for easy modification of procedures
- Promotes more organized and maintainable codebase. 

## Implementing ATDs

```java
import java.utils.ArrayList; 
import java.utils.EmtpyStackException; 

public class Stack {
	private ArrayList<Integer> data; // Private instance variable 

	public Stack(){
		data = new ArrayList<>(); 
	}
	public void push(int item){
		data.add(item);
	}
	public int pop(){
		if (!isEmpty()){
			return data.remove(data.size()-1);
		} else {
			throw new EmptyStackException():;
		}
	}
	public boolean isEmpty(){
		return data.isEmpty();
	}
	
}
```
In this example: 
- The data variable is an instance variable. It stores the elements of the stack. Marked as private to encapsulate it. 
- The `push, pop, isEmpty` methods define operations performed on the stack. 

### Common issues 
##### Cloning and Copying 
- Shallow vs Deep copy: 
	- Shallow copy may result in shared references to mutable objects within the ADT
	- Deep copy can be complex, especially when dealing with recursive structures. 
##### Equality and comparison
- Defining Equality: 
	- Determining equality for **instances of ADTs** can be hard: requires properly defining the **criteria** of equality, especially for complex structures. 
	- Overriding the `equals` method in Java is often done
		- The default implementation of `equals` int the `Object` class compares object references: it checks if two reference point to the same memory location. But we may want to define equality based on the content of the object, rather than mem address: 
			1. Override the method 
				- Provide a method in the class: `public boolean equals(Object obj)`. 
				- This method takes an Object parameter, which is what it will be compared to. 
			2. Check Object Type
				- The equals method checks if the passed object is the same type as the class. 
			3. Cast and Compare
				- Cast the passed object to the class type and compare relevant filelds. 
		- [[equals-method-java|Example here]]
##### Immutability 
- If the state of the ADT is mutable, it can lead to unexpected behavior. 
##### Invariants 
- Ensuring that the ADT maintains its invariants (conditions that must always be true) during all operations can be hard. 
- An Invariant is a logical statement about the properties of the data encapsulated by the ADT that should remain unchanged regardless of the operations performed on it. 
	- The invariant for the Stack is that the order of elements in the stack should be maintained. If A is pushed in the stack before B, then A should be popped before B. 

## Programming wiht ADTs
##### Specification 
- Defines how the ADT should be used, what operations it supports and which invariants should be maintained. 
> It should include the mission: 
> - What it "knows" (its state)
> - What it can do (state transitions)
##### Includes 
- Abstract Stare (possible values of the ADT)
- Protocol 
	- Operations on such values 
		- Each operation is specified through its contract 
- Invariants 
- Error handling 
- Mutable or Immutable

## Abstraction Function 
It is a **map** between the abstract values (ADT) and concrete values (instances of ADT). 

Example using a 2d point: 
```java
public class Point{
	private double x; 
	private double y; 

	// Constructor
	public Point(double x, double y){
		this.x = x;
		this.y = y;
	}
	// Getter methods 
	public double getX(){
		return x;
	}
	public double getY(){
		return y; 
	}
	
}
```

The "Abstract view" of a `Point` is a mathematical point in 2D, with x and y coordinates. 
The Concrete implementation is a class with two private instance variables x and y to store the coordinates. 
The abstraction function is the *conceptual* mapping between the abstract notion of a point and its concrete implementation int the `Point` class. 

