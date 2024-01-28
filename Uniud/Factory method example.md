

```java
public class Restaurant {
	public Burger orderBurger(String request){
	Burger burger = null; 
	if ("Beef".equals(request)){
		burger = new BeefBurger();	
	} else if ("Veggie".equals(request)){
		burger = new VeggieBurger();
	}
	burger.prepare();
	return burger;
	}
}
```

This code lacks flexibility: it directly instantiates *specific* burgers types within the `orderBurger` method. 

To enhance flexibility we can create a `BurgerFactory` interface and implement it for each specific type of burger: 

```java
public abstract class Restaurant {
	public Burger orderBurger(String request){
		Burger burger = createBurger();
		burger.prepare()
		return burger;
	}
	public abstract Burger createBurger(); // 
}
```

```java
public class BeefBurgerRestaurant extends Restaurant{
	@Override
	public Burger createBurger(){
		return new BeefBurger();
	}
}
```

```java
public class VeggieBurgerRestaurant extends Restaurant{
	@Override
	public Burger createBurger(){
		return new VeggieBurger();
	}
}
```

```java
public interface Burger{
	void prepare();
}
```

```java
public class BeefBurger implements Burger{
	@Override 
	void prepare(){
		// prepare beef burger code
	}
}
```

```java
public class VeggieBurger implements Burger{
	@Override
	void prepare(){
		//prepare Veggie burger code
	}
}
```
The factory method relies on inheritance, delegating Object creation to subclasses that implement the factory method. 

```java
public static void main(String[] args){
	Restaurant beefResto = new BeefBurgerRestaurant();
	Burger beefBurg = beefRest.orderBurger();

	Restaurant veggieResto = new VeggieBurgerRestaurant();
	Burger veggieBurg = veggieResto.orderBurger();
}
```

![[Pasted image 20231221142101.png]]