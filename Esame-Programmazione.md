# 1. Procedure con argomenti procedurali
> Sulla base del programma impostato nel riquadro, la procedura `bin-trees` restituisce la lista di tutti gli alberi binari di struttura diversa con $n$ foglie. Ciascun albero binario è codificato da una stringa in modo analogo a quanto visto in relazione al progetto di Huffman: i nodi intermedi sono rappresentati dal simbolo `@` e le foglie dalla lettera `f`, senza distinzioni. Più precisamente, un albero costituito da un solo nodo è rappresentato dalla stringa `"f"`; un albero che si compone di una radice con sottoalbero sinistro codificato dalla stringa "$\sigma$" e con sottoalbero destro codificato da "$\delta$" è rappresentato dalla giustapposizione "`@`$\sigma \delta$". 
Esempi: 
```scheme
(bin-trees 1) --> ("f")
(bin-trees 2) --> ("@ff")
(bin-trees 3) --> ("@f@ff" "@@fff")
(bin-trees 4) --> ("@f@f@ff" "@f@@fff" "@@ff@ff" "@@f@fff" "@@@ffff")
(bin-trees 5) --> ...
```

Completa il programma inserendo espressioni appropriate negli spazi indicati. 

```scheme
(define bin-trees
  (lambda (n)
   (if (= n 1)
	    (list "f")
	    (in-lists-merge
		    (map(____(all-trees-from (bin-trees k)_________))
			    (int-range 1 (-n 1))
		    ))
	    )))
(define all-trees-from
  (lambda (lst rst)
	  (in-lists-merge)
		  (map (lambda (u) (map _______________ rst))
		  lst
		  ))
	  ))
(define in-lists-merge
  (lambda (v)
	  (if (null? v)
		  null
		  _________________
		  )))
(define int-range
  (lambda (inf sup)
	  (if (> inf sup)
		   null
		   (cons inf (int-range (+ inf 1) sup))
		   )))
```

# 2. Programmazione in Java
> Definisci in Java un metodo statico `longestContiguousRepeat` che, dato un array non vuoto `V` di caratteri, restituisce il carattere con il maggior numero di occorrenze contigue, cioè una dopo l'altra senza interruzioni, in `v`. Nei casi in cui la soluzione non sia unica, è indifferente quale fra i caratteri con questa proprietà venga restituito. 
Esempio: 
```Java
longestContiguousrepeat(new char[]{'a', 'b', 'b','a', 'a', 'b', 'c', 'c', 'c', 'c', 'b', 'b'}) ; ---> 'c'
```

# 3. Programmazione dinamica bottom-up
> La sottosequenza *crescente* più lunga (*LIS*) di una sequenza `s` è la sottosequenza *comune* più lunga (*LCS*) di `s` e della sequenza `v` che si ottiene ordinando gli elementi di `s` dal più piccolo al più grande. Il seguente programma applica questa proprietà per calcolsare la lunghezza della sottosequenza crescente più lunga (*LLIS*) dove le due sottosequenze che costituiscono gli argomenti della procedura ricorsiva `llcs` sono rappresentate dagli elementi dell'array `u` a partire dalla posizione `i` in avanti e dagli elementi dell'array `v` a partire dalla posizione `j`, rispettivamente: 

```Java
public static int llis (double[] s){
	double[] v = s.clone();       
	Arrays.sort(v); 
	return llcs(s,v,0,0); //lunghezza della sottosequenza comune più lunga 
}

private static int llcs(double[] u, double[] v, int i, int j){
	int n = u.length; 
	if ((i==n ) || (j==n)){
		return 0; 	
	} else if (u[i] == v[j]){
		return 1 + llcs(u, v, i+1, j+1); 
	} else {
		return Math.max(llcs(u, v, i+1, j), llcs(u, v, i, j+1)); 
	}
}
```

Completa il programma qui sotto, che applica una tecnica *bottom-up* di programmazione dinamica per rendere più efficiente la computazione ricorsiva avviata da `llis`. 

```java
public static int llisDP (double[]s){
	int n = s.length; 
	double[] v = s.clone();
	Arrays.sort(v); 
	__________ mem = ____________________________________;
	for (int k=0; k<n; k=k+1){
		mem ___________ = 0;
		mem ___________ = 0; 
	}
for (int i= ____; ______; ______; ){
	for (int j = ______; _______;  ______; ){
		_____________________________________
		_____________________________________
		_____________________________________
	}
}
return _______________; 
}
```

# 4. Ricorsione e iterazione 
> L'algoritmo ricorsivo discusso a lezione per risolvere il rompicapo delle *n* regine, in dunzione della dimensione $n \cdot n$ della scacchiera, si basa essenzialmente sulla visita di un albero delle configurazioni. I nodi di questo albero rappresentano infatti configurazioni della scacchiera e ciascun nodo ha tanti figli quante sono le configurazioni in cui una regina non minacciata può essere aggiunta alla successiva riga libera. Il programma in Java riportato di seguito adatta quello schema per determinare in modo casuale una delle soluzioni del rompicapo, facendo riferimento al caso in cui le configurazioni della scacchiera sono rappresentate da istane immutabili della classe `Board`. 

```java
public static Board queensSolution (int n){
	return queensCompletion (new Board(n));
}

private static Board queensCompletion (Board b){
	int n = b.size();
	int q = b.queensOn();
	if (q==n){
		return b; 
	} else {
		int i = q+1;
		int j = 1 + (int) (n*Math.random());
		for (int k=0; k<n; k=k+1){
			if (!b.underAttack(i, j)){
				Board solution = queensCompletion(b.addQueen(i, j));	
				if (solution != null) {
					return solution; 
				}
			}
			j = j % n + 1; 
		}
		return null; 
	}
}
```

Completa la definizione del metodo `queensSolutionIter` impostato sotto per trasformare il programma ricorsivo proposto nel corrispondente programma iterativo che applica uno *stack*.

```java
public static Board queensSolutionIter (int n){
	Stack<Board> stack = new Stack<Board>();
	_________________________________________________________________; 
	do{
		Board b = ___________________________________________________; 
		n = b.size(); 
		int q = _____________________________________________________; 
		if (q==n){
			_________________________________________________________; 
		} else {
		_____________________________________________________________
		_____________________________________________________________
		_____________________________________________________________
		_____________________________________________________________
		}
	} while (_______________________________________________________);
	return null; 
}
```