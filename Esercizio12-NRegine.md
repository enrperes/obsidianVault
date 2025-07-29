> [!example]+  Rompicapo N regine 
 > Posizionare N regine su una scacchiera $N \times N$ in modo tale che nessuna regina possa attaccare un'altra. 
 > 

> [!attention]+   Regola
 > Due regine si minacciano se: 
 > - Sono sulla stessa riga
 > - Stessa colonna
 > - Stessa diagonale


Queens.java realizza la strategia per contare il numero di soluzioni. 


Viene usato il metodo `contains` per scorrere la lista e verificare la presenza di altre regine nella stessa
- Riga 
- Colonna
- Diagonali



```java
  public final class Board {

    // ---- Campi (7 variabili d'istanza) -----------------------------------
    private final int n;              // dimensione scacchiera
    private final int q;              // numero di regine collocate
    private final IntSList rows;      // righe occupate (x)
    private final IntSList cols;      // colonne occupate (y)
    private final IntSList diagAsc;   // diagonali ascendenti: x - y
    private final IntSList diagDesc;  // diagonali discendenti: x + y
    private final String arrang;      // rappresentazione testuale

    // ---- Costruttore pubblico: scacchiera n x n vuota --------------------
    public Board(int n) {
        this.n        = n;
        this.q        = 0;
        this.rows     = IntSList.NULL_INTLIST;
        this.cols     = IntSList.NULL_INTLIST;
        this.diagAsc  = IntSList.NULL_INTLIST;
        this.diagDesc = IntSList.NULL_INTLIST;
        this.arrang   = "< " + n + " , 0 , >";
    }

    // ---- Costruttore privato usato internamente --------------------------
    private Board(int n, int q,
                  IntSList rows, IntSList cols,
                  IntSList diagAsc, IntSList diagDesc,
                  String arrang) {
        this.n        = n;
        this.q        = q;
        this.rows     = rows;
        this.cols     = cols;
        this.diagAsc  = diagAsc;
        this.diagDesc = diagDesc;
        this.arrang   = arrang;
    }

    // ---- Metodi del protocollo -------------------------------------------
    public int size() {
        return n;
    }

    public int queensOn() {
        return q;
    }

    public boolean underAttack(int i, int j) {
        return contains(rows, i) ||
               contains(cols, j) ||
               contains(diagAsc, i - j) ||
               contains(diagDesc, i + j);
    }

    public Board addQueen(int i, int j) {
        // Aggiorna le 4 liste
        IntSList newRows     = rows.cons(i);
        IntSList newCols     = cols.cons(j);
        IntSList newDiagAsc  = diagAsc.cons(i - j);
        IntSList newDiagDesc = diagDesc.cons(i + j);

        // Aggiorna la stringa di configurazione.
        // Formato: "< n , q , (r1,c1) , (r2,c2) , ... >"
        // Ricostruiamo la parte delle coppie a partire da rows/cols aggiornate.
        String pairs = pairsString(newRows, newCols);
        String newArrang = "< " + n + " , " + (q + 1) + " , " + pairs + " >";

        return new Board(n, q + 1, newRows, newCols, newDiagAsc, newDiagDesc, newArrang);
    }

    public String arrangement() {
        return arrang;
    }

    // ---- Metodi di supporto ----------------------------------------------

    private static boolean contains(IntSList s, int x) {
        while (!s.isNull()) {
            if (s.car() == x) return true;
            s = s.cdr();
        }
        return false;
    }

    // Costruisce la sequenza "(r,c) , ..." nell'ordine di inserimento
    // (le liste sono al contrario, quindi usiamo reverse)
    private static String pairsString(IntSList rs, IntSList cs) {
        rs = rs.reverse();
        cs = cs.reverse();
        StringBuilder sb = new StringBuilder();
        while (!rs.isNull()) {
            sb.append("(").append(rs.car()).append(",").append(cs.car()).append(")");
            rs = rs.cdr();
            cs = cs.cdr();
            if (!rs.isNull()) sb.append(" , ");
        }
        return sb.toString();
    }
}
```
