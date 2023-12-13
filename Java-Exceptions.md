> Mechanism to deal with *exceptional* situations. 
> - Doesn't affect the result set 
> - Affects the execution flow 
> - The caller mus manage exceptions (detect them and decide how to handle)

> [!done]  **Advantages** 
> - Separation of normal code vs error handling code
 > - Explicit representation of errors
 > - Support for propagating errors

```java
/**
Compute the factorial of n
@param n
@return n!
@throws NonPositiveArgumentException if n<0
**/
public static long factorial(int n) throws NonPositiveArgumentException
```

NB: `factorial()` is a total function now. Error handling is built into it with the exception. 

```java
/**
Search x in array. 
@param a: where to search
@param x: the int to search
@return the smallest i so that a[i]=x
@throws NullPointerException when a=null
@throws NotFoundException when x is not in a
**/
public static int search (int[]a, int x) throws NullPinterException, NotFoundException
```

There are some predefined exceptions that behave like any other object. 

## Throwing exceptions
```java
public static void addWithThreshold(int[]a, int x, int b) throws NullPointerException, TooBigException{
	...
	res = a[i]+x;
	if (res>b){
		throw new TooBigException(res, i); // creates new instance of the exception
	} else ...
}
```

## Handling exceptions
```java
public static void giveExtraScoreToGoodStudents throws NullPointerException() {
	try{
		MyArrays.addWithTreshold(studentScores, 5, 30); // "body" da eseguire. Se viene sollevata un'eccezione, il catch corrispondente viene eseguito
	} catch (NullPointerException npe){
		System.err.format(...);
		throw nope;
	} catch (TooBigException tbe){
		System.err.format(...);
		studentsScores = ...;
	} finally {
		store(studentScores); // viene eseguito in ogni caso 	
	}
}
```  

- `try` block: normally executed, may not complete
- `catch` block: only executed if the given exception is thrown
- `finally` block (optional) always executed after `try` and `catch`