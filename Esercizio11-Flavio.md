In una variante del problema di Giuseppe Flavio, N cavalieri siedono su sgabelli disposti in cerchio, numerati da 1 a N in senso orario. Il cavaliere sullo sgabello 1 riceve una brocca di sidro sufficiente per tutti.

La procedura per servire il sidro è la seguente:
1. Il cavaliere A ha la brocca.
2. Il cavaliere alla sua sinistra è B, e alla sinistra di B c'è C.
3. B porge la tazza di C ad A, che la riempie.
4. C si alza e lascia la tavola (va a bere sotto una pergola).
5. A passa la brocca al cavaliere alla sinistra di C (cioè il successivo a C).
6. Il processo si ripete finché restano solo due cavalieri seduti.
Obiettivo: Tu e un amico volete essere tra gli ultimi due cavalieri rimasti, per poter bere tutto il sidro rimanente. Dovete quindi scegliere con attenzione i numeri degli sgabelli da occupare, in modo da essere tra i due superstiti.

#### Classe `GiuseppeFlavio` 
Contenitore principale con il metodo `josephus` 
Crea una tavola rotonda che rappresenta i cavalieri con una lista collegata (array next) 
> lista circolare: l'ultimo nodo non punta a null ma torna al primo


Finchè ci sono più di 2 cavalieri viene eseguito t.serve e t.pass per eliminare un cavaliere e spostare la brocca al cavaliere successivo a quello eliminato. 

il main serve solo a testare il metodo con vari n

#### Classe `TavolaRotonda` 
Modella i cavalieri seduti 
attributi: next, current, remaining 
il costruttore crea un cerchio: ogni cavaliere i punta al successivo i+1 tranne l'ultimo che punta al 1. 
metodo `serve()` elimina il terzo cavaliere a partire dal current
metodo `pass()` : dopo un'eliminazione, la brocca passa al cavaliere dopo quello eliminato. 

Vengono stampati i due superstiti 


### TavolaRotonda


#### GiuseppeFlavio

`josephus(int n)` restituisce la coppia "fortunata"

```java
public class GiuseppeFlavio {
    public static int[] josephus(int n) {
        TavolaRotonda t = new TavolaRotonda(n);
            while (t.getRemaining() > 2) { // continua finchè non rimangono 2 cavalieri
                t.serve();
                t.pass();
            }
        return new int[]{ t.getCurrent(), t.getNext() };
    }
        
    // output test
    public static void main(String[] args) {
        // Test esempi della consegna
        int[] inputs = {2, 3, 4, 5, 6, 7, 8, 12, 1500};
        for (int n : inputs) {
            int[] duo = josephus(n);
            System.out.printf("josephus(%d) → (%d, %d)%n", n, duo[0], duo[1]);
        }
    }
}
```


#### TavolaRotonda
```java
 public class TavolaRotonda {
    // attributi
    private int[] next; // indice del cav. successivo a i 
    private int current; // indice cav. che ha la brocca
    private int remaining; // numero cav. rimasti

	// costruttore
    public TavolaRotonda(int n) { 
        remaining = n;
        next = new int[n + 1];
        for (int i = 1; i <= n; i++) {
            next[i] = (i == n ? 1 : i + 1);
        }
        current = 1;
    }

    // elimina il terzo cavaliere partendo da current. 
    public void serve() {
        int first = next[current];
        int second = next[first];
        next[first] = next[second];
        remaining--;
    }

    // passa la brocca al cavaliere successivo a C
    public void pass() {
        current = next[next[current]];
    }

    public int getRemaining() {
        return remaining;
    }

    public int getCurrent() {
        return current;
    }

    public int getNext() {
        return next[current];
    }
} 
```


