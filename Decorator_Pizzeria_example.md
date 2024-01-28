```java
// Component interface
interface Pizza{
	String getDescription();
	int getCost();
}

// Concrete component
class PizzaMargherita implements Pizza{
	@Override
	public String getDescription(){
		return "Pizza Margherita";
	}
	@Override
	int getCost(){
		return 5;
	}
}


// Decorator abstract class
abstract class PizzaDecorator implements Pizza{
	public Pizza decoratedPizza;

	public PizzaDecorator(Pizza pizza){
		this.decoratedPizza = pizza;
	}

	@Override 
	public String getDescription(){
		return decoratedPizza.getDescription();
	}

	@Override
	public int getCost(){
		return decoratedPizza.getCost();
	}
}


// Concrete decorators
class NoMozzarellaPizzaDecorator extends PizzaDecorator{
	public NoMozzarellaPizzaDecorator(Pizza pizza){
		super(pizza);
	}

	@Override
	public String getDescription(){
		return super.getDescription() + ", senza mozzarella";
	}
	@Override
	public int getCost(){
		return super.getCost() - 1;
	}
}

class MargheritaConBufalaPizzaDecorator extends PizzaDecorator{
	public MargheritaConBufalaPizzaDecorator(Pizza pizza){
		super(pizza);
	}

	@Override 
	public String getDescription(){
		return super.getDescription() + "con bufala.";
	}
	@Override 
	public int getCost(){
		return super.getCost() + 2;
	}
}


// Client code
public class DecoratorExample{
	public static void main(String[] args){
		// Creating a pizza margherita
		Pizza pizzaMargherita = new PizzaMargherita();
		System.out.println("Cost: $" + pizzaMargherita.getCost() + ", Description: " + pizzaMargherita.getDescription());

		// Creating a margherita with bufala
		Pizza pizzaMargheritaConBufala = new PizzaDecorator(pizzaMargherita);
		//print
	}
}
```