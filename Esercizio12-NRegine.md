
  Posizionare N regine su una scacchiera $N \times N$ in modo tale che nessuna regina possa attaccare un'altra. 
 

> [!attention]+   Regola
 > Due regine si minacciano se: 
 > - Sono sulla stessa riga
 > - Stessa colonna
 > - Stessa diagonale

> [!question] Cosa fare: 
> Definisci le variabili di istanza della classe Board e realizza il costruttore e i metodi del protocollo in base alle indicazioni fornite sopra. Sperimenta quindi il programma per determinare il _numero_ di soluzioni del rompicapo delle _n_ regine e verifica che i risultati siano in accordo con la seguente tabella:


Queens.java realizza la strategia per contare il numero di soluzioni. 
Viene usato il metodo `contains` in Board.java per scorrere la lista e verificare la presenza di altre regine nella stessa
- Riga 
- Colonna
- Diagonali

### `Board.java` 
1. inizializzazione dei campi 
2. Costruttori: 
	1. Board(int n) crea una scacchiera vuota nxn con tutte le liste vuote. pubblico 
	2. Board(...) usato internamente quando viene aggiunta una regina. 
3. Metodi principali 
	1. `size()` ritorna la dimensione n
	2. `queensOn()` ritorna quante regine ci sono (q)
	3. `underAttack(i, j)` Controlla se la cella `i, j` è minacciata da una regina, quindi quando c'è in
		1. Stessa riga
		2. stessa colonna
		3. stessa diagonale ascendente (i-j)
		4. stessa diagonale discendente (i+j)
		5. `addQueen()` crea una nuova configurazione con una regina in più. Aggiorna le liste con `cons(i)` e `cons(j)`. Ricostruisce la stringa con `pairsString()` e restituisce un nuovo oggetto Board con q+1. Per aggiungerla si esplora l'albero delle possibili configurazioni e con `underAttack` si verificano i vincoli. 

### `Queens.java`

Ogni livello della ricorsione colloca una regina nella riga successiva in tutte le colonne non minacciate e somma le soluzioni dei rami generati. 


FILE: 
> [!code]- Queens.java
> ```java
>  
> /*
>  * Rompicapo delle "n regine"
>  *
>  * Ultimo aggiornamento: 12/04/2018
>  *
>  *
>  * Dato astratto "configurazione della scacchiera":  Board
>  *
>  * Operazioni:
>  *
>  *   new Board( int n )           :  costruttore (scacchiera vuota)
>  *
>  *   size()                       :  int
>  *
>  *   queensOn()                   :  int
>  *
>  *   underAttack( int i, int j )  :  boolean
>  *
>  *   addQueen( int i, int j )     :  Board
>  *
>  *   arrangement()                :  String
>  *
>  *
>  * Board b;
>  *
>  *   new Board(n)           costruttore della scacchiera n x n vuota;
>  *   b.size()               dimensione n della scacchiera b;
>  *   b.queensOn()           numero di regine collocate nella scacchiera b;
>  *   b.underAttack(i,j)     la posizione <i,j> e' minacciata?
>  *   b.addQueen(i,j)        scacchiera che si ottiene dalla configurazione b
>  *                          aggiungendo una nuova regina in posizione <i,j>
>  *                          (si assume che la posizione non sia minacciata);
>  *   b.arrangement() :      descrizione "esterna" della configurazione
>  *                          (convenzioni scacchistiche).
>  */
> 
> 
> public class Queens {
> 
> 
>   /*
>    * I. Numero di soluzioni:
>    *
>    *
>    * Il numero di modi diversi in cui si possono disporre n regine
>    *
>    *   numberOfSolutions( n )
>    *
>    * in una scacchiera n x n e' dato dal numero di modi diversi in
>    * cui si puo' completare la disposizione delle regine a partire
>    * da una scacchiera n x n inizialmente vuota
>    *
>    *   numberOfCompletions( new Board(n) )
>    */
>   
>   public static int numberOfSolutions( int n ) {
>     
>     return numberOfCompletions( new Board(n) );
>   }
>   
>   
>   /*
>    * Il numero di modi in cui si puo' completare la disposizione
>    * a partire da una scacchiera b parzialmente configurata
>    *
>    *   numberOfCompletions( b )   : int
>    *
>    * dove k regine (0 <= k < n) sono collocate nelle prime k righe
>    * di b, si puo' determinare a partire dalle configurazioni
>    * che si ottengono aggiungendo una regina nella riga k+1 in tutti
>    * i modi possibili (nelle posizioni che non sono gia' minacciate)
>    *
>    *   for ( int j=1; j<=n; j=j+1 ) {
>    *     if ( !b.underAttack(i,j) ) { ... b.addQueen(i,j) ... }
>    *   }
>    *
>    * calcolando ricorsivamente per ciascuna di queste il numero
>    * di modi in cui si puo' completare la disposizione
>    *
>    *   numberOfCompletions( b.addQueen(i,j) )
>    *
>    * e sommando i valori che ne risultano
>    *
>    *   count = count + numberOfCompletions( ... )
>    *
>    * Se invece la scacchiera rappresenta una soluzione (q == n)
>    * c'e' un solo modo (banale) di completare la disposizione:
>    * lasciare le cose come stanno!
>    */
>   
>   private static int numberOfCompletions( Board b ) {
>   
>     int n = b.size();
>     int q = b.queensOn();
>     
>     if ( q == n ) {
>     
>       return 1;
>     
>     } else {
>     
>       int i = q + 1;
>       int count = 0;
>       
>       for ( int j=1; j<=n; j=j+1 ) {
>         if ( !b.underAttack(i,j) ) {
>         
>           count = count + numberOfCompletions( b.addQueen(i,j) );
>       }}
>       return count;
>     }
>   }
>   
>   
>   public static void main( String args[] ) {
>   
>     int n = Integer.parseInt( args[0] );
>     
>     System.out.println( numberOfSolutions(n) );
>   }
> 
> 
> }  // class Queens
> 
>  
> ```


> [!NOTE]- Board.java
> ```java
>  public final class Board {
> 
>     // ---- Campi (7 variabili d'istanza) -----------------------------------
>     private final int n;              // dimensione scacchiera
>     private final int q;              // numero di regine collocate
>     private final IntSList rows;      // righe occupate (x)
>     private final IntSList cols;      // colonne occupate (y)
>     private final IntSList diagAsc;   // diagonali ascendenti: x - y
>     private final IntSList diagDesc;  // diagonali discendenti: x + y
>     private final String arrang;      // rappresentazione testuale
> 
>     // ---- Costruttore pubblico: scacchiera n x n vuota --------------------
>     public Board(int n) {
>         this.n        = n;
>         this.q        = 0;
>         this.rows     = IntSList.NULL_INTLIST;
>         this.cols     = IntSList.NULL_INTLIST;
>         this.diagAsc  = IntSList.NULL_INTLIST;
>         this.diagDesc = IntSList.NULL_INTLIST;
>         this.arrang   = "< " + n + " , 0 , >";
>     }
> 
>     // ---- Costruttore privato usato internamente --------------------------
>     private Board(int n, int q,
>                   IntSList rows, IntSList cols,
>                   IntSList diagAsc, IntSList diagDesc,
>                   String arrang) {
>         this.n        = n;
>         this.q        = q;
>         this.rows     = rows;
>         this.cols     = cols;
>         this.diagAsc  = diagAsc;
>         this.diagDesc = diagDesc;
>         this.arrang   = arrang;
>     }
> 
>     // ---- Metodi del protocollo -------------------------------------------
>     public int size() {
>         return n;
>     }
> 
>     public int queensOn() {
>         return q;
>     }
> 
>     public boolean underAttack(int i, int j) {
>         return contains(rows, i) ||
>                contains(cols, j) ||
>                contains(diagAsc, i - j) ||
>                contains(diagDesc, i + j);
>     }
> 
>     public Board addQueen(int i, int j) {
>         // Aggiorna le 4 liste
>         IntSList newRows     = rows.cons(i);
>         IntSList newCols     = cols.cons(j);
>         IntSList newDiagAsc  = diagAsc.cons(i - j);
>         IntSList newDiagDesc = diagDesc.cons(i + j);
> 
>         // Aggiorna la stringa di configurazione.
>         // Formato: "< n , q , (r1,c1) , (r2,c2) , ... >"
>         // Ricostruiamo la parte delle coppie a partire da rows/cols aggiornate.
>         String pairs = pairsString(newRows, newCols);
>         String newArrang = "< " + n + " , " + (q + 1) + " , " + pairs + " >";
> 
>         return new Board(n, q + 1, newRows, newCols, newDiagAsc, newDiagDesc, newArrang);
>     }
> 
>     public String arrangement() {
>         return arrang; 
>     }
> 
>     // ---- Metodi di supporto ----------------------------------------------
> 
>     private static boolean contains(IntSList s, int x) {
>         while (!s.isNull()) {
>             if (s.car() == x) return true;
>             s = s.cdr();
>         }
>         return false;
>     }
> 
>     // Costruisce la sequenza "(r,c) , ..." nell'ordine di inserimento
>     // (le liste sono al contrario, quindi usiamo reverse)
>     private static String pairsString(IntSList rs, IntSList cs) {
>         rs = rs.reverse();
>         cs = cs.reverse();
>         StringBuilder sb = new StringBuilder();
>         while (!rs.isNull()) {
>             sb.append("(").append(rs.car()).append(",").append(cs.car()).append(")");
>             rs = rs.cdr();
>             cs = cs.cdr();
>             if (!rs.isNull()) sb.append(" , ");
>         }
>         return sb.toString();
>     }
> } 
> ```

> [!NOTE]- IntSList.java
> ```java
>  
> /*
>  * Classe IntSList: Integer Scheme-like Lists
>  *
>  * Definizione di una classe in Java per realizzare oggetti
>  * assimilabili alle liste in Scheme, limitatamente al caso
>  * di liste di interi.
>  *
>  * Le liste create sono "immutabili".
>  *
>  * Ultimo aggiornamento: 18/03/2021
>  *
>  * ----- Protocollo -----
>  *
>  *   IntSList s, t, u;                     // Tipi di riferimento
>  *   int n;
>  *
>  * Costruttori:                            // Scheme:
>  *
>  *     s = new IntSList();                 // null
>  *     t = new IntSList(n,s);              // cons
>  *
>  * Metodi:                                 // Scheme:
>  *
>  *     boolean b = t.isNull();             // null?
>  *     n = t.car();                        // car
>  *     u = t.cdr();                        // cdr
>  *     u = t.cons(n);                      // cons (diversa versione)
>  */
> 
> 
> public class IntSList {                    // Scheme-Like Lists of int
> 
> 
>   // ----- Costante lista vuota (condivisa)
>   
>   public static final IntSList NULL_INTLIST = new IntSList();
>   
>   
>   // ----- Rappresentazione interna di una lista: private!
>   
>   private final boolean empty;             // oggetti immutabili:
>   private final int first;                 // variabili di istanza "final"
>   private final IntSList rest;
>   
>   
>   // ----- Operazioni di base sulle liste, mutuate da Scheme
>   
>   public IntSList() {                      // creazione di una lista vuota
>                                            // Scheme: null
>     empty = true;
>     first = 0;                             // valore irrilevante in questo caso
>     rest = null;
>   }
>   
>   public IntSList( int e, IntSList il ) {  // creazione di una lista non vuota:
>                                            // Scheme: cons
>     empty = false;
>     first = e;
>     rest = il;
>   }
>   
>   
>   public boolean isNull() {                // verifica se una lista e' vuota
>                                            // Scheme: null?
>     return empty;
>   }
>   
> 
>   public int car() {                       // primo elemento di una lista
>                                            // Scheme: car
>     return first;                          // si assume: lista non vuota
>   }
>   
>   
>   public IntSList cdr() {                  // resto di una lista
>                                            // Scheme: cdr
>     return rest;                           // si assume: lista non vuota
>   }
>   
>   
>   // ----- Realizzazione alternativa (sostanzialmente equivalente) del "cons"
>   
>   public IntSList cons( int e ) {          // costruzione di nuove liste
>                                            // Scheme: cons
>     return new IntSList( e, this );
>   }
>   
>   
>   // ----- Operazioni aggiuntive, definite in termini dei precedenti metodi
>   
>   public int length() {                    // lunghezza di una lista
>                                            // Scheme: length
>     if ( isNull() ) {                      // oppure: this.isNull()
>       return 0;
>     } else {
>       return ( 1 + cdr().length() );       // oppure:
>     }                                      //   ( this.cdr() ).isNull()
>   }
>   
>   
>   public int listRef( int k ) {            // elemento in posizione k
>                                            // Scheme: list-ref
>     if ( k == 0 ) {
>       return car();                        // oppure: this.car()
>     } else {
>       return ( cdr().listRef(k-1) );       // oppure:
>                                            //   ( this.cdr() ).listRef(k-1)
>     }
>   }                                        // etc.: this. implicito
>   
>   
>   public boolean equals( IntSList il ) {   // contronto di liste
>                                            // Scheme: equal?
>     if ( isNull() || il.isNull() ) {
>       return ( isNull() && il.isNull() );
>     } else if ( car() == il.car() ) {
>       return cdr().equals( il.cdr() );
>     } else {
>       return false;
>     }
>   }
>   
>   
>   public IntSList append( IntSList il ) {  // fusione di liste
>                                            // Scheme: append
>     if ( isNull() ) {
>       return il;
>     } else {
>       // return new IntSList( car(), cdr().append(il) );
>       return ( cdr().append(il) ).cons( car() );
>     }
>   }
>   
>   
>   public IntSList reverse() {              // rovesciamento di una lista
>                                            // Scheme: reverse
>     return reverseRec( new IntSList() );
>   }
>   
>   private IntSList reverseRec( IntSList re ) {
>   
>     if ( isNull() ) {                      // metodo di supporto: private!
>       return re;
>     } else {
>       // return cdr().reverseRec( new IntSList(car(),re) );
>       return cdr().reverseRec( re.cons(car()) );
>     }
>   }
>   
>   
>   // ----- Rappresentazione testuale (String) di una lista
>   
>   public String toString() {               // ridefinizione del metodo generale
>                                            // per la visualizzazione testuale
>     if ( isNull() ) {
>       return "()";
>     } else {
>       String rep = "(" + car();
>       IntSList r = cdr();
>       while ( !r.isNull() ) {
>         rep = rep + ", " + r.car();
>         r = r.cdr();
>       }
>       return ( rep + ")" );
>     }
>   }
> 
> 
> }  // class IntSList
> 
>  
> ```