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
		System.out.format("\n s4[%d] = %d", i, it.next());
	}
```


#### Defining Iterators

```java
// MISSION is to provide an iterator over the elements of an IntSet. 
public class IntSetIterator implements Iterator<Integer>{
	/**
	"elements" contains a copy of the elements of the IntSet when this iterator is created. The data that have yet to be visited are elements[current, ...].
	**/
	private int current;
	final private Vector<Integer> elements;
}
```
Once the iterator is created, if the original set changes the iterator continues to work with the original copy. 

`Iterator<Integer>` is an [[Interface]] that specifies:
```java
public boolean hasNext()   // Are there more elements to iterate over?
public Integer next()      // Moves the iterator to the next value and returns its *value*  
public void remove()       // Removes the element last returned by next()
```
(The contract for these methods is already defined by the interface)

#### Creating Iterators
```java
class IntSet...

	/** Create an iterator Object. 
	@return an iterator over this set. The iterator is not sensible to mutations of this set. 
	**/
	public ResettableIntSetIterator iterator(){
		assert (this.elements!=null);
		return (new ResettableIntSetIterator(this));
	}
```

#### Using the iterator
```java 
// Print all items
ResettableIntSetIterator it = s4.iterator();
for (int i=0; it.hasNext(); i++){
	System.out.format("\n s4[%d] = %d", i, it.next());
}

// compute the sum
int tot = 0;
it.reset();
for (int i=0; it.hasNext(); i++){
	tot = tot + it.next();
}
System.out.format("\n tot= %d", tot);

// Compute the sum of x^2 for each x: x<k
int tot2 = 0;
int k = 10;
it.reset();
for (int i=0; it.hasNext(); i++){
	Integer x = it.next();
	if(x<k){
		tot2 = tot2+x*x;
	}
}
System.out.format("\n tot2= %d", tot2);
```

#### Implementing methods for the new class
```java
/**
Initialize the iterator 
with current index = 0 and store a copy of the elements. 
@param s the source of data to initialize this iterator
@throws NullPointerException if s is null
**/

ResettableIntSetIterator(IntSet s){
	if (s == null){
		throw new NullPointerException("s cannot be null");	
	}
	this.elements = (Vector<Integer>) s.elements.clone();
	this.current = 0;
}
```