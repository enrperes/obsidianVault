Rappresenta l'istanza corrente della classe in cui viene utilizzata. 

Esempi: 

1. Riferimento ai campi di istanza 
```java
public class MyClass{
	private int value; 
	public void set value(int value){
		this.value = value; // per far riferimento al campo di istanza di value. 
	}
}
```

2. Chiamata ai costruttori. 
```java
public class MyClass{
	private int value; 
	public MyClass{
		this(0); // chiamata al costruttore con un argomento 
	}
}
```

3. Passaggio dell' istanza corrente.
```java
public class MyClass{
	private String stringName; 
	public void doSomething(){
		OtherClass.process(this); // passa l'istanza corrente della classe a un altro metodo (o oggetto)
	}
}
```

4. Creazione di oggetti anonimi 
```java
MyInterface myObject = new MyInterface(){
	@override
	public void myMethod(){
		System.out.println("anonim class");
	}
}
```







