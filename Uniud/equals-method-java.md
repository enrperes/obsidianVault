```java
public class Person{
	private String name; 
	private int age; 

	@Override 
	public boolean equals(Object obj){
		if (this == obj){
			return true; 
		}
		if (obj == null || getClass() != obj.getClass()){
			return false; 
		}

	Person person1 = (Person) obj;
	return age = person.age && Objects.equals(name, person.name);
	}
}
```

By overriding the `equals` method, we define a custom rule for comparing instances of the class. 