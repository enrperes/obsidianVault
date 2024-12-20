https://docs.oracle.com/javase/8/docs/technotes/guides/language/assert.html

Normally disabled by JVM!
>[!warning]- Enable them 
>https://se-education.org/guides/tutorials/intellijUsefulSettings.html

```java
throws NotFoundException{
	assert (a != null): "a is not expected to be null";
	throw new NotFoundException("Unable to find " +x);
}
```

`assert` used to *state* a boolean expression
- Represents an assumption about the state of the program 
- If condition is false, the `AssertionError` (subclass of `Error`) is raised. 
- The condition is normally disabled by the JVM, hence assertions are used only during development, if enabled. 
	- Performance penalty does not occur in production. 

### When NOT to use assertions
- to check all preconditions of methods: they can be disabled in production (especially public methods)
- When boolean expressions have side effects: 
	- When the expression is an invocation of a method that has effects on some object. 
### When to use assertions
- To check preconditions of arguments and objects of private methods
	- The context of use is restricted, once the class is tested the assertions are not useful anymore. 
- To check **invariants** of any method
	- Useful only in development
- Check post conditions of methods 

> [!bug]  **A violated assertion is a bug** 


##### Example
```java
void foo(){
	for(){
		if()
			return;
	}
	// execution should never reach this point. 
}
```

The comment is an **invariant**. So it should become an assertion: 

```java
void foo(){
	for(){
		if()
			return;
	}
	assert false: "Execution should not reach here"
}
```

Now the code is executable and has built in tests.