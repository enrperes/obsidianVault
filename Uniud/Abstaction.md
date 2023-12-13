> [!attention]  **Data Abstraction**
> The concept of hiding the implementation details of a system and only exposing the essential functionalities. Allows devs to focus on high level design of the program. 
> - Simplicity 
> - Locality
> 	- the implementation of an abstraction can be understood w/o needing to examine the implementation of other abstractions. 
> - Reusability 
> - Maintainability  

### Two fundamental mechanisms
#### Abstraction by parametrization
*What data a task operates on*

> Focuses on hiding the identity of specific data items. Allows users to work with generic data types. Lower data abstraction. Visible interlay implementations. 
#### Abstraction by specification
*What a task does*
Preconditions and post conditions 

> Focuses on hiding details of how a task is performed, providing a clear description of what is going on: expected behaviors, inputs and output. Achieved through interfaces or contracts. 

##### Preconditions 
Conditions that must be true before a function is called. They specify the state that the program must be in before the function is executed. 
##### Postconditions 
Conditions that must be true after a function has completed execution. 
##### Specifications 
More comprehensive set of requirements that define the behavior of a module or function. Includes preconditions, post conditions and additional info such as invariants, assumptions, error handling. 
**Specification-first** programming is based on writing the specification BEFORE the implementation. The benefits include: 
- Clearer ideas
- Implementation is more guided
- Implementation can be differed
- Test Driven Development is possible
##### Contracts 
Are a formalization of specifications. They establish the responsibility of each party. 
The contract of a method with multiple methods must refer to the general scope of the function, not the scope of each individual method. 

- **PRE-conditions**
	- Properties that have to be true in order for the method results to be well-defined. 
	- They refer to arguments given to the method and / or the state of the instance. 
- **POST-conditions**
	- Properties that have to be true at the end of the execution of the method, provided that pre-conditions hold prior of the execution. 
	- They refer to the *output* of the method (or modified objects passed as arguments, or modified state of the instance)

---

> [!attention]  **Properties of an abstraction** 
 > - Minimally constrained: The behavior of the abstraction should be constrained only to the extent that is necessary 
 > - Not under-constrained: 
 > - Generality 
 > - Deterministic
 > - Simplicity: it does one thing. Has to have a good name. 
 
 ## Partial abstraction 
Exposes *some* implementation details. without showing unnecessary complexity. 
Not safe: 
- One has to know the contract to ensure that it holds the specific context where the abstraction is used. 
✨and other reasons why it's a bad idea ✨