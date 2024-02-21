---
listings-no-page-break: "false"
title: IntSet Example
titlepage: "true"
---
### Breakdown: 
- `public IntSet()` constructor that creates an empty set
- `public IntSet(int[] elts)` constructor that creates an IntSet from an array of integers, elts. 
- `public IntSet(IntSet s)` constructor that creates an IntSet that is a copy of s. 
- `public void insert(int x)` method that adds x to the IntSet, if it's not already there. 
- `public boolean remove(int x)` Method that removes x from IntSet. Returns True if x was removed, false if not
- `public boolean isIn(int x)`  method that returns true if the integer x is in the IntSet, false otherwhise. 
- `private int indexOf(Integer x)`  private method that returns the index of the first occurrence of x in the IntSet. return -1 if not present. 
- `public int choose() throws EmptySetException` this method returns a random element from IntSet. If IntSet is empty, throw EmptySetException. 
- `public boolean SameValues(IntSet s2)` Method that returns true if IntSet has the same values as S2, regardless of the order. 

```java
public class IntSet {
	/** This class provides an ADT for sets of int. 
	IntSet is mutable, unbounded (=can hold elements of unspecified type)
	Class overview: 
	- public IntSet()
	- public IntSet(int[] elts)
	- public IntSet(IntSet s)
	- public void insert (int x)
	- public boolean remove(int x)
	- public boolean isIn(int x)
	- private int indexOf(Integer x)
	- public int choose() throws EmptyIntSetException
	- public boolean sameValues(IntSet s2)
	**/

	/** ABSTRACTION FUNCTION: 
	The set is composed of all all the integers that are represented in this.elements
	Elements is not sorted. 
	INVARIANT: 
	elements != null && elements contains no duplicates && elements containes boxed int (Integer)
	
	**/
	private Vector<Integer> elements; //private field, Vector of Integer Objects.

	/** EFFECT: initialize this to a new set, empty. **/
	public IntSet(){ // constructor of the class, takes no arguments
		this.elements = new Vector<Integer>();
	}


	/** @param: elts (= the elements to be added to the set)
	EFFECTS: initialize this to a new set, which contains each element of elts. Duplicated elements are not considered
	@throws NullPointerException if elts is null 
	**/
	public IntSet(int [] elts){
		if (elts == null){
			throw new NullPointerException("elts should not be a null");
		}
		this.elements = new Vector<Integer>(); //initialize elements field to a new ampty Vector of Integer. 
		for (int x:elts){ // iterate through elts array
			Integer y = new Integer(x); 
			if (!this.elements.contains(y)){
				this.elements.addElement(y);
			}
		}
	}


	/** Copy constructor. 
	@param s: a set to be duplicated
	EFFECT: initialize this to a new set that contains all and only the elements of s. 
	@throws NullPointerException if s is null. 
	**/
	@SuppressWarnings("unchecked") // compiler cannot guarantee type conversions are valid (unchecked type conversion) --> warnings 
	public IntSet(IntSet s){
		if (s == null){
			throw new NullPointerException("s should not be null");
		}
		this.elements = (Vector<Integer>) s.elements.clcone(); // Type casting. clone() is a predefined method. 
	}

	/** MODIFY this: x is added to this set if x is not present **/
	public void insert (int x){
		Objects.requireNonNull(this.elements); // if this.elements is null, NullPointerException is thrown
		Integer y = new Integer(x); // converts int x to Integer type Object. Necessary because elements field stores Integer Objects, not primitives. 
		if (!this.elements.contains (y)){
			this.elements.addElement(y);
		}
		assert (this.elements.contains(y)); // precondition assertion: checks if condition is true before executing some code: checks if the elements field contains the Integer Object Y after it has been added to the set. (ensures that addElement worked)
	}
	
	/** MODIFY this: x is removed from this set if x is present. 
	@return: true if x was removed. 
	**/
	public boolean remove(int x){
		Objects.requireNonNull(this.elements);
		Integer y = new Integer(x);
		boolean res = this.elements.remove(y); //.remove() returns bool true if removal was successful
		assert(!this.elements.contains(y)); // postcondition assertion 
		return(res);
	}

	/** @Return: true if x is present in this **/
	public boolean isIn(int x){
		Objects.requireNonNull(this.elements);
		Integer y = new Integer(x);
		int i = this.indexOf(y); // returns index of this where y is located. -1 if not found 
		boolean res = (i>=0);
		assert(!res || this.elements.contains(y)): "res implies (y in elements)";
		return (res);
	}

	public int indexOf(int z){
		Objects.requireNnNull(this.elements);
		Integer x = new Integer(z);
		for (int i=0, i< this.elements.size(); i++){
			if (this.elements.get(i).equals(x)){
				return(i);
			}
		}
		return(-1);
	}

	/** @return: the number of elements in this. **/
	/** NDR: size() is predefined but only in ArrayList. We define it again here.**/
	public long size(){
		Objects.requireNonNull(this.elements);
		return (this.elements.size());
	}

	/** @return: a random element in this.
		@throws: EmtpyIntSetException if this is empty
	**/
	public int choose() throws EmptyIntSetException{
		Objects.requireNonNull(this.elements);
		if (this.elements.isEmpty()){
			throw new EmptyIntSetException();
		}
		Random randomGenerator = new Random(); // new istance of Random class, used to create random numbers
		int x = randomGenerator.nextInt(this.elements.size()); //nextInt is a method of Random class. Generates a random int from 0 to this.elements.size
		return (this.elements.elementAt(x));
	}

	/** @param s2: the set to be compared to this
		@return true if this and s2 contain the same set of int 
		MODIFY this and s2 by sorting their elements
		@throws NullPointerException if s2 is null
	**/
	public boolean sameValues(IntSet s2){
		Objects.requireNonNull(this.elements);
		if (s2 == null){
			throw new NullPointerException("s2 should not be null");
		}
		Collections.sort(this.elements); // calls sort() method of Collection class, utility class in Java Collections Framework. 
		Collections.sort(s2.elements;
		boolean res = this.elements.equals(s2.elements); // we sort before because equals() is sensitive to the order of the elements. C
		return (res);
	}
}

```