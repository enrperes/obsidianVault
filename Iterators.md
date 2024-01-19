> [!bug]  **The problem** 
 > For all of the elements of the set, do something. 
 > For example, summing up all the values of an IntSet. 
 
 A possible solution would be to extend the ADT: 
 Implementing features like `sum()`... But what if we need to: 
 - Compute the sum of elements < k
 - Compute the sum of $x^{2}$ 
 - compute the sum of $x^{2} \;\; \forall \; \;x<k$ 
 We would need to continuously extend the operations of the ADT -> not great design

### Iterators 

This is what the client would see: 
```java
IntSet s4;

// list items of s4
ResettableIntSetIterator it = s4.iterator();
	for (int i=0; it.hasNext(); i++){
		System.out.format("\ns4[%d]=%d", i, it.next());
	}
```


#### Defining Iterators

```java
public class IntSetIterator implements Iterator<Integer>
```

`Iterator<Integer>` is an [[Interface]] that specifies:
```java
public boolean hasNext()   // Are there more elements to iterate over?
public Integer next()      // Moves the iterator to the next value and returns its *value*  
public void remove()       //
```