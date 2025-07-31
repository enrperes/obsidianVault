![[Pasted image 20250730212725.png#invert|center|500]]


> [!example]- RompiCapoApp.java
>
> #### RompiCapoApp
> ```java
>  import java.util.Scanner; // per prendere n in input
> 
> public class RompiCapoApp {
> 
>     private final int n;           // dimensione del puzzle
>     private final RompiCapo model; // logica di gioco
>     private final PuzzleBoard gui; // interfaccia grafica
> 
>     // crea la finestra e costruisce il modello 
>     public RompiCapoApp(int n) {
>         this.n     = n;      
>         this.model = new RompiCapo(this.n);
>         this.gui   = new PuzzleBoard(this.n);
>         refresh();                        // visualizza lo stato iniziale
>     }
> 
>     /** ciclo principale **/
>     public void play() {
>         while (!model.isSolved()) {
>             int tile = gui.get();          // click su un tassello
>             if (model.move(tile)) {
>                 refresh();                // ridisegna
>             } else {
>                 System.out.println("Mossa non valida");
>             }
>         }
>         refresh();                     
>         System.out.println("Puzzle risolto!"); 
>     }
> 
>     // Aggiorna la GUI facendo riferimento allo stato attuale 
>     private void refresh() {
>         for (int r = 0; r < n; r++) { // r = riga 
>             for (int c = 0; c < n; c++) { // c = colonna
>                 int val = model.tileAt(r, c); // prende il valore del tassello in (r, c) 
>                 if (val == 0) { // se è la lacuna
>                     gui.clear(r + 1, c + 1); // cancella quel tassello (non parte da 0)
>                 } else {
>                     gui.setNumber(r + 1, c + 1, val); // altrimenti imposta il valore
>                 }
>             }
>         }
>         gui.display();
>     }
>     
>     public static void main(String[] args) {
>         int n = 3; // default 
>         if (args.length > 0) {
>             n = Integer.parseInt(args[0]);
>         }
>         new RompiCapoApp(n).play();
>     }
> } 
> ```
> 

Vengono importate `ArrayList, List` per rappresentare la sequenza ordinata di elementi 
La classe RompiCapo ha il solo compito di modellare il puzzle. 
Tra le variabili di istanza: 
- `size`
- `board` = matrice $n \times n$ che rappresenta la tavoletta (0 = lacuna)
- `blankRow, blankCol` = coordinate della lacuna
- `rand` numero casuale per la funzione `shuffle`

Il costruttore prima inizializza board in ordine crescente da 1 a $n^{2-1}$, poi richiama `shuffle()` per mescolare tutto 

Poi c'è il metodo isSolved che scorre la matrice in ordine e confronta ogni casella con il valore atteso, fino all'ultimo che deve essere 0. Se tutto corrisponde, il gioco è risolto. 

Il controllo di fattibilità di una mossa è effettuato con la distanza di manhattan: se questa è = 1 allora la cella selezionata si trova in posizione adiacente alla lacuna. Se non è così, la mossa è da considerarsi non valida (e viene stampato un messaggio a video) 

L'esecuzione della mossa avviene verificando prima `canMove()`, poi scambiando il contenuto della cella che conteneva tile con la lacuna, aggiornando `blankRow` e `blankCol`.


> [!example] RompiCapo.java
> #### RompiCapo
> 
> ```java
>  import java.util.ArrayList;
> import java.util.List;
> import java.util.Random;
> 
> public class RompiCapo {
>     // variabili istanza
>     private final int size;          // dimensione board
>     private final int[][] board;     // stato corrente
>     private int blankRow, blankCol;  // coordinate della lacuna
>     private final Random rand = new Random(); // per lo shuffle
> 
>     /** Costruttore: **/
>     // Crea la tavoletta ordinata e la mescola con n^3*10 mosse casuali 
>     public RompiCapo(int n) {
>         if (n <= 1) n = 2; // dimensione minima = 2
>         this.size  = n;
>         this.board = new int[n][n];
> 
>         // 2 cicli for annidati per riempire le caselle
>         int val = 1;
>         for (int r = 0; r < n; r++) {
>             for (int c = 0; c < n; c++) {
>                 if (r == n - 1 && c == n - 1) {
>                     board[r][c] = 0;
>                     blankRow = r;
>                     blankCol = c;
>                 } else {
>                     board[r][c] = val++;
>                 }
>             }
>         }
> 
>         // mescolamento casuale
>         shuffle(n * n * n * 10);
>     }
>     
>     // ritorna true se i tasselli sono in ordine crescente e la lacuna è in basso a dx
>     public boolean isSolved() {
>         int expected = 1;
>         for (int r = 0; r < size; r++) {
>             for (int c = 0; c < size; c++) {
>                 if (r == size - 1 && c == size - 1) {
>                     return board[r][c] == 0;
>                 }
>                 if (board[r][c] != expected++) return false;
>             }
>         }
>         return true; // non raggiunto mai, ma per completezza
>     }
> 
>     // verifica se il tassello può essere mosso
>     public boolean canMove(int tile) {
>         if (tile < 1 || tile >= size * size) return false;
>         int[] pos = findTile(tile);
>         if (pos[0] == -1) return false; // tassello non trovato
>         int manhattan = Math.abs(pos[0] - blankRow) + Math.abs(pos[1] - blankCol);
>         return manhattan == 1;
>     }
> 
>     // Esegue la mossa solo se è possibile farlo
>     public boolean move(int tile) {
>         if (!canMove(tile)) return false;
>         int[] pos = findTile(tile);
>         board[blankRow][blankCol] = tile;
>         board[pos[0]][pos[1]]    = 0;
>         blankRow = pos[0];
>         blankCol = pos[1];
>         return true;
>     }
> 
>     // Ritorna il numero presente alla posizione (row, col)
>     public int tileAt(int row, int col) {
>         return board[row][col];
>     }
> 
>     /** --- Metodi privati --- **/
>     
>     // Mescola 
>     private void shuffle(int moves) {
>         for (int i = 0; i < moves; i++) {
>             List<Integer> neigh_list = neighbours(); // lista di mosse valide
>             int tile = neigh_list.get(rand.nextInt(neigh_list.size())); // estrae un tassello a caso
>             move(tile); // sempre valida
>         }
>     }
>     // I tasselli vicini alla lacuna (sopra, sotto, destra, sinistra) 
>     private List<Integer> neighbours() {
>         List<Integer> list = new ArrayList<>(); // lista vuota
>         int[][] dir = { {1,0}, {-1,0}, {0,1}, {0,-1} }; // vettore con le 4 direzioni
>         for (int[] d : dir) { // scorre ciascuna direzione dir
>             int r = blankRow + d[0];   // 
>             int c = blankCol + d[1];
>             if (r >= 0 && r < size && c >= 0 && c < size) { // fuori da board
>                 list.add(board[r][c]);
>             }
>         }
>         return list;
>     }
> 
>     // cerca le coordinate di un tassello
>     private int[] findTile(int tile) {
>         for (int r = 0; r < size; r++) {
>             for (int c = 0; c < size; c++) {
>                 if (board[r][c] == tile) return new int[] { r, c };
>             }
>         }
>         return new int[] { 999, 999 }; // se non lo trova
>     }
> } 
> ```