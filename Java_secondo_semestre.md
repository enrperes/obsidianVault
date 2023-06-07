II Periodo Didattico
====================

*** Lezione 25 - 27/02/23 (Esercitazione) ***

Discussione della prova intermedia di accertamento del 19/01/2023.


*** Lezione 26 - 2/03/23 ***

0. Strumenti per la programmazione in Java
   (pagine online del corso).

1. Introduzione a Java: "traduzione" da Scheme a Java
   (vedi pagina online degli esempi).

2. Costrutti Java introdotti.

   - Unita' modulare "class" per organizzare il programma;

   - classe come modulo:

       MyFirstJavaProgram  vs.  Math

   - Intestazione di procedure (metodi statici) in Java: "static";

   - Struttura di procedure/metodi e comando "return".

3. Tipi di dati numerici in Java: double.

4. Costrutto "if-else" per il comando di scelta.

   4.1. Costrutti di scelta basata su una condizione in Java.

        - "if" vs. "if-else": perche' comando e non espressione;

        - Comando  if/else  vs.  espressione ( __ ? __ : __ )

   4.2. Oggetti (istanze di classi) e valori di tipo semplice in Java

        - Confronto di caratteri e confronto di stringhe:

            s.charAt(i) == ...  vs.  ( s.substring(i,i+1) ).equals(...)

        - Significato del confronto  s.substring(i,i+1) == ... ?

        - Interpretazione dell'assegnazione: riferimenti (!) ad oggetti.

6. Esercizi:
   - rivedere i costrutti Java introdotti;
   - "tradurre" da Scheme a Java alcune procedure sviluppate in classe.


*** Lezione 27 - 6/03/23 ***

1. Utilizzo di oggetti in Java.

   - Esemplificazione per il tipo String:

       String s, t;  int i, j;

       s.length()

       s.charAt(i)

       s.substring(i,j)  // ma anche:  s.substring(i)

       s.concat(t)       // ma anche:  s + t

       s.equals(t)

   - Sintassi in generale per gli oggetti:

       < oggetto > . < metodo > ( < lista argomenti> )

2. Altri esempi di traduzione da Scheme a Java.

   - Ricorsione: nulla di nuovo;

   - Costanti in Java: "static final";

   - Associazioni nome/valore (let ...) e variabili in Java:

       < tipo dato > < nome >  =  < espressione >

     (Ma attenzione: a differenza del caso del costrutto "let",
     il valore associato a una variabile in Java potenzialmente
     potrebbe essere modificato!)

3. Tipi semplici in Java:

   - int, long;

   - float, double;

   - boolean;

   - char;

   - ...

4. Esercizi:
   - rivedere i costrutti Java introdotti negli esempi svolti;
   - "tradurre" da Scheme a Java alcune fra le procedure sviluppate in classe.


Riferimenti: il libro di Sedgewick & Wayne presenta variabili, espressioni,
assegnazioni e tipi predefiniti in Java nella sez. 1.2; il costrutto di scelta
"if-else" nella prima parte della sez. 1.3.
Gli stessi argomenti (e le costanti) sono trattati anche nelle sezioni 2.1,
3.1.1-3.1.2 di Savitch & Carrano.


*** Lezione 28 - 9/03/23 ***

1. Esempi di programmazione imperativa in Java:

   - Massimo comun divisore iterativo:
     trasposizione iterativa della ricorsione di coda;

   - Minimo comune multiplo iterativo;

   - Verifica se un numero intero e' primo;

   - Versione imperativa (bottom-up) della procedura "ufo"
     (vedi lezioni 16-17) che applica un array di interi.

2. Costrutti per l'iterazione:

   2.1. Costrutto "while" per l'iterazione generale:

        - condizione (guardia);

        - il passo iterativo deve modificare i dati relativi alla condizione.

   2.2. Costrutto "for" per l'iterazione determinata:

        - variabile di controllo;

        - valore iniziale e finale;

        - progressione della variabile di controllo.

3. Array in Java:

   - tipi array:  < tipo componenti > []

   - creazione:  new < tipo componenti > [ < dimensione > ]

   - accesso in lettura/scrittura:  < array > [ < indice > ]

   - In Java gli array sono oggetti:
     come per qualsiasi altro tipo di oggetti, il comando di
     assegnazione determina l'assegnazione solo del riferimento!

4. Esercizi:
   - rivedere i costrutti Java introdotti negli esempi svolti;
   - "tradurre" da Scheme a Java alcune fra le procedure sviluppate in classe.


Riferimenti: Sedgewick & Wayne introducono variabili, espressioni, assegnazioni
e tipi predefiniti nella sez. 1.2; le stutture per la scelta e per l'iterazione
(in particolare i costrutti "for" e "while") nella sez. 1.3; i metodi statici
(procedure) nella sez. 2.1.; gli array unidimensionali nella sez. 1.4.
Savitch & Carrano introducono i metodi statici nella sez. 6.2.2, il costrutto
iterativo "for" nelle sezz. 4.1.3-4.1.4; gli array unidimensionali nella sez. 7.1;
gli altri argomenti sono trattati nelle sezioni 2.1 e 3.1.1-3.1.2


*** Lezione 29 - 13/03/23 ***

1. Ricapitolazione degli strumenti Java introdotti
   negli esempi della lezione precedente.

   2.1. Costrutto "while" per l'iterazione:

        - Rrichiamo dell'esempio del minimo comune multiplo.

   2.2. Costrutto "for" per l'iterazione:

        - Revisione imperativa della procedura btrVal
          per interpretare la notazione ternaria bilanciata.

   2.3. Corrispondenza fra "for" e "while":

        - Rielaborazione del costrutto iterativo
          per interpretare la notazione ternaria bilanciata.

   2.4. Creazione e operazioni relative a 'oggetti' di tipo
        strutturato "array":

        - Versione imperativa della procedura "ufo" basata su un array
          usato come stack per riprodurre il processo di elaborazione
          ricorsiva attraverso le fasi discendente e ascendente;

   2.5. Vedi anche gli esempi nelle pagine online del corso.

2. Nozioni tecniche sul linguaggio Java:

   - Attributi "public" e "private".

3. Esercizi:
   - rivedere i costrutti Java introdotti negli esempi svolti;
   - cercare di rielaborare in forma imperativa in Java
     alcune delle procedure definite in Scheme.


Riferimenti: Sedgewick & Wayne introducono variabili, espressioni, assegnazioni
e tipi predefiniti nella sez. 1.2; le stutture per la scelta e per l'iterazione
(in particolare i costrutti "for" e "while") nella sez. 1.3; i metodi statici
(procedure) nella sez. 2.1.; gli array unidimensionali nella sez. 1.4.
Savitch & Carrano introducono i metodi statici nella sez. 6.2.2, il costrutto
iterativo "for" nelle sezz. 4.1.3-4.1.4; gli array unidimensionali nella sez. 7.1;
gli altri argomenti sono trattati nelle sezioni 2.1 e 3.1.1-3.1.2


*** Lezione 30 - 16/03/23 ***

1. Seconda parte del corso: Astrazione sui dati.

   - 10110100 :
     Cosa rappresenta?
     In base a cosa posso affermare che rappresenta (p. es.) un numero intero?
     ... piuttosto che un carattere? piuttosto che...?

   - Astrazione per i tipi predefiniti;

   - Esempi (gia') considerati: tipi numerici, stringhe, immagini (Scheme);

   - Una classe ben progettata definisce un nuovo tipo!

   - Caratterizzazione del tipo: operazioni consentite = protocollo;

   - Separazione degli aspetti relativi all'implementazione
     e all'uso di un tipo di dato e ruolo delle operazioni;

   - Sviluppo degli esempi: (i) analisi e definizione del protocollo,
     (ii) applicazione del dato astratto, (iii) realizzazione/i;

   - Per cominciare oggetti "immutabili"
     (analogia: istanze di String).

2. Definizione del dato astratto "liste di interi in stile Scheme":
   protocollo e implicazioni per l'utente.

   2.1. In Java e' necessario specificare i tipi!
        ... anche degli elementi di una lista.

   2.2. Tipo: IntSList:

          IntSList s                    // istanza

          class IntSList                // classe

   2.3. Protocollo - operazioni base, tratte da Scheme:

          new IntSList() [: IntSList]   // null

          s.isNull() : boolean          // null?

          s.car() : int                 // car

          s.cdr() : IntSList            // cdr

          s.cons(n) : IntSList          // cons, oppure...

          new IntSList(n,s)             // costruttore equivalente

   2.4. Concetto di classe.

        - Classe = schema;

        - Rappresenta le caratteristiche comuni a tutti gli oggetti
          che sono creati come istanze della classe stessa;

        - Protocollo e relativo comportamento: entita' procedurali;

        - Intestazione di costruttori e metodi della classe IntSList.

3. Utilizzo del dato astratto IntSList:
   Esempio di applicazione del protocollo.

   - Dato astratto IntSList:
     Punto di vista del programmatore che lo utilizza.

   - Esempio: creazione della lista che rappresenta un intervallo di interi;

   - Versione ricorsiva mutuata dall'impostazione vista in Scheme.

4. Realizzazione del dato astratto IntSList:
   rappresentazione interna (nascosta) e "implementazione".

   4.1. Dato astratto IntSList: Punto di vista del programmatore che lo realizza.

        - "Implementazione" del dato astratto IntSList;

        - Punto di partenza: specifica formale delle intestazioni
          di costruttori e metodi che definiscono il protocollo;

        - Informazioni che caratterizzano un oggetto: variabili di istanza;

        - Come rappresentare una lista vuota?

        - Come rappresentare una lista non vuota?

        - Realizzazione basata su coppie primo elemento (car)
          e resto della lista (cdr);

        - Incapsulamento dell'informazione (information hiding):
          attributo "private" delle variabili di istanza.

   4.2. Metodologicamente, in genere (...ma ci sono eccezioni):

        - Le intestazioni di costruttori e metodi del protocollo sono pubbliche;

        - Le informazioni relative alle variabili di istanza sono private;

        - Le istruzioni che definiscono ciascun metodo operano su dati privati.

   4.3. Visualizzazione testuale di una lista:

        - Metodo "toString".

5. Esercizio:
   - rivedere e riflettere sui concetti di classe e oggetto
     e sui costrutti Java introdotti per caratterizzare una classe.


Riferimenti: classi, oggetti, variabili di istanza e metodi sono introdotti
nel cap. 3 del libro di Sedgewick & Wayne, nel cap. 5 di Savitch & Carrano
e nel cap. 4. di Lewis & Loftus (in particolare vedi sezz. 4.1-4.5).


*** Lezione 31 - 20/03/23 ***

1. Definizione del dato astratto IntSList: osservazioni e integrazioni.

   - Oggetti immutabili: attributo "final" delle variabili di istanza;

   - Costante NULL_INTLIST: confronto fra "static final" e "final";

   - Costruttori (o metodi) con lo stesso nome: identificazione
     univoca sulla base del numero, ordine e tipo degli argomenti;

   - Campo di applicazione del metodo toString() per definire
     le modalita' di visualizzazione testuale (String) di un oggetto:

       s.toString() : String

   - Ruolo di "this" = destinatario della richiesta (metodo invocato)
     e suo riferimento implicito;

   - Metodo statico "main" per l'avvio di un programma in Java
     e uso dei comandi da terminale (SDK Java).

2. Definizione del dato astratto IntSList: estensione del protocollo.

   2.1. Operazioni aggiuntive mutuate da Scheme
        e definite nello stile object-oriented (IntSList s, t):

          s.length()   : int             // length

          s.equals(t)  : boolean         // equal?

          s.listRef(i) : int             // list-ref

          s.append(t)  : IntSList        // append

          s.reverse()  : IntSList        // reverse

   2.2. Realizzazioni in termini di isNull(), car(), cdr() e cons(int)
        per semplificare eventuali revisioni della classe.

   2.3. Esempi di applicazione dei nuovi metodi.

   2.4. Confronto di oggetti:

          o1 == o2  vs.  o1.equals(o2)

        - o1 == o2 :  "identita' come oggetto",
                      o1 e o2 fanno riferimento allo stesso oggetto
                      (una sola creazione di oggetto);

        - o1.equals(o2) :  "stesso contenuto", ma
                           o1 e o2 possono essere oggetti diversi
                           (due creazioni di oggetti indipendenti);

        - o1 == o2  implica  o1.equals(o2),  ma non viceversa.

3. Esercizi:
   - analisi del codice del metodo toString() di IntSList;
   - definire una classe StringSList per rappresentare liste di stringhe
     nello stile di Scheme.


Riferimenti: classi, oggetti, variabili di istanza e metodi sono introdotti
nel cap. 3 del libro di Sedgewick & Wayne, nel cap. 5 di Savitch & Carrano
e nel cap. 4. di Lewis & Loftus (in particolare vedi sezz. 4.1-4.5).
La classe String e' introdotta nella sez. 2.2 di Savitch & Carrano.


*** Lezione 32 - 23/03/23 ***

0. IntSList: Variazioni sul tema.

   - Versione imperativa del metodo "reverse"
     (facendo riferimento alla realizzazione ricorsiva di coda).

1. Astrazione sui dati:
   conta ispirata a un racconto di Giuseppe Flavio (I sec. d.C.; pretesto).

   - Descrizione del gioco: "conta" (vedi "Concrete Abstractions", sez. 3.5;
     Graham, Knuth & Patashnik, "Concrete Mathematics", 1989).

   - Il gioco e' una utile metafora degli "oggetti" della programmazione: stato
     del gioco (struttura dati); informazioni sullo stato e regole (operazioni).

   - Regole della versione rielaborata da Knuth: esce un cavaliere ogni due
     (vedi note associate all'esempio nelle pagine del corso).

   - Esempio con n = 6 cavalieri:

          A*            A             A
       F     B       F             F
                -->           -->
       E     C       E     C*      E*    C
          D             D

                 A*            A

          -->           -->           -->
              E     C       E*            E*
                                       
   - Da identificatori simbolici a identificatori numerici:

       gflavio(6) = 5  (E, quinto cavaliere);

   - Vedi applicazioncine Java nelle pagine del corso
     (note relative all'esempio).

   - Operazioni consentite:
     creazione, osservazioni/domande sulla configurazione
     e applicazione delle "regole del gioco".

2. Definizione del protocollo del dato astratto "tavola rotonda" (RoundTable):

     [ costruttore/i ]
       ...

     [ operazioni per acquisire informazioni su una particolare istanza ]
       ...

     [ operazioni per generare nuove istanze a partire da istanze date ]
       ...

     (oggetti immutabili!)

3. Soluzione del problema di Giuseppe Flavio,
   dato il protocollo definito sopra -- ma non ancora implementato!

   - Punto di vista del programmatore "utente" del dato astratto "RoundTable";

   - Essenzialmente si tratta di uno studio di fattibilita':
     si riesce a operare sulla base del protocollo impostato?

4. Realizzazione del dato astratto "tavola rotonda".

   - Punto di vista dell' "implementatore" del dato astratto "RoundTable".

   - Come rappresentare la disposizione dei cavalieri?

   - Come rappresentare il cavaliere con la brocca di sidro?

   - Realizzazione basata su una lista di cavalieri (IntSList).

   - Variabili di istanza:
     numero commensali, cavaliere con la brocca, altri cavalieri;

   - Visualizzazione dell'evoluzione della rappresentazione interna
     attraverso diagrammi:

          6: A (B C D E F)     [ descrive la configurazione iniziale ]

            -->  5: A (C D E F)  -->  5: C (D E F A)  [ serve, passa ]

            -->  4: C (E F A)    -->  4: E (F A C)    [ serve, passa ]

            -->  3: E (A C)      -->  3: A (C E)      [ serve, passa ]

            -->  2: A (E)        -->  2: E (A)        [ serve, passa ]

            -->  1: E ()         [ descrive la configurazione finale ]

   - Implementazione delle operazioni previste dal protocollo:
     e' quanto da' significato al dato astratto (mantenimento della coerenza).

   - Realizzazione di costruttori e metodi.

   - Ruolo del costruttore privato: le scelte relative alla rappresentazione
     interna non devono essere esposte all'esterno attraverso il protocollo!

5. Esercizi:
   - studio della definizione della classe RoundTable:
     variabili di istanza, costruttori e metodi;
   - sperimentazione: sequenza dei risultati al variare del numero
     di cavalieri n = 1, 2, 3, ...: suggerisce qualcosa?
   - rielaborazione iterativa (for-downto) della procedura per costruire
     la lista degli interi che cadono nell'intervallo [inf, sup].


Riferimenti: vedi anche introduzione alla II parte e sez. 6.1 del libro
consigliato; per il problema di Giuseppe Flavio vedi sez. 3.5.


*** Lezione 33 - 27/03/23 ***

1. Integrazioni relative alla classe RoundTable:

   - attributo "final".

   - Sperimentazione delle prestazioni...

   - Obiettivo: riduzione dei costi della ricostruzione di liste.

   - Principale causa di inefficienza: ricostruzione completa
     della lista (append) ad ogni passo del gioco.

2. Diversa realizzazione del dato astratto "tavola rotonda":
   versione "piu' efficiente" basata su una coppia di liste.

   2.1. La lista della realizzazione precedente puo' essere spezzata
        in due liste parziali:

        - I cavalieri della prima lista sono seguiti da quelli
          della seconda sottolista in ordine rovesciato;

        - Nella maggior parte dei casi e' sufficiente spostare
          un cavaliere dalla prima lista alla seconda;

        - Saltuariamente, circa ad ogni dimezzamento del numero di cavalieri,
          la prima lista deve essere ricostruita rovesciando la seconda.

   2.2. Impostazione della una nuova rappresentazione - Variabili di istanza:

        - numero complessivo di cavalieri (int);

        - etichetta del cavaliere con la brocca (int).

        - prima lista parziale: head (IntSList),
          contenente i primi cavalieri dopo quello con la brocca;

        - seconda lista: tail (IntSList),
          contenente i restanti cavalieri in ordine inverso.

   2.3. Visualizzazione dell'evoluzione della rappresentazione interna
        (sempre riferita all'esempio della lezione precedente):

          6: A (B C D E F) ()       [ descrive la configurazione iniziale ]

            -->  5: A (C D E F) ()  -->  5: C (D E F) (A)  [ serve, passa ]

            -->  4: C (E F) (A)     -->  4: E (F) (C A)    [ serve, passa ]

            -->  3: E () (C A)    [ -->  3: E (A C) () ]   [ serve,  ...  ]

                                    -->  3: A (C) (E)      [   ...  passa ]

            -->  2: A () (E)      [ -->  2: A (E) () ]     [ serve,  ...  ]

                                    -->  2: E () (A)       [   ...  passa ]

          [ -->  2: E (A) () ]      -->  1: E () ()        [  ...  serve, ]

            -->  1: E () ()        [   ...  passa:  configurazione finale ]

3. Realizzazione della rappresentazione alternativa, piu' efficiente
   (vedi esempio nelle pagine del corso).

   - Realizzazione del costruttore  new RoundTable(int)

   - Realizzazione dei metodi  numberOfKnights()  e  knightWithJug()

   - Realizzazione dei metodi  serveNeighbour()  e  passJug()
     (analisi dei casi).

   - N.B. Il programma risolutivo non deve essere influenzato!
     Quanto concordato sul protocollo e sulla relativa interpretazione
     resta ancora valido (e vincolante) per la nuova versione.

4. Sperimentazione e osservazione delle prestazioni.

   - Richiamo delle due realizzazioni della classe RoundTable
     (vedi esempi nelle pagine del corso).

   - Dal punto di vista 'logico'
     il programmatore che usa la classe RoundTable
     non osserva alcun cambiamento.
     
   - Dal punto di vista delle 'prestazioni'
     il programmatore che usa la classe RoundTable
     osserva una risposta significativamente piu' rapida.

5. Stima dei costi computazionali per la prima realizzazione
   (rappresentazione interna basata su una sola lista).

   5.1. Analisi dei costi computazionali:

        - Stime basate sul numero di operazioni chiave (cons, car, ...)
          in un senso che verra' chiarito nel corso di Algoritmi e Strutture Dati;

        - Rilevanza delle scelte implementative.

   5.2. Numero di 'cons' per aggiornare la lista
        in funzione del numero iniziale di cavalieri n:  C(n).

        - Numero di 'cons' come misura rappresentativa dei costi computazionali:
          crescita del carico computazionale al crescere di n;

        - Nel seguito si farÃ  riferimento alla rappresentazione interna basata
          su una lista, contando il numero di operazioni 'cons'...
          il risultato sarebbe comunque identico.

   5.3. Analisi (caso della rappresentazione interna basata su una lista):

        - Quante volte viene invocata 'cons' (range)
          per costruire la lista iniziale relativa a n cavalieri?

        - Quante volte viene invocata 'cons' (append)
          per costruire una nuova lista di k elementi?

        - A partire da una lista di k+1 elementi, si ricostruisce
          (da capo) una lista di lunghezza k:  k 'cons'.

        - josephus(n) richiede n-1 passi della conta, durante i quali
          vengono ricostruite liste di n-2, n-3, ... 2, 1 elementi:

              C(n)  =  n-1  (costruzione della rappresentazione iniziale)

                       + n-2 + n-3 + ... + 2 + 1  (successive ricostruzioni)

              C(n)  =  n-1 + n-2 + n-3 + ... + 2 + 1  =  n(n-1) / 2

   5.4. Essenzialmente: C(n) cresce in proporzione al quadrato di n,
                        circa 1/2 * n^2.

        - Esempi:  C(5) = 10;  C(10) = 45;  C(50) = 1225;  C(100) = 4950;
                   C(1000) = circa 500000.

6. Stima dei costi computazionali per la realizzazione piu' raffinata
   (rappresentazione interna basata su una coppia di liste).

   6.1. Numero di 'cons' per aggiornare le rappresentazioni in funzione
        del numero iniziale di cavalieri n:  C(n).

   6.2. Analisi.

        - n-1 'cons' per costruire la rappresentazione iniziale
          (prima lista interna, esattamente come sopra).

              I(n)   =  n-1  = [circa]  n

        - Almeno un 'cons' ad ogni passo -- passJug: tail.cons(...)

        - La valutazione di  (josephus n)  richiede n-1 passi:

              C'(n)  =  n-1  = [circa]  n

        - Ad ogni dimezzamento del numero di cavalieri occorre rovesciare la
          lista "tail" per ricostruire la lista "head", di lunghezza (circa)
          n/2, n/4, n/8, ... :

              C"(n)  = [circa]  n/2 + n/4 + ... + n/(2^i) + ...

                     = [circa]  n (1/2 + 1/4 + ... + 1/(2^i) + ...)

                     = [circa]  n

        - Costi complessivi:

              C(n)  =  I(n) + C'(n) + C"(n)  = [circa]  3n

   6.3. Essenzialmente: C(n) cresce linearmente con n (circa 3n).

        - Esempi:  C(5) = 15;  C(10) = 30;  C(50) = 150;  C(100) = 300;
                   C(1000) = 3000  [circa].

7. Esercizi:
   - verifica sperimentale che le diverse realizzazioni sono logicamente
     equivalenti (determinano gli stessi risultati);
   - sperimentazione al fine di apprezzare la differenza nei tempi rilevati
     (ciclo di ripetute invocazioni della procedura josephus).


Riferimenti: vedi anche introduzione alla II parte e sez. 6.1
del libro "Concrete Abstractions".


*** Lezione 34 - 30/03/23 ***

1. Note a margine relative al problema di Giuseppe Flavio.

   - Vedi appunti associati all'esempio nelle pagine del corso.

2. Esercizi:
   - variante del problema in cui esce un cavaliere ogni tre:
     nuovo modello della tavola rotonda che consenta di conoscere
     sia il cavaliere con la brocca sia quello alla sua sinistra
     (alla fine restano in due).
   - versione iterativa della procedura "range" per creare una lista
     di interi consecutivi (for-downto!).

3. Astrazione sui dati: Rompicapo delle "n regine".

   - Il problema delle 8 regine venne proposto da Max Bezzel nel 1848
     e le prime soluzioni furono determinate nel 1850, quindi se ne
     occuparono diversi matematici (fra i quali Carl Firedrich Gauss)
     e in seguito Edsger W. Dijkstra e Niklaus Wirth nell'ambito
     dell'informatica (programmazione strutturata e backtracking).

   - Presentazione del problema: Disposizione di n regine su di una
     scacchiera n x n in modo tale che non si minaccino reciprocamente
     applicando le regole degli scacchi.

     (sperimentazione con l'applicazioncina...)

   - Analisi dei primi casi (n = 1, 2, 3, 4, 5)
     e crescita del numero di soluzioni al variare di n:

       dimensione     numero di soluzioni
        n =    1                       1
               2                       0
               3                       0
               4                       2
               5                      10
               6                       4
               7                      40
               8                      92
               9                     352
              10                     724
              11                    2680
              12                   14200

   - Le soluzioni del rompicapo vanno cercate fra le potenziali
     disposizioni di n regine, una per riga: Quante sono?
     (... permutazioni delle coordinate di colonna!)

       dimensione            permutazioni    % soluzioni
        n =    1                       1            100%
               2                       2              --
               3                       6              --
               4                      24          ~ 8.3%
               5                     120          ~ 8.3%
               6                     720          ~ 0.6%
               7                    5040          ~ 0.8%
               8                   40320          ~ 0.2%
               9                  362880          ~ 0.1%
              10                 3628800          ~ 0.02%
              11                39916800          ~ 0.007%
              12               479001600          ~ 0.003%

4. Specifica del protocollo del dato astratto "scacchiera":

     Board b;

     b = new Board(n)    :  scacchiera vuota n x n

     b.size()            :  dimensione scacchiera (int)

     b.queensOn()        :  numero regine collocate (int)

     b.underAttack(i,j)  :  posizione <i,j> minacciata? (boolean)

     b.arrangement()     :  descrizione "esterna" (String)

     b.addQueen(i,j)     :  scacchiera con una regina in piu' (Board)


5. Ricerca sistematica delle soluzioni per una scacchiera n x n.

   - Discussione del processo risolutivo come ricerca nello
     spazio degli stati = configurazioni della scacchiera
     (vedi appunti associati nella sezione degli esempi);

   - Ordine di collocazione di (nuove) regine sulla scacchiera;

   - Albero (n-ario) di ricerca: foglie e soluzioni.

6. Calcolo del numero di soluzioni per una scacchiera n x n.

   - Ricapitolazione di protocollo della classe Board;

   - Ricerca nello spazio delle configurazioni;

   - Visita in profondita' dello spazio di ricerca:
     ruolo della procedura "numberOfCompletions";

   - Struttura della ricorsione:
     for relativo alle posizioni in una data riga;

   - Caselle minacciate e discendenti nell'albero di ricerca;

   - Ruolo delle operazioni del protocollo.

7. Calcolo della lista delle soluzioni per una scacchiera n x n.

   - Lista delle "disposizioni": StringSList vs. BoardSList
     (vedi esercizio di laboratorio);

   - Impostazione basata sullo schema risolutivo della lezione
     precedente -- numero di soluzioni;

   - Corrispondenza strutturale delle procedure
     "numberOfSolutions"  e  "listOfAllSolutions";

   - Confronto dei casi base e delle operazioni nei programmi
     "numberOfCompletions"  e  "listOfAllCompletions".


Riferimenti: vedi anche introduzione alla II parte e sez. 6.1
del libro "Concrete Abstractions".


*** Lezione 35 - 3/04/23 ***

1. Premesse per la definizione di una rappresentazione interna
   della scacchiera (istanze di Board):

   - Coordinate <i,j> : posizione corrispondente all'incrocio di
                        riga i e colonna j;

   - Posizioni <u,v> e <i,j> allineate lungo la stessa riga
     se e solo se u = i;

   - Posizioni <u,v> e <i,j> allineate lungo la stessa colonna
     se e solo se v = j;

   - Posizioni <u,v> e <i,j> allineate lungo la stessa diagonale /
     se e solo se u-v = i-j (differenza delle coordinate invariante);

   - Posizioni <u,v> e <i,j> allineate lungo la stessa diagonale \
     se e solo se u+v = i+j (somma delle coordinate invariante);

   - Osservazione: la differenza delle coordinate individua
     univocamente una diagonale / -- ci sono 2n-1 diagonali /
     rappresentate da (differenza) -n+1, -n+2, ... 0, ... n-2, n-1;

   - Analogamente, la somma delle coordinate individua
     univocamente una diagonale \ -- ci sono 2n-1 diagonali \
     rappresentate da (somma) 2, 3, ... n+1, ... 2n-1, 2n;

   - numerazione delle righe dal basso verso l'alto:
     convenzioni adottate dagli scacchisti per le coordinate
     di ciascuna casella.

2. Realizzazione del dato astratto "scacchiera"
   (disposizione delle regine sulla scacchiera).

   - Informazioni rappresentate;

   - Variabili di istanza:

       n = dimensione scacchiera (int)
       q = numero di regine collocate sulla scacchiera (int)
       p = casella minacciata? (BiPredicate<Integer,Integer>)
       d = descrizione testuale fruibile dall'utente (String)

   - Componente funzionale (!): predicato per verificare se una
     posizione della scacchiera e' minacciata da altre regine;

   - Rappresentazione testuale della disposizione
     (superflua nel caso interessi solo il numero di soluzioni);

          ---------------
       4 |   |   |   |   |
         |---|---|---|---|
       3 |   |   |   |   |
         |---|---|---|---|
       2 |   |   |   | Q |  Q(2,4)  -->  d2
         |---|---|---|---|
       1 |   | Q |   |   |  Q(1,2)  -->  b1
          ---------------
           a   b   c   d
          (1) (2) (3) (4)

   - Codifica delle procedure del protocollo
     (provvisoria per "arrangement").

3. Elaborazione dell'elemento procedurale (predicato: t/f = true/false).

     B : <n, q, p, u>                             B': <n, q+1, p', u'>
      ---------------                               ---------------
     |   |   |   |   |                             |   |   |   |   |
     |---|---|---|---|                             |---|---|---|---|
     |   |   |   |   |       B.addQueen(i,j)     i | Q |   |   |   |
     |---|---|---|---|   ---------------------->   |---|---|---|---|
     |   |   |   | Q |                             |   |   |   | Q |
     |---|---|---|---|                             |---|---|---|---|
     |   | Q |   |   |                             |   | Q |   |   |
      ---------------                               ---------------
                                                     j
     p :
      ---------------
     | f | t | f | t |           <u,v>  e' minacciata in B'  se e solo se
     |---|---|---|---|
     | f | t | t | t |                  <u,v>  e' minacciata da Q in <i,j>
     |---|---|---|---|
     | t | t | t | t |                oppure
     |---|---|---|---|
     | t | t | t | t |                  <u,v>  e' minacciata in B
      ---------------

   - Proprieta' relative agli indici:

       <u,v>  e' minacciata da parte di Q in <i,j>  se e solo se
              u = i     :  stessa riga,         oppure
              v = j     :  stessa colonna,      oppure
              u-v = i-j :  stessa diagonale /,  oppure
              u+v = i+j :  stessa diagonale \.

   - eventualmente, in alternativa:

       <u,v>  e' minacciata da parte di Q in <i,j>  se e solo se
              u = i         :  stessa riga,         oppure
              v = j         :  stessa colonna,      oppure
              |u-i| = |v-j| :  stessa diagonale X

4. Descrizione della configurazione della scacchiera:  B.arrangement()
   (ai fini della comunicazione all'utente).

   - Integrazione della definizione della classe Board;

   - Codifica di una disposizione nella notazione degli scacchisti:

       b5, a2, h1, ...  (vedi sopra)

   - Integrazione del costruttore:

       config = " ";                  // disposizione vuota

   - Integrazione del costruttore privato (invocato da addQueen):

       config = b.arrangement()       // disposizione in B
                  + ... i ... j ...;  // posizione della nuova regina
 
   - Uso di costanti di tipo String per identificare direttamente i caratteri
     che codificano le coordinate a partire dai corrispondenti indici;

   - Metodo toString() .

5. Esercizi:
   - verifica su esempi delle relazioni fra indici di caselle per una stessa
     diagonale (considerando le due possibili direzioni delle diagonali);
   - sperimentazione dei programmi sviluppati;
   - definizione di una classe BoardSList -- lista in stile Scheme
     di scacchiere, sul modello di IntSList e StringSList.


Riferimenti: vedi anche introduzione all'astrazione sui dati
in Scheme: II parte e sez. 6.1 del libro "Concrete Abstractions";
vedi inoltre cap. 8 per ulteriori esempi/spunti relativi
all'astrazione sui dati.


*** Lezione 36 - 13/04/23 ***

1. Argomento avanzato: Tipi parametrizzati (generics).

   - Le classi IntSList (sviluppata a lezione), StringSList (problema di
     laboratorio) e BoardSList (esercizio) hanno una struttura molto simile;

   - E' possibile definire un'astrazione che generalizza sui tipi degli
     elementi di liste (elementi di tipo omogeneo);

   - Liste di elementi di tipo generico T:  SList<T> ;

   - Revisione astratta della classe per le liste in stile Scheme;

   - Esempi: conseguente revisione dei programmi della classe Queens:

       SList<Board>
 
   - Variazioni sul tema e liste di liste di interi:
     Rappresentazione della configurazione di una scacchiera
     (variabile di istanza "config") attraverso SList<SList<Integer>>,
     cioe' liste delle coppie (liste) di coordinate delle caselle
     in cui sono collocate le regine.

2. Esercizi:
   - lista di "arrangement" (String) al posto di lista di Board;
   - Rappresentazione della configurazione di una scacchiera
     (variabile di istanza "config") attraverso SList<String>,
     dove le stringhe sono coppie lettera cifra.
   - predicato "free" per conoscere se una casella e' gia' occupata
     da una regina (e conseguente condizione per "addQueen").

3. III parte del corso: Astrazione sullo stato.

   - Approccio imperativo basato sul concetto di stato (che cambia);

   - Controllo diretto dei dettagli della computazione da parte del
     programmatore;

   - Preambolo sulla gestione esplicita dello stato da parte del
     programmatore per migliorare le prestazioni di programmi ricorsivi
     (ad albero).

4. Ricorsione ad albero e possibili cause di inefficienza:
   Numeri di Fibonacci (problemi di tassellazione).

   4.1. Richiamo della soluzione ricorsiva in Scheme e Java:

        - Quante ricorsioni sono necessarie per calcolare (fibonacci 6)?

        - Quante ricorsioni sono necessarie per calcolare (fibonacci n)?

            R(n) >= (3/2)^(n-1)  (*)

            R(10) > 38

            R(100) > 1.5^99 = 2.7e17

          corrispondente a un intervallo di tempo...

                   > 8 anni  se una ricorsione richiede 1 nsec!

        - Dimostrazione per induzione della relazione (*):

            casi base:  R(0) >= (3/2)^-1  e  R(1) >= (3/2)^0

            passo induttivo per n > 2 :

              R(n) = 1 + R(n-2) + R(n-1) > (3/2)^(n-3) + (3/2)^(n-2)

                   = (2/3 + 1) (3/2)^(n-2) > (3/2)^(n-1)

        - Oppure, con maggiore precisione:

            R(n) >= phi^(n-1)

          da cui:

            R(n+2) = 1 + R(n) + R(n+1) > phi^(n-1) + phi^(n)

                   = (1 + 1/phi) phi^(n) = phi^(n+1)

          dove phi = 1 + 1/phi = 1.618  (phi rapporto aureo)

        - Osservazione:

            phi^99 = 4.9e20 = 1800 * 1.5^99

          Quindi il tempo sottostimato sopra va corretto a

            > 10000 anni !

5. Esempio rivisitato: Numeri di Fibonacci (problemi di tassellazione).

   5.1. Tecnica di memoization.

        - Motivi dell'inefficienza della soluzione ricorsiva;

        - Ricordare cosa e' gia' stato calcolato implica un concetto
          di stato (!) e un controllo dettagliato della computazione;

        - Recupero della procedura ricorsiva cui si applica
          la tecnica di memoization;

        - Prima versione con parametro di stato di tipo non precisato
          e analisi in termini di "trasparenza referenziale";

        - Scelta della struttura dati per rappresentare lo stato:
          array per registrare la "storia" computazionale;

        - Re-impostazione basata sullo stato:
          nucleo che integra il processo di elaborazione ricorsivo.

   5.2. Completamento.

        - Reinterpretazione del nucleo ricorsivo;

        - Contestualizzazione basata sullo stato;

        - Definizione della costante (static final) UNKNOWN.

   5.3. Inizializzazione dello stato.

        - Procedura da cui prende avvio la computazione;

        - Definizione del metodo (della procedura) base, non ricorsivo;

        - Inizializzazione dell'array di stato: costrutto "for";

        - Commento sulle inizializzazioni di default in Java.

6. Esercizi:
   - revisione dei costrutti Java introdotti;
   - sperimentazione delle versioni funzionale pura e con memoization
     e confronto dei tempi di calcolo!


Riferimenti: sul concetto di stato vedi anche il cap. 11 del libro consigliato
e in particolare la sez. 11.6; sulla tecnica di memoization vedi anche le prime
sezioni del cap. 12, in particolare la sez. 12.3.
Quanto al linguaggio Java, Sedgewick & Wayne introducono variabili, espressioni,
assegnazioni e tipi predefiniti nella sez. 1.2; le stutture per la scelta e per
l'iterazione (in particolare il costrutto "for") nella sez. 1.3; i metodi statici
(procedure) nella sez. 2.1.; gli array unidimensionali nella sez. 1.4.
Savitch & Carrano introducono i metodi statici nella sez. 6.2.2, il costrutto
iterativo "for" nelle sezz. 4.1.3-4.1.4; gli array unidimensionali nella sez. 7.1;
gli altri argomenti sono trattati nelle sezioni 2.1 e 3.1.1-3.1.2.


*** Lezione 37 - 17/04/23 ***

1. Osservazioni relative alla tecnica di memoization (Numeri di Fibonacci).

   1.1. Perdita di trasparenza referenziale.

        - Ricapitolazione della struttura ricorsiva integrata
          con la gestione delle informazioni di stato.

        - QUATTRO valori diversi della variabile di stato denotati
          dallo stesso simbolo nel corpo della procedura ricorsiva.

   1.2. Costi computazionali.

        - Tempi di calcolo percepibili anche per piccoli valori di n
          con la versione ricorsiva originale;

        - Con la versione che applica la tecnica di memoization
          si puo' calcolare fibonacci(100)!...

        - ...ma e' rappresentabile?

   1.3. Rappresentazioni a parola fissa degli interi in Java.

        - Intervalli di numeri rappresentabili: "int" e "long";

        - Utilizzo di "long" per ampliare il campo di valori rappresentabili;

        - Aggiornamento del programma in questo senso;

        - Situazioni limite:

            fib(45) = ca. 1.8 10^9   (int)

            fib(91) = ca. 7.5 10^18  (long)

2. Rivisitazione della soluzione del problema dei Percorsi di Manhattan.

   2.1. Richiamo della soluzione ricorsiva.

   2.2. Applicazione della tecnica di memoization.

        - Motivi dell'inefficienza della soluzione ricorsiva:
          come sopra;

        - Rappresentazione dello stato: matrice per registrare
          e recuperare i risultati dei calcoli gia' effettuati;

        - Array di array (matrice) in Java.

   2.3. Sviluppo modellato sul percorso seguito al punto 2:

        - Ricorsione basata sullo stato;

        - Inizializzazione dello stato.

3. Richiami importanti sul linguaggio Java.

   - Parametro di tipo array condiviso da invocante e invocato:
     Tipi semplici e tipi di "oggetti" in Java sono trattati
     in modo diverso;

   - Passaggio dei parametri di tipo semplice (tipi numerici,
     caratteri, booleani): passaggio per valore (duplicazione);

   - Passaggio dei parametri di tipo array, e in generale di oggetti:
     passaggio per riferimento (condivisione)!

   - Analogamente per il comando di assegnazione:
     si assegna il valore di un dato di tipo semplice,
     ma il riferimento relativamente a un oggetto (inclusi gli array);

   - E analogamente per il confronto con ==:
     si confrontano i valori dei dati di tipo semplice,
     ma i riferimenti di oggetti (inclusi gli array).

4. Ulteriori osservazioni in relazione all'esempio
   relativo al problema dei Percorsi di Manhattan.

   4.1. Raffinamenti del programma che applica la tecnica di memoization:

        - Eventuali raffinamenti: simmetrie (esercizio).

   4.2. Programmazione dinamica top-down vs. bottom-up.

        - Programmazione dinamica top-down (memoization):
          formalmente il programma resta ricorsivo
          e il controllo dell'ordine delle operazioni svolte
          e' affidato all'architettura sottostante il linguaggio;

        - Programmazione dinamica bottom-up:
          il programma e' iterativo
          e il controllo dell'ordine delle operazioni svolte
          e' sotto la responsabilita' diretta del programmatore;

   4.3. Applicazione di una tecnica di programmazione dinamica bottom-up
        alla soluzione ricorsiva del problema dei percorsi di Manhattan.

        - La struttura di supporto per rappresentare le informazioni
          di stato puo' essere la stessa utilizzata per la memoization;

        - Controllo esteso a tutti i dettagli del processo di elaborazione:
          soluzione imperativa, senza il ricorso alla ricorsione;

        - Relazioni fra i valori registrati nelle componenti
          della matrice e determinazione dell'ordine di calcolo.

5. Esercizi:
   - revisione dei costrutti Java introdotti;
   - sperimentazione oltre i limiti dei numeri rappresentabili;
   - sperimentazione delle versioni funzionale pura e con memoization
     e confronto dei tempi di calcolo per i programmi realizzati;
   - applicazione di una tecnica di programmazione dinamica bottom-up
     alla funzione che calcola i numeri di Fibonacci;
   - rielaborazione delle soluzioni del problema dei percorsi di
     Manhattan sfruttando le simmetrie rispetto ai due parametri;
   - applicazione delle tecniche di programmazione dinamica top-down
     (memoization) e bottom-up al calcolo dei numeri di Stirling del
     II tipo (problema delle ripartizioni di pasticcini).


Riferimenti: sul concetto di stato vedi anche il cap. 11 del libro consigliato
e in particolare la sez. 11.6; sulla tecnica di memoization vedi anche le prime
sezioni del cap. 12, in particolare la sez. 12.3.
Quanto al linguaggio Java, Sedgewick & Wayne introducono variabili, espressioni,
assegnazioni e tipi predefiniti nella sez. 1.2; le stutture per la scelta e per
l'iterazione (in particolare il costrutto "for") nella sez. 1.3; i metodi statici
(procedure) nella sez. 2.1.; gli array unidimensionali nella sez. 1.4.
Savitch & Carrano introducono i metodi statici nella sez. 6.2.2, il costrutto
iterativo "for" nelle sezz. 4.1.3-4.1.4; gli array unidimensionali nella sez. 7.1;
gli altri argomenti sono trattati nelle sezioni 2.1 e 3.1.1-3.1.2.


*** Lezione 38 - 20/04/23 ***

1. Problema rivisitato: Applicazione della tecnica di memoization top-down
   al calcolo della lunghezza della sottosequenza comune piu' lunga.

   1.1. Richiamo della soluzione ricorsiva (llcs)
        e riformulazione della procedura in Java.

        - L'efficienza e' particolarmente auspicabile per questo problema!
          (comando "diff"; allineamento delle sequenze genetiche).

   1.2. Applicazione della tecnica di memoization.

        - Motivi dell'inefficienza della soluzione ricorsiva;

        - Struttura di supporto per lo stato: analogie e differenze
          in relazione al problema dei percorsi di Manhattan;

        - Osservazione: i parametri delle chiamate ricorsive
          sono sempre coppie di suffissi delle stringhe iniziali
          (quante combinazioni di parametri sono possibili?);

        - Quindi: corrispondenza biunivoca fra coppie di suffissi
          e coppie di lunghezze dei suffissi (oppure in alternativa
          coppie di posizioni dei caratteri iniziali dei suffissi);

        - Struttura di supporto: matrice indicizzata sulla base
          della coppia di lunghezze delle stringhe;

        - Ricorsione integrata con lo stato.

2. Problema rivisitato: Applicazione della tecnica di memoization
   al calcolo della (di una) sottosequenza comune piu' lunga.

   - Struttura di supporto: matrice di String;

   - Stringa non definita: null.

3. Applicazione di una tecnica bottom-up di programmazione dinamica
   per calcolare la lunghezza della sottosequenza comune piu' lunga (LLCS).

   3.1. Modello di riferimento per la rappresentazione dello stato
        per lcs( "arto", "astro" ):

               a   s   t   r   o

             +---+---+---+---+---+ 4
          a  |   |   |   |   |   |
             +---+---+---+---+---+ 3
          r  |   |   |   |   |   |
             +---+---*---+---+---+ 2
          t  |   |   |   |   |   |
             +---+---+---+---+---+ 1
          o  |   |   |   |   |   |
             +---+---+---+---+---+ 0
             5   4   3   2   1   0

        Esempio: il punto * di coordinate (2,3) rappresenta la coppia
        di suffissi ("to","tro"), rispettivamente di lunghezza 2 e 3.

   3.2. Determinazione delle lunghezze delle LCS relative a coppie
        di suffissi: ordine di calcolo...

               a   s   t   r   o

             3   2---2---2---1---0
          a    \ |   |   |   |
             2---2---2---2   1---0
          r  |   |   |     \ |
             2---2---2   1---1---0
          t  |   |     \ |   |
             1---1---1---1---1   0
          o  |   |   |   |     \
             0   0   0   0   0   0

        - ...dal basso in alto, da destra a sinistra
          (in relazione alla figura);

        - Esemplificazione "manuale".

   3.3. Codifica.

        - Procedura per il calcolo bottom-up della LLCS.

4. Esercizi:
   - revisione dei costrutti Java utilizzati;
   - applicazione della tecnica bottom-up di programmazione dinamica
     al calcolo della LCS utilizzando una matrice di String.


Riferimenti: sul concetto di stato vedi anche il cap. 11 di Halperin et al.
e in particolare la sez. 11.6; sulla tecnica di memoization vedi le prime
sezioni del cap. 12, in particolare la sez. 12.3; la tecnica di programmazione
dinamica e' introdotta nella sez. 12.4 e confrontata con quella di memoization
nella sez. 12.5.
Sedgewick & Wayne introducono i costrutti per l'iterazione nella sez. 1.3
e gli array multidimensionali nella sez. 1.4.
Savitch & Carrano discutono i costrutti per l'iterazione nella sez. 4.1;
gli array multidimensionali nella sez. 7.5.
La classe String e' introdotta nella sez. 2.2 di Savitch & Carrano.


*** Lezione 39 - 27/04/23 ***

1. Applicazione di una tecnica bottom-up di programmazione dinamica
   al problema della sottosequenza comune piu' lunga (LCS).

   1.1. Rielaborazione peculiare del programma risolutivo.

        - Calcolo di una soluzione del problema LCS individuando
          un percorso appropriato attraverso la matrice per LLCS.

   1.2. Esemplificazione "manuale".

   1.3. Codifica.

        - Scelta degli indici: lunghezza dei suffissi oppure posizione
          del rispettivo primo carattere nelle stringhe iniziali;

        - Codifica della tecnica di programmazione dinamica per calcolare
          la sottosequenza comune piu' lunga (LCS) visitando in ordine
          opportuno le componenti dell'array bidimensionale (percorsi...);

        - Applicazione del costrutto "while"
          (appropriato al caso: quante sono le iterazioni?).

2. Tecniche di programmazione dinamica top-down (memoization)
   e bottom-up a confronto.

   2.1. Contesto:

        - Schema algoritmico: struttura ricorsiva della soluzione.

        - Osservazione chiave: occorrenza ripetuta di istanze di un
          problema, di cui si calcola (ricorsivamente) la soluzione
          attraverso lo stesso processo;

        - Progetto di una struttura dati per registrare e accedere
          in modo efficiente ai risultati parziali gia' calcolati.

   2.2. Memoization = programmazione dinamica top-down:

        - Si conserva (complicandola) la struttura della ricorsione;

        - L'ordine in cui vengono calcolati i risultati parziali
          resta delegato al sistema di gestione della ricorsione.

   2.3. Programmazione dinamica (dynamic programming) bottom-up:

        - Programma imperativo, che non si avvale della ricorsione;

        - Individuazione di un ordine di calcolo delle soluzioni
          delle varie istanze del problema;

        - Logica risolutiva e processo di elaborazione vanno
          pensati simultaneamente;

        - Codice meno trasparente in relazione al problema.

   2.4. Considerazioni metodologiche generali:

        - Impostazione: soluzione logicamente chiara, p. es. ricorsiva,
          ragionando il piu' possibile nell'ambito del dominio del problema;

        - Sviluppo: raffinamenti per migliorare le prestazioni, tenendo
          conto in modo piu' approfondito del modello computazionale;

        - Per esempio:
          soluzione ricorsiva top-down
            -> memoization (top-down)
            -> tecnica bottom-up
            -> riduzione dello spazio di memoria utilizzato.

3. Ulteriori esempi: numeri di Stirling del II tipo.

   3.1. Applicazione di una tecnica top-down di memoization:

        - Se il calcolo di stirling(n,k) si riconduce
          ricorsivamente al calcolo di stirling(i,j), allora:

            1 <= i <= n  e inoltre  1 <= j <= min(i,k)

        - Struttura di supporto: array di "righe",
          dove le righe possono avere lunghezza diversa.

   3.2. Attraverso la programmazione dinamica bottom-up:

        - Struttura di supporto come sopra;

        - Struttura di supporto ottimizzata: array lineare
          dove ad ogni iterazione dell'indice di riga, la
          riga viene aggiornata;

        - Iterazione discendente per l'indice di colonna;

        - Invariante all'iterazione i-ima:
          porzione sinistra (<=j): valori della riga di indice i-1,
          porzione sinistra ( >j): valori della riga di indice i.

4. Esercizi:
   - revisione dei costrutti Java utilizzati;
   - applicazione della tecnica bottom-up di programmazione dinamica
     al calcolo dei percorsi di Manhattan utilizzando come struttura
     di supporto un array unidimensionale (riga i-ma della matrice,
     da aggiornare opportunamente per passate successive);
   - sperimentazione di programmi che risolvono il problema LLCS
     applicando tecniche di memoization top-down e di
     programmazione dinamica bottom-up;
   - diff: LCS relativo a coppie di testi = sequenze di righe
     (StringSList oppure SList<String>), basata sul confronto diretto
     di righe considerate come elementi indivisibili.


Riferimenti: sul concetto di stato vedi anche il cap. 11 di Halperin et al.
e in particolare la sez. 11.6; sulla tecnica di memoization vedi le prime
sezioni del cap. 12, in particolare la sez. 12.3; la tecnica di programmazione
dinamica e' introdotta nella sez. 12.4 e confrontata con quella di memoization
nella sez. 12.5.
Sedgewick & Wayne introducono i costrutti per l'iterazione nella sez. 1.3
e gli array multidimensionali nella sez. 1.4.
Savitch & Carrano discutono i costrutti per l'iterazione nella sez. 4.1;
gli array multidimensionali nella sez. 7.5.
La classe String e' introdotta nella sez. 2.2 di Savitch & Carrano.


*** Lezione 40 - 4/05/23 ***

1. Astrazione sullo stato:
   Oggetti che evolvono nel corso della computazione.

   - Caratterizzazione generale del protocollo...

   - Creazione e inizializzazione dello stato: costruttore/i;

   - Acquisizione di informazioni sullo stato: metodi funzionali

       ... = v.info(...);

   - Modifica (evoluzione) dello stato: metodi imperativi/procedurali

       v.modify(...);

   - Talvolta uno stesso metodo puo' svolgere entrambi i ruoli.

2. Rivisitazione imperativa del programma che risolve il problemino
   ispirato al racconto di Giuseppe Flavio: revisione del protocollo.

   2.1. Tipo (classe):

        - RoundTable.

   2.2. Costruttore:

        - t = new RoundTable(n)

   2.3. Metodi per acquisire informazioni sullo stato:

        - t.numberOfKnights()     // -> int 

        - t.knightWithJug()       // -> int

   2.4. Metodi per modificare lo stato:

        - t.serveNeighbour()      // imperativi!
                                  // non restituiscono
        - t.passJug()             // istanze di RoundTable

3. Gli oggetti dal punto di vista del programmatore/utente:
   Codifica dell'algoritmo risolutivo.

   - Revisione in stile imperativo dello schema algoritmico.

4. Gli oggetti dal punto di vista del programmatore/implementatore:
   Rappresentazione dello stato interno di un oggetto di tipo RoundTable.

   4.0. Punto di partenza: protocollo (concordato fra interlocutori).

   4.1. Rappresentazione dello stato: Variabili di istanza
        (con riferimento alla seconda realizzazione, basata su un array).

        - private int[] knights;

        - private int num;

        - private int jug;

        - non attributo "final" !

   4.2. Realizzazione del costruttore relativo alla classe RoundTable:

        - inizializzazione delle variabile di istanza (stato interno);

        - spazio allocato per l'array: 2n-1 (perche'?).

   4.3. Codifica dei metodi:

        - realizzazione di numberOfKnights(): non cambia nulla;

        - realizzazione di knightWithJug(): cambia poco;

        - versione imperativa (void) dei metodi "serveNeighbour"
          e "passJug".

5. Rivisitazione imperativa del modello della scacchiera relativo
   al rompicapo delle n regine: protocollo della classe Board.

   5.1. Costruttore:

        - Board b = new Board(n)

   5.2. Metodi per acquisire informazioni sullo stato (funzionali):

        - b.size()            // -> int

        - b.queensOn()        // -> int

        - b.underAttack(i,j)  // -> boolean

        - b.arrangement()     // -> String

   5.3. Metodo per modificare lo stato (imperativo):

        - b.addQueen(i,j)     // -> void

6. Punto di vista del programmatore/implementatore:
   Rappresentazione dello stato di una istanza della classe Board.

   6.1. Struttura della rappresentazione interna: Variabili di istanza.

        - Dimensione della scacchiera:
          (attributo "final" e valori immutabili);

        - Numero e disposizione delle regine;

        - Righe, colonne e diagonali sotto scacco: array;

        - Per maggiore generalita': rappresentazione della
          configurazione attraverso array di interi
          (riga, colonna, ... sotto scacco da parte di k regine);

        - Descrizione testuale della configurazione (String).

   6.2. Attributi:

        - Attributo "private" e incapsulamento;

        - Attributo "final" solo per quanto riguarda la dimensione
          della scacchiera (la configurazione cambia).

   6.3. Realizzazione del costruttore relativo alla classe Board:

        - Inizializzazione delle variabili di istanza.

   6.4. Codifica dei metodi funzionali (informazioni sullo stato).

        - Realizzazione di size(), queensOn() e arrangement()
          (immediata: come per la versione precedente);

        - Realizzazione di underAttack(i,j): ruolo degli array.

   6.5. Codifica del metodo imperativo:  addQueen(i,j) .

        - Codifica di righe, colonne, diagonali e
          aggiornamento delle componenti degli array;

        - Aggiornamento della descrizione testuale
          della configurazione della scacchiera;

        - Mantenimento della coerenza relativamente
          alle informazioni rappresentate.

7. Punto di vista del programmatore/utente:
   Codifica in Java dell'algoritmo risolutivo per il numero di soluzioni.

   - Richiamo sommario della versione precedente;

   - Revisione dello schema algoritmico ricorsivo:
     b.addQueen(i,j)  non restituisce una scacchiera!

   - Aggiustamenti 'empirici';

   - Sperimentazione: funziona?

   - Caso 5x5 (senza "removeQueen") ... cosa accade?

8. Esercizi:
   - sperimentazione della realizzazione imperativa di RoundTable;
   - raffinamento della realizzazione imperativa di RoundTable
     riducendo lo spazio allocato per l'array e utilizzando
     l'aritmetica modulo la relativa lunghezza (knights.length);
   - perche' nel caso 5x5 si trova una soluzione anche applicando
     lo schema scorretto (senza rimozione delle regine)?


Riferimenti: classi, oggetti, variabili di istanza e metodi sono introdotti
nel cap. 3 del libro di Sedgewick & Wayne, nel cap. 5 di Savitch & Carrano
e nel cap. 4. di Lewis & Loftus (in particolare vedi sezz. 4.1-4.5).
Vedi inoltre documentazione online delle API di Java.


*** Lezione 41 - 8/05/23 ***

1. Rompicapo delle n regine:
   Integrazioni del programma per calcolare il numero di soluzioni.

   - Individuazione dei problemi nella versione preliminare;

   - Perche' nel caso 5x5 viene individuata una soluzione?

   - Necessita' di un metodo per rimuovere regine:  removeQueen(i,j);

   - Integrazione del protocollo e del codice della classe Board;

   - Integrazione dell'algoritmo (ricorsivo) risolutivo;

   - Implicazioni della perdita di trasparenza referenziale
     sulla chiarezza della logica dell'algoritmo.

2. Rompicapo delle n regine: Elenco delle soluzioni.

   - Da "numberOfSolutions" a "listOfAllSolutions";

   - Problemi relativi alla visualizzazione delle soluzioni:
     il modello b e' uno solo!

   - Da  SList<Board>
     a   SList<String>  (String: oggetti immutabili);

   - uso del metodo  arrangement()  oppure  toString() .

3. Esempio di problema che richiede una soluzione piu' articolata:
   Codifica di Huffman per la compressione di documenti.

   3.1. Compressione dell'informazione su una sequenza di simboli.
        Esempio (sequenza di nucleotidi, 12 simboli):

            A T T C T A C C T T G T

   3.2. Codifica standard a parola fissa (2 bit per 4 simboli):

            A -> 00,  T -> 01,  C -> 10,  G -> 11

        - Codifica (24 bit):

            A T T C T A C C T T G T  ->  000101100100101001011101

   3.3. Codifica di Huffman:

        - Peso dei simboli = numero di occorrenze (o frequenza);
          coppie simbolo/peso ordinate per peso crescente:

            ( G:1   A:2   C:3   T:6 )

        - Costruzione dell'albero di Huffman;
          aggregazione e riordinamento dei due elementi di minor peso:

            (  /\ : 1+2=3   C:3   T:6 )
              G  A

            (   /\ : 3+3=6   T:6 )
               /\ C
              G  A

            (    /\  : 6+6=12 )
                /\ T
               /\ C
              G  A

        - Codice = percorso nell'albero per raggiungere il simbolo
          (0=sinistra, 1=destra):

            A -> 001,  T -> 1,  C -> 01,  G -> 000

        - Codifica (21 bit):

            A T T C T A C C T T G T  ->  001110110010101110001

        - Decodifica: interpreto la sequenza binaria come istruzioni
          per scendere attraverso l'albero (0/sinistra, 1/destra);
          quando arrivo a una foglia, riporto il simbolo corrispondente
          e ritorno dalla radice dell'albero.

4. Esercizi:
   - sperimentazione della nuova versione del programma
     per risolvere il rompicapo delle n regine;
   - ripercorrere i passi concettuali delle operazioni di codifica
     e decodifica della tecnica di Huffman su altri esempi.


Riferimenti: classi, oggetti, variabili di istanza e metodi sono introdotti
nel cap. 3 del libro di Sedgewick & Wayne, nel cap. 5 di Savitch & Carrano
e nel cap. 4. di Lewis & Loftus (in particolare vedi sezz. 4.1-4.5).
Vedi inoltre documentazione online delle API di Java.


*** Lezione 42 - 11/05/23 ***

1. Codifica di Huffman - Lavoro preparatorio:
   Strumenti per estendere l'accesso ai file (di testo) al livello
   di singolo bit (oltre che di carattere o linea di testo).

   1.1. Canali per accedere ed operare su file di testo:

        - package huffman_toolkit

   1.2. Accesso in lettura a un file di testo ( huffman_toolkit.InputTextFile ):

          public static final int CHARS = 128
  
          public InputTextFile( String src )
          public boolean textAvailable()
          public boolean bitsAvailable()
          public String readTextLine()
          public char readChar()
          public String readCode( int k )
          public int readBit()
          public void close()

        (vedi documentazione nelle pagine degli esempi.)

   1.3. Accesso in scrittura a un file di testo ( huffman_toolkit.OutputTextFile ):

          public static final int CHARS = 128
  
          public OutputTextFile( String dst )
          public void writeTextLine( String txt )
          public void writeChar( char c )
          public void writeCode( String code )
          public void writeBit( int bit )
          public void close()

        (vedi documentazione nelle pagine degli esempi.)

   1.4. Eccezioni di I/O ( huffman_toolkit.TextFileException ).

   1.5. Le istanze di InputTextFile e OutputTextFile sono oggetti!

        - Come oggetti, sono accessibili solo attraverso il protocollo specifico;

        - Esempi: duplicazione di un file di testo attraverso

            [i]    src.readTextLine()  /  dst.writeTextLine(String)

            [ii]   src.readChar()      /  dst.writeChar(char)

            [iii]  src.readBit()       /  dst.writeBit(int)

            [iv]   src.readCode(int)   /  dst.writeCode(String)

          (...e conteggio delle iterazioni!)

        - Da terminale (Linux/MacOS):

            javac -classpath "huffman_toolkit.jar:." IOExamples.java
            java  -classpath "huffman_toolkit.jar:." IOExamples IOExamples.java copy.txt
              [...]

          (Windows: sostituire ':' con ';')

2. Esercizio:
   - sperimentare l'uso delle classi del package 'huffman_toolkit'
     per ricopiare un file tramite readCode(1) e writeCode(7).


Riferimenti: per i concetti di classe e oggetto vedi sezz. 3.2-3.3
del libro di Sedgewick & Wayne.


*** Lezione 43 - 15/05/23 ***

1. Codifica di Huffman:
   Determinazione del numero di occorrenze dei caratteri di un testo.

   - Rappresentazione dei conteggi tramite un array;

   - Lettura di un file di testo e calcolo delle frequenze  dei caratteri.

2. Rappresentazione dell'albero di Huffman.

   2.1. Classe Node per rappresentare i nodi di un albero di Huffman
        (oggetti immutabili);

        - Protocollo: due costruttori!

        - Intestazione di costruttori e metodi;

        - Definizione dello stato interno;

        - Realizzazione di costruttori e metodi.

   2.2. Integrazione - Code con priorita' e priorita' di istanze di Node:

        - Integrazione della classe Node:

            implements Comparable<Node> 

        - Definizione del metodo del protocollo di Comparable<Node>:

            int compareTo(Node)

3. Costruzione dell'albero e definizione dei codici di Huffman.

   3.1. Coda con priorita'.

        - PriorityQueue<Node>  [ java.util ]

        - Protocollo:  new PriorityQueue<Node>(),
                       size(),  add(Node),  poll(),  peek()

        - Approccio alla costruzione dell'albero di Huffman
          a partire dall'istogramma delle frequenze dei caratteri;

        - Confronto di priorita': Node implements Comparable<Node>

        - Algoritmo che applica la coda con priorita'
          per costruire l'albero di Huffman.

   3.2. Costruzione della tabella dei codici di Huffman
        per i caratteri contenuti nel documento:

        - Visita ricorsiva dell'albero di Huffman;

        - Parametro: codifica binaria del percorso dalla radice
          dell'albero di Huffman al nodo correntemente visitato;

        - Parametro di stato: tabella in corso di compilazione;

        - Inizializzazioni per preparare la visita ricorsiva.

4. Compressione di documenti testuali con la tecnica di Huffman.

   - Scansione I: frequenze dei caratteri;

   - Costruzione dell'albero di Huffman;

   - Costruzione della tabella dei codici dei caratteri;

   - Scansione II: codifica di Huffman;

   - Criteri di scrittura di bit e sequenze di bit.

5. Decompressione e ripristino di documenti testuali.

   1.0. Provvisoriamente...
        occorre passare indipendentemente l'albero di Huffman!

   1.1. Dispositivo per la decompressione.

        - Meccanismo di decodifica dei caratteri:
          percorsi attraverso l'albero di Huffman
          guidati dall'acquisizione di singoli bit.

   1.2. Decodifica e ripristino del documento.

   1.3. Verifiche sperimentali tramite comunicazione
        per via esterna dell'albero di Huffman.

6. Esercizi:
   - revisione e sperimentazione del codice sviluppato;
   - lettura bit a bit del contenuto del documento compresso.


Riferimenti: classi e oggetti sono trattati nelle sezz. 3.2-3.3 di
Sedgewick & Wayne; la sez. 3.4 presenta un esempio piu' ampio.


*** Lezione 44 - 18/05/23 ***

1. Decompressione e ripristino di documenti testuali.

   1.0. Provvisoriamente...
        occorre passare indipendentemente l'albero di Huffman!

   1.1. Dispositivo per la decompressione.

        - Meccanismo di decodifica dei caratteri:
          percorsi attraverso l'albero di Huffman
          guidati dall'acquisizione di singoli bit.

   1.2. Decodifica e ripristino del documento.

   1.3. Verifiche sperimentali tramite comunicazione
        per via esterna dell'albero di Huffman.

2. Compressione con la tecnica di Huffman:
   Integrazioni (vedi codice nelle pagine degli esempi).

   2.1. Struttura complessiva del documento compresso.

        - Come conoscere l'albero di Huffman
          per poter ripristinare il documento?

        - Intestazione: numero caratteri + codifica testuale dell'albero;

        - Codifica di Huffman: trasposizione del contenuto del documento.

   2.2. Rappresentazione testuale "linearizzata" dell'albero di Huffman.

        - Codifica dei nodi foglia (carattere corrispondente)
          e dei nodi intermedi ('@');

        - Visita ricorsiva dell'albero e generazione della stringa
          che lo rappresenta;

        - Trattamento dei caratteri speciali ('@') e di controllo ('\').

3. Decompressione con la tecnica di Huffman:
   Integrazioni (vedi codice nelle pagine degli esempi).

   3.1. Comprimere va benissimo, ma a patto che siamo in grado
        di ripristinare il documento originale!

   3.2. Operazioni preliminari per la decompressione.

        - Recupero del numero di caratteri;

        - Ripristino dell'albero di Huffman (schema ricorsivo);

        - Verifiche sperimentali di consistenza delle operazioni.

4. Esempio: compressione di un documento compresso.

   - ripristino del documento originale?

   - fattore di compressione?

5. Esercizi:
   - revisione e sperimentazione del codice sviluppato
   - sperimentazione della compressione di un documento compresso!
     cosa accade?
   - risultati di "compressioni" ripetute in cascata, seguite
     da altrettante "decompressioni": fattore di compressione?
   - compressione di un documento di 5000 caratteri generato
     casualmente (distribuzione uniforme dei codici ASCII 0-127):
     fattore di compressione?


Riferimenti: classi e oggetti sono trattati nelle sezz. 3.2-3.3 di
Sedgewick & Wayne; la sez. 3.4 presenta un esempio piu' ampio.


*** Lezione 45 - 22/05/23 ***

2. Ricorsione e iterazione
   (vedi codice dell'esempio disponibile attraverso le pagine online del corso).

   2.1. Trasposizione iterativa di un programma ricorsivo
        utilizzando uno stack.

   2.2. Esempio: rielaborazione iterativa del metodo statico "flattenTree":

        - simulazione manuale della soluzione basata sullo stack;

        - codifica utilizzando uno stack di supporto: Stack<Node>

        - verifiche.

   2.3. Esempio: rielaborazione iterativa del metodo statico "huffmanCodesTable":

        - la tabella dei codici e' di fatto una variabile di stato;

        - le ricorsioni dipendono pero' da due parametri: classe Frame1;

        - codifica tramite Stack<Frame1> e verifiche.

   2.4. Esempio: rielaborazione iterativa del metodo statico "restoreTree":

        - Le ricorsioni dipendono anche da un parametro di stato: classe Frame2.

        - Stati:
            0 = avvio della procedura;
            1 = sospensione per dar corso alla prima invocazione ricorsiva;
            2 = sospensione per dar corso alla seconda invocazione ricorsiva.

        - Registrazione dei risultati parziali per determinare il risultato
          di una invocazione ricorsiva.

        - Lo stato del frame cambia nel corso della computazione.

        - codifica tramite Stack<Frame2>.

        - la trasformazione non e' immediata!

3. Esercizi:
   - simulazione manuale del processo di elaborazione della procedura
     iterativa con stack per compilare la tabella dei codici di Huffman;
   - verifica sperimentale su un documento prefissato che le versioni
     ricorsiva e iterativa con stack di "flattenTree" sono intercambiabili
     (intestazione e contenuto del file compresso identici!).


Riferimenti: classi e oggetti sono trattati nelle sezz. 3.2-3.3 di
Sedgewick & Wayne; la sez. 3.4 presenta un esempio piu' ampio.


*** Lezione 46 - 25/05/23 (Dario) ***

1. Verifica formale della correttezza dei programmi iterativi: preambolo.
   
   1.1. Moltiplicazione Egizia e moltiplicazione "del contadino Russo".

   1.2. Digressione storica (vedi appunti nella pagina degli esempi):

        - Moltiplicazione Egizia (Papiro di Rhind, circa 1650 a.C.);

        - Relazioni con l'algoritmo del contadino Russo (analisi di esempi);

        - Iterazione e ricorsione di coda consentono di fare i conti a mente
          (passo dopo passo, basta ricordare tre valori)...

        - ...Ma non la ricorsione generale o l'algoritmo originale degli Egizi
          (occorrerebbe tenere traccia di tutto il processo computazionale);

        - Perche' funziona? concetto di invariante!

  1.3. Concetto di "invariante".

        - Invarianti nell'analisi dei programmi iterativi;

        - Invarianti come strumento di analisi dei problemi in generale;

        - Invarianti nelle discipline scientifiche (geometria, fisica, chimica).

2. Verifica formale della correttezza "parziale".

   2.1. Formalizzazione delle specifiche.

        - Precondizioni: assunzioni sui dati di input;

        - Postcondizioni: relazioni fra risultati e dati di input.

   2.2. Formalizzazione della logica algoritmica: Asserzioni.

        - Invarianti di un comando iterativo
          (in corrispondenza alla condizione del ciclo -- 'guardia');

        - Proprieta' che si conservano ad ogni passo del ciclo.

   2.3. Correttezza parziale di un programma iterativo: Passi della verifica.

        - L'invariante vale all'inizio dell'iterazione;

        - L'invariante si conserva al generico passo iterativo;

        - Alla fine l'invariante permette di dedurre la postcondizione
          (l'asserzione che esprime le proprieta' del risultato atteso);

        - Passi della dimostrazione.

3. Verifica della correttezza "completa": terminazione.

   3.1. Funzione di terminazione di un comando iterativo
        --- intuitivamente: sovrastima del numero residuo di iterazioni;

   3.2. Proprieta' delle funzioni di terminazione:

        - Immagine discreta (numeri naturali);

        - Limite inferiore (zero);

        - Decresce strettamente ad ogni passo iterativo
          (quando vale l'invariante!).

   3.3. Funzione di terminazione per l'esempio considerato:

        - Scelta della funzione di terminazione;

        - Dimostrazione delle proprieta': verifica che la funzione
          introdotta e' effettivamente una funzione di terminazione...

        - ... purche' valga l'invariante!

4. Esempio di verifica formale della correttezza:
   Calcolo del quadrato come somma di numeri dispari consecutivi
   (versione imperativa di "unknown", lezione 17).

       // Elevamento al quadrato attraverso somme
  
       public static int sqr( int n ) {  //  Pre:   n >= 0
       
         int x = 0;
         int y = 0;
         int z = 1;
         
         while ( x < n ) {  //  Inv:   0 <= x <= n,  y = x^2,  z = 2x + 1
                            //  Term:  n - x
           x = x + 1;
           y = y + z;
           z = z + 2;
         }
         return y;                       //  Post:  y = n^2
       }

   4.1. Formalizzazione delle specifiche.

        - Precondizioni - assunzioni sui dati di input:

            Pre:   n >= 0

        - Postcondizioni - relazioni fra risultati e dati di input.

            Post:  y = n^2

   4.2. Formalizzazione della logica algoritmica: Asserzioni.

        - Invarianti di un comando iterativo (in corrispondenza alla 'guardia'):
          proprieta' che si conservano ad ogni passo del ciclo;

            Inv(x,y,z) :   0 <= x <= n,  y = x^2,  z = 2x + 1

        - Significato dei simboli nelle asserzioni e nel programma:
          un'asserzione "parla" dei valori delle variabili.

   4.3. Correttezza parziale di un programma iterativo: Passi della verifica.

        - L'invariante vale all'inizio dell'iterazione:

            Inv(0,0,1) :   0 <= 0 <= n,  0 = 0^2,  1 = 20 + 1

                           [ n >= 0 segue da Pre ]

        - L'invariante si conserva al generico passo iterativo;

            Inv(x,y,z) :   (a) 0 <= x <= n,  (b) y = x^2,  (c) z = 2x + 1

            Guardia :      (d) x < n  (condizione del while)

              x = x + 1;
              y = y + z;
              z = z + 2;

            Inv(x+1,y+z,z+2) :   0 <= x+1 <= n,  y+z = (x+1)^2,
                                 z+2 = 2(x+1) + 1

        - Infatti:

            (a), (d)  ==>  0 <= x+1 <= n

            (b), (c)  ==>  y+z = x^2 + 2x+1 = (x+1)^2

            (c)       ==>  z+2 = 2x+1 + 2 = 2(x+1) + 1

        - Alla fine l'invariante implica la postcondizione:

            Inv(x,y,z),  (e) x >= n  (uscita dal while)

        - Quindi:

            (a), (e)  ==>  (f) x = n

            (b), (f)  ==>  y = x^2 = n^2  [ Post ]

   4.4.  Funzione di terminazione e correttezza completa.

        - Scelta della funzione di terminazione:

            Term(x,y,z) = n - x

        - Dimostrazione delle proprieta'...

        - A valori naturali:

            Inv(x,y,z)  ==>  Term(x,y,z) >= 0  [ per (a) ]

        - Decresce strettamente dopo un passo iterativo:

            Inv(x,y,z) :   (a) 0 <= x <= n,  (b) y = x^2,  (c) z = 2x + 1

            Guardia :      (d) x < n  (condizione del while)

              x = x + 1;
              y = y + z;
              z = z + 2;

            Term(x+1,y+z,z+2) = n - (x+1) = n-x - 1 = Term(x,y,z) - 1


Riferimenti: vedi appunti disponibili attraverso le pagine on-line
del corso su moltiplicazione Egizia e algoritmo del contadino russo;
vedi inoltre i costrutti per l'iterazione nella sez. 1.3 del libro
di Sedgewick & Wayne; per gli array vedi sez. 1.4.


*** Lezione 47 - 29/05/23 (Dario) ***

1. Esempio di verifica formale della correttezza:
   Calcolo del minimo coumune multiplo di due interi positivi:

     public static int mcm( int m, int n ) {  // Pre:  m, n > 0
     
       int x = m;
       int y = n;
       
       while ( x != y ) {  // Inv:  0 < x, y <= mcm(m,n),  x mod m = y mod n = 0
                           // term:  2mn - x - y
         if ( x < y ) {
           x = x + m;
         } else {
           y = y + n;
         }
       }
       return x;  // Post:  x = mcm(m,n)
     }

   1.1. Correttezza parziale:

        - Impostazione analoga al caso precedente;

        - Trattamento dell' "if" annidato nel while: dimostrazione
          della conservazione dell'invariante articolata in due rami;

        - Invariante in corrispondenza alla condizione dell'iterazione;

        - L'invariante vale all'inizio dell'iterazione:

            0 < m, n <= mcm(m,n),  m mod m = n mod n = 0

        - L'invariante si conserva al generico passo iterativo:

             (i)  0 < x+m, y <= mcm(m,n),  (x+m) mod m = y mod n = 0

                  (assumendo Inv & x < y)

            (ii)  0 < x, y+n <= mcm(m,n),  x mod m = (y+n) mod n = 0

                  (assumendo Inv & x > y)

        - Alla fine l'invariante implica la correttezza del risultato:

            x mod m = x mod n = 0  (poiche' x = y)  ==>  x >= mcm(m,n)

            inoltre  x <= mcm(m,n)  per Inv

   1.2. Terminazione:

        - Scelta della funzione di terminazione:

            term(x,y,m,n) = 2 mcm(m,n) - x - y

        - Dimostrazione delle proprieta' della funzione di terminazione:

            term(x,y,m,n) >= 0  poiche' x, y <= mcm(m,n)

            term(x',y',m,n) <= term(x,y,m,n) - min(m,n) < term(x,y,m,n)

2. Esempio di verifica formale della correttezza:
   Fattorizzazione in fattori primi (utilizzando un array):

     public static int[] fattorizzazione( int n ) {  // Pre:  n >= 2

       int[] fattori = new int[ n+1 ];

       for ( int i=0; i<=n; i=i+1 ) {
         fattori[i] = 0;
       }
       int x = n;
       int p = 2;

       while ( x > 1 ) {      // Inv:  1 <= x <= n,
                              //       n = x * Prod (k: [2,n]) k^fattori[k],
                              //       x non ha fattori < p,  2 <= p <= n                 
                              // term: x + n - p
         if ( x % p == 0 ) {
           fattori[p] = fattori[p] + 1;
           x = x / p;
         } else {
           p = p + 1;
       }}
       return fattori;  // Post: n = Prod (k: [2,n]) k^fattori[k]
     }

   2.1. Correttezza parziale:

        - L'invariante vale all'inizio dell'iterazione:

            1 <= n <= n,  n = n * Prod (k: [2,n]) k^0,
            n non ha fattori < 2,  2 <= 2 <= n

        - L'invariante si conserva al generico passo iterativo:

             (i)  1 <= x/p <= n,
                  n = x/p * Prod (k: [2,p-1]) k^fattori[k] *
                      p^(fattori[k]+1) * Prod (k: [p+1,n]) k^fattori[k],
                  x/p non ha fattori < p,  2 <= p <= n

                  (assumendo Inv & x mod p = 0)

            (ii)  1 <= x <= n,
                  n = x * Prod (k: [2,n]) k^fattori[k],
                  x non ha fattori < p+1,  2 <= p+1 <= n

                  (assumendo Inv & x mod p > 0)

        - Alla fine Inv & x <= 1 implica la correttezza del risultato:

            1 <= x & x <= 1  implica  x = 1,  da cui

            n = 1 * Prod (k: [2,n]) k^fattori[k]

        - Introducendo qualche proprita' aggiuntiva si potrebbe
          facilmente dimostrare che i fattori (con esponente > 0)
          sono tutti numeri primi.

   2.2. Dimostrazione delle proprieta' della funzione di terminazione
        (in considerazione del fatto che vale l'invariante):

          x + n - p > 0

           (i)  x/p + n - p < x + n - p

          (ii)  x + n - (p+1) < x + n - p

3. Esercizio:

   - "completare" la postcondizione e l'invariante per dimostrare
     che i fattori con esponente maggiore di zero sono numeri primi;
   - completare la dimostrazione relativa al ramo "else" nell'iterazione
     del programma per il calcolo del minimo comune multiplo;

   - dimostrazione di correttezza del seguente programma:
  
       // Cubo attraverso somme
  
       public static int cube( int n ) {  //  Pre:  n >= 0
       
         int x = 0;
         int y = 0;
         int u = 1;
         int v = 6;
         
         while ( x < n ) {  //  Inv:  0 <= x <= n,  y = x^3,
                            //        u = 3x^2 + 3x + 1,  v = 6x + 6
                            //  Term: ?
           x = x + 1;
           y = y + u;
           u = u + v;
           v = v + 6;
         }
         return y;  //  Post:  y = n^3
       }

   - programma per simulare la tecnica di moltiplicazione Egizia.


Riferimenti: vedi i costrutti per l'iterazione nella sez. 1.3 del libro
di Sedgewick & Wayne; per gli array vedi sez. 1.4.


*** Lezione 48 - 1/06/23 (Dario) ***

1. Esempi di svolgimento di temi d'esame:
   - II prova di accertamento del 29/06/2020:
     versione A - ess. 2, 3, 4.

2. Esempi di svolgimento di temi d'esame:
   - II prova di accertamento del 25/06/2019: es. 4/A.


*** Lezione 49 - 5/06/23 ***