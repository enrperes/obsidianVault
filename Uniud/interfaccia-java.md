Un'interfaccia in a java è una collezione di metodi astratti senza implementazione. Quando una classe implementa un'interfaccia, deve fornire l'implementazione per tutti i metodi dichiarati nell'interfaccia. Esempio: 


```java
interface Drawable{
	void draw();
}

class Cerchio implements Drawable{
	@Override
	public void draw(){
		//implementazione del metodo draw specifica per il Cerchio
	}
}
```

Altro esempio: 

`class MyClass extends MySuperClass implements YourInterface`

extends stabilisce la relazione di ereditarietà tra classi. Quindi MyClass eredita i campi e metodi definiti in `MySuperClass`. 
`implements` dichiara che la classe `MyClass` fornisce un'implementazione dei metodi definiti nell'interfaccia `YourInterface`.  