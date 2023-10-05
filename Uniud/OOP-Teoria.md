# Decomposition 
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
