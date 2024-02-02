### Terminology
- Fault
	- Static defect in the code
- Error
	- incorrect internal state
	- manifestation of some fault
- Failure
	- Incorrect behavior
- Mistake
	- Programmer made a wrong design decision


## Assertive programming
**Always** uses assertions for each kind of assumption, letting production code raise exceptions when assumptions are violated. 
Focuses on identifying and verifying assumptions made throughout the program, ensuring that they hold true during execution. 
- Precondition check
- Post condition checks
- Invariant checks 

## Defensive programming 
**Robust** programs. should behave reasonably well even with som errors. 
Aimed at preventing errors from occurring in the first place. Involves anticipating potential problems and taking proactive measures to mitigate them. 
- input validation
- Exception handling 
- Error logging

Defensive programming relies on Error Handling. Three main ways: 
1. Extend the function
2. Exceptions
3. Assertions

# Extend the function
(don't use, not safe) 

# [[Exceptions]]


# [[Assertions]]


## Exceptions vs Assertions 

- Arguments of **public methods** should be checked with exceptions, that communicate to callers what happened. 
- Assertions don't communicate and are less flexible. 

##### Use Exceptions for checking preconditions of public methods 
- define them in the contract
- Use existing ones when possible
- Use checked ones when possible 
##### Use Assertions to materialize any assumption
- including preconditions of private methods, post conditions, invariants. 
- possibly in addition to exceptions
NB: Production code should be the same as Development code. 