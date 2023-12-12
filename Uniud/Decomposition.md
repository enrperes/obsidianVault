> [!attention]  **Goal** 
 > To create modules that interact with one another in simple ways. 
 > Decomposing a problem means factoring it into smaller subproblems that can be solved independently. The sub problems's solutions are then combined into a solution for the original problem. 

 Example: 
```java
public int Factorial(int n){
if(n==0)
	return 1;
else
	return n*Factorial(n-1);
}

// Se n >= 0 y = n! <- questi sono i commenti utili. Spiega cosa fa il codice, non come lo fa. 
```

>[!bug]- Problema
>Se in input il numero è negativo, il programma non termina
>

> [!attention]  **Parametrization** 
 > Using parameters to make a program or function more flexible and adaptable. Enhances reusability of the code and versatility. 