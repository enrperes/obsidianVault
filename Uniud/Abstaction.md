> [!attention]  **Data Abstraction**
> The concept of hiding the implementation details of a system and only exposing the essential functionalities. Allows devs to focus on high level design of the program. 
> - Simplicity 
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
##### Contracts 
Are a formalization of specifications. They establish the responsibility of each party. 