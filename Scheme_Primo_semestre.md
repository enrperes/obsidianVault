
Corso di Programmazione

a.a. 2022-23

Lezioni di Claudio Mirolo



I Periodo Didattico
===================


*** Lezione 1 - 3/10/22 ***

1. Informazioni generali sul corso (pagine del corso).

2. Presentazione del corso e motivazioni delle scelte didattiche:

   - Obiettivi metodologici;

   - Discussione di esempi;

   - Ruolo dell'astrazione;

   - Strumenti di programmazione.

3. Impostazione generale del corso:
   
     Parte I   - Astrazione procedurale;

     Parte II  - Astrazione sui dati;

     Parte III - Astrazione relativa allo stato.


Riferimenti: vedi pagine e schede di presentazione del corso.

---

*** Lezione 2 - 7/10/22 ***

1. Qualche spunto per avvicinarsi alla programmazione...
   ... e, piu' in generale, all'informatica.

   1.1. Tre miracoli:

           "Il primo miracolo e' che combinare un gran numero di volte
          un piccolo numero di operazioni elementari permette una potenza
          d'azione considerevole." (Jacques Mazoyer, 2005)

        - Poche operazioni elementari + pochi costrutti per comporre le operazioni;

        - Innumerevoli modi di comporre i semplici elementi base hanno per noi
          significato e rappresentano soluzioni algoritmiche di problemi;

        - Sorprendono la complessita' delle elaborazioni che si possono svolgere
          e l'intresse dei problemi che si possono risolvere con strumenti cosi'
          elementari;

        - Gli ingredienti del calcolo si riducono a ben poca cosa.

          * Riflessione (e modello) di A. Turing (1936):
            Programma nello stile imperativo, operazioni ridotte all'essenza minima;

          * Riflessione (e modello) di A. Church (1936):
            Programma nello stile funzionale, processo di elaborazione piu' astratto;

          * Modello URM (Shepherdson & Sturgis, 1963):
            Estrema semplificazione dell'architettura classica di von Neumann,
            programma sequenziale, operazioni banali;

          * Molti altri modelli...
 
        - Ma quali sono le potenzialita' e i limiti di quello che possiamo "calcolare"?
          Nel 1936, prima del computer moderno (Manchester Mark I, 1948),
          c'era gia' la risposta...

        - ...Sorprendentemente: con una molteplicita' di modelli, in un senso molto
          profondo si possono fare (= calcolare) sostanzialmente le stesse cose.

          "Il secondo miracolo e' che una grande varieta' di insiemi di operazioni
          elementari (ragionevoli) conduce alla stessa potenza [di calcolo].
          Il terzo miracolo e' che i limiti di questa potenza sono esprimibili
          formalmente." (Jacques Mazoyer, 2005)

        - E nel 1936 c'erano gia' i modelli di calcolo imperativo e funzionale!

   1.2. Oggetto dell'informatica, e in particolare della programmazione,
        e' il trattamento "formale":

          "L'informatica è una ricerca incessante per stanare il 'significato'
          dietro la 'forma', uno sforzo per costringere nei limiti della 'forma'
          quello che noi consideriamo il 'significato'." (Charles Duchâteau, 1992)

   1.3. A cosa servono i programmi?

        - "[Un] linguaggio di programmazione non e' semplicemente un modo di fare
          eseguire delle operazioni a un computer, ma e' piuttosto un nuovo mezzo
          formale per esprimere idee sulla metodologia. Percio' i programmi devono
          essere scritti per essere letti dalle persone, e solo incidentalmente
          per essere eseguiti dalle macchine." (Gerald J: Sussman, 1996)

        - A cosa servono i linguaggi di programmazione ad alto livello?
          (Se i programmi esistessero solo per poter essere eseguiti da parte
          di un dispositivo di calcolo, allora basterebbe il codice macchina.)

2. Espressioni aritmetiche: Formalizzazione in Scheme.

   2.1. Esempi di espressioni familiari:
        superficie totale del cilindro di raggio di base e altezza dati;

   2.2. Rappresentazione strutturale di un'espressione: albero di valutazione:

        - Qual e' l'ultima operazione?

        - Quali (sottoespressioni determinano) gli operandi?

        - E così via...

   2.3. Formalizzazione di un'espressione in Scheme:

        - Organizzazione dell'ambiente "Racket";

        - Aspetti sintattici: forma prefissa;

        - Relazioni fra espressioni Scheme e alberi di valutazione;

        - Formalizzazione e valutazione di una espressione.

3. Espressioni non numeriche in Scheme.

   3.1. Esempio: Plurale dei sostantivi maschili regolari
        (solo la regola piu' immediata).

        - Dato testuale: "protiro"...

        - Per declinare al plurale un sostantivo maschile regolare non occorre
          ne' conoscerne il significato, ne' averlo gia' utilizzato verbalmente!

        - Cosa faccio, allora, pensando in termini generali?

        - Espressione in Scheme: qual e' l'ultima operazione?
          e procedendo in modo simile, top-down...

        - "protiro" = elemento architettonico in corrispondenza al portale
          di una chiesa (esempio notevole: cattedrale di S. Ciriaco ad Ancona)

   3.2. Codifica in Scheme - Operazioni base sulle stringhe:

        - string-append :  giustapposizione di stringhe;

        - substring     :  estrazione di una porzione di stringa
                           (contigua, da ... a ... );

        - string-length :  lunghezza (numero di caratteri) di una stringa.

   3.3. Formalizzazione e valutazione in Scheme.

4. Esercizio:
   - espressione per declinare al plurale di un sostantivo in inglese
     (piu' semplice...).


Riferimenti: vedi schede di presentazione del corso e cap. 1 del libro consigliato.

---

*** Lezione 3 - 10/10/22 ***

1. Astrazione procedurale.

   1.0. Espressioni che hanno un senso come 'metodo' per calcolare qualcosa
        di significativo, per risolvere un problema...

        - Il valore delle espressioni esaminate nella lezione precedente non
          risiede nel numeretto che risulta dal calcolo, ma nella struttura
          di tale calcolo che si generalizza a un'infinita' di casi.

   1.1. Esempio di espressioni numeriche - stile "calcolatrice tascabile":
        Superficie totale di un cilindro di raggio 5.0 cm e altezza 11.8 cm

          (*  (* 2 3.14159 5.0)  (+ 5.0 11.8))

   1.2. Al cuore della programmazione funzionale ci sono le espressioni.

        - Operazioni base: "funzioni" ben conosciute, p.es. operazioni aritmetiche;

        - Struttura delle espressioni: rappresenta la composizione di funzioni:
          applicazione di operazioni ai risultati di altre operazioni;

        - Inoltre, si rappresenta la generalizzazione dell'espressione da valutare
          in "funzione" di alcuni dati il cui valore puo' cambiare;

            (* (* 2 3.14159 r) (+ h r))

        - Astrazione procedurale!
          Al variare di h, r...

   1.3. Procedure come astrazione di espressioni.

        - Motivazioni: modularita', riutilizzo, leggibilita';

        - Variabili all'interno di espressioni:

            (* (* 2 3.14159 r) (+ h r))

        - In questa forma non ha significato per l'ambiente Scheme...

        - Astrazione procedurale: lambda-espressione
          (e' un'espressione il cui valore e' una procedura!):

            (lambda (r h) (* (* 2 3.14159 r) (+ h r)))

        - Definizione di nomi (per le procedure):

            (define sup-tot-cilindro
              (lambda (r h) (* (* 2 3.14159 r) (+ h r)))
              )

          ...dare un nome a un metodo generale;

        - Uso dell'area delle definizioni (Racket).

   1.4. Applicazione di una procedura:

        - Espressione: procedura e argomenti

            ( (lambda (r h) (* (* 2 3.14159 r) (+ h r)))  5.0  11.8 )

          oppure

            (sup-tot-cilindro 5.0 11.8)

2. In Scheme non e' prevista la dichiarazione esplicita dei tipi, ma...
   e' buona prassi indicare i tipi degli argomenti e del valore restituito
   da una procedura in corrispondenti commenti:

       (define sup-tot-cilindro  ; val:  reale
         (lambda (r h)           ; r, h: reali  (misure)
           ...
           ))

   - Il compilatore non controlla la coerenza dei tipi, ma ciascun dato
     e' di un certo tipo e questo ha delle conseguenze quando si applica
     una operazione (runtime).

3. Astrazione procedurale relativa a espressioni non numeriche.

   3.1. Plurale dei sostantivi maschili regolari
        ("protiro", "paliotto", "fiore", ...):

          (string-append
            (substring s 0 (- (string-length s) 1))
            "i")

   3.2. Astrazione procedurale di espressioni non numeriche:

          (define sm-plurale
            (lambda (s)
              ...
              ))

   3.3. Tipi di argomenti valore attraverso commenti:

          (define sm-plurale   ; val: stringa
            (lambda (s)        ; s:   stringa
              ...
              ))

4. Espressioni a valori booleani in Scheme.

   4.1. Esempio: Verifica se un sostantivo, al singolare, e' femminile.

        - Astrazione procedurale per le espressioni booleane: Predicati
          (= procedure che, applicate agli argomenti che loro competono,
          restituiscono come risultato un valore booleano).

        - Applicazione della procedura predefinita  string=?
          per il confronto di stringhe;

        - Definizione di una procedura basata sul confronto di stringhe:

            (define s-femminile?  ; val: booleano
              (lambda (s)         ; s:   stringa
                (string=?
                  (substring s (- (string-length s) 1))
                  "a")
                ))

        - Nota: il terzo argomento di "substring" puo' essere omesso
          se il valore che si intende calcolare e' un suffisso.

   4.2. Variante: Applicazione delle procedure predefinite  string-ref
        e  char=?  per l'individuazione e il confronto di caratteri.

        - Notazione Scheme (idiosincratica) per i caratteri: #\a, #\A, ...;

        - Definizione alternativa di una procedura basata sul confronto di caratteri:

            (define s-femminile?  ; val: booleano
              (lambda (s)         ; s:   stringa
                (char=?
                  (string-ref s (- (string-length s) 1))
                  #\a)
                ))

5. Processo di valutazione per sostituzione e riduzione.

   - Esemplificazione utilizzando la valutazione passo-passo di Racket.

6. Esercizi:
   - procedura in Scheme per il calcolo della superficie totale
     di un cono retto con raggio alla base r e altezza h:

       pi * r * ( r + sqrt( r^2 + h^2 ) )

   - procedura in Scheme per declinare al plurale sostantivi
     femminili regolari ("sinopia", "centina", ...).


Riferimenti: vedi anche cap. 1 del libro consigliato.

---

*** Lezione 4 - 14/10/22 ***

0. Punto della situazione attraverso un ulteriore esempio:

   - Da infinito a participio passato di un verbo regolare
     della I coniugazione (studiare, ascoltare, ...);

   - A partire dal modello "da singolare a plurale";

   - Estensione alla III coniugazione (sentire, gestire);

   - Esercizio:
     participio passato della II coniugazione (credere, vendere).

1. Espressioni con l'operatore di scelta binaria "if".

   1.1. Costrutto di scelta in Scheme:

        - Plurale di sostantivi regolari, maschili e femminili...

        - Da infinito a participio passato di un verbo regolare
          di qualsiasi coniugazione...

        - Problemi risolti da procedure diverse;

        - Necessita' di distinguere casi che danno luogo ad elaborazioni
          diverse!

   1.2. Costrutto di scelta in Scheme:

          (if  < condizione >     ; espressione a valori booleani
               < espressione 1 >
               < espressione 2 >
               )

   1.3. Regole di valutazione.

        - Prima la condizione, poi una sola delle altre due espressioni;

        - Il valore assunto dall'espressione "if" e' il valore
          dell'espressione scelta (in base al valore della condizione);

        - Espressione "if": non si tratta del comando (imperativo)
          "if-then-else"!

        - Costrutto equivalente in Java (e non solo):

            < condizione > ? < espressione 1 > : < espressione 2 >

        - Il ramo "else" dell'espressione non puo' essere omesso;

        - Nella programmazione funzionale "pura" non c'e' una nozione
          di stato che cambia.

2. Esempi di procedure in Scheme con struttura piu' articolata:
   Procedura per determinare il plurale di un sostantivo regolare
   (modello semplificato che non include tutti i casi regolari).

   - Plurale di un sostantivo maschile: problema risolto in classe;

   - Plurale di un sostantivo femminile: problema risolto per esercizio;

   - Verifica se un sostantivo e' femminile: problema risolto in classe;

   - Necessita' di riconoscere e distinguere casi
     che danno luogo a valutazioni (di espressioni) diverse;

   - Strumenti: operazioni su stringhe e caratteri,
     verifica di condizioni, espressione di scelta binaria (if);

   - Organizzazione procedurale del programma e riutilizzo di procedure!

   - Valutazione passo-passo attraverso lo "stepper" di DrRacket.

   - Esercizio:
     procedura per coniugare al participio passato verbi regolari
     in italiano, dati nella forma dell'infinito
     (come al solito nei casi assolutamente standard...).

4. Tipi dei dati primitivi in Scheme: Tipi numerici.

   - I numeri interi sono 'sostanzialmente' illimitati --- esempi:

       (expt 15 (expt 7 3)) ,  (expt 15 (expt 7 5)) ;

   - I numeri razionali hanno una rappresentazione specifica precisa,
     visualizzabile sia in forma frazionaria, sia con punto decimale
     (ed eventuale periodo) --- esempi:

       3/4 = 0.75 ,  11/8 = 1.375 ,  18/35 ,  2/3 ,  4/3  ... ;

   - I numeri reali sono rappresentati in forma approssimata
     (floating-point), come avviene per la maggior parte dei
     linguaggi (p. es. Pascal, C, Java) --- esempi:

       #i0.75 ,  #i1.375 ,  (+ #i0.0 4/3) ,  pi ,  e ,

       (sqrt 2) ,  (/ (+ 1 (sqrt 5)) 2)  ... ;

   - I numeri complessi hanno notazione e rappresentazione specifiche
     in Scheme --- esempi:

       (sqrt -1) ,  (sqrt -4/9) ,  (sqrt (- pi)) ,  (sqrt (- e)) ,

       (* 0+1i 0+1i) ,  (* 1-2i 1+2i)  ... ;

   - Le procedure a disposizione sono quelle che ci si aspetta:
     operazioni aritmetiche, principali funzioni matematiche, ...
     operatori di confronto: =, <=, <, >, >=

   - Eventuali conversioni di tipo (e quindi di rappresentazione)
     sono automatiche nei casi non problematici.

5. Tipi dei dati primitivi in Scheme: Tipi non numerici.

   5.1. Tipo stringa.

        - Notazione per le stringhe (doppio apice: delimitatore);

        - Procedure predefinite:
          string-append, substring, string-length, string-ref,
          string=?, string<? ...

        - Esempi: vedi programmi gia' sviluppati.

   5.2. Tipo carattere.

        - Notazione per i caratteri:  #\a ,  #\5 ,  #\? ,

                                      #\  ,  #\space  ... ;

        - l'apice (') ha uno specifico significato in Scheme,
          che si incontrera' successivamente;

        - Procedure predefinite:
          char->integer, integer->char, char=?, char<=? ...

        - Esempi:

            (char->integer #\0) ,  (char->integer #\A) ,

            (integer->char (+ (char->integer #\5) 1)) ,

            (integer->char (+ (char->integer #\A) 1)) ...

   5.3. Tipo booleano ed espressioni a valore booleano.

        - Insieme dei valori booleani: { vero, falso };

        - Notazione: true, false (oppure: #t / #f, #true / #false);

        - Operatori logici (logica di Bool): and, or, not;

        - Risultati di confronti (vedi sopra). 

6. Esercizi:
   - procedura in Scheme per risolvere il seguente problema: dato un verbo
     regolare della seconda coniugazione in "-ere", espresso all'infinito
     (esempio: "credere"), determinare il corrispondente participio passato
     (esempio: "creduto");
   - procedura per coniugare al participio passato verbi regolari
     in italiano di tutte le coniugazioni, dati nella forma dell'infinito
     (come al solito nei casi assolutamente standard...);
   - sperimentazione del processo di valutazione di espressioni "if"
     attraverso lo stepper di DrRacket;
   - sperimentazione di espressioni con valori interi "molto grandi";
   - sperimentazione di espressioni con dati e valori razionali.


Riferimenti: vedi anche cap. 1 del libro consigliato.

---

*** Lezione 5 - 17/10/22 ***

1. Ricapitolazione.

   1.1. Espressioni:

        - I programmi funzionali sono rappresentati da espressioni,
          a partire da quelle piu' semplici;

        - Una espressione altro non e' che una struttura che organizza
          l'applicazione di funzioni note ad argomenti specifici.

   1.2. Astrazione procedurale:

        - L'astrazione procedurale e' la base della programmazione funzionale;

        - E' cio' a cui pensiamo implicitamente quando scriviamo una "formula";

        - Nei programmi funzionali e' caratterizzata da un costrutto specifico,
          che integra alcune informazioni che nella formula sono contestuali;

        - Lambda-espressioni e definizione di procedure;

        - Anche dare un nome a una procedura ha implicazioni importanti
          (lo si capira' in breve).

   1.3. Espressione di scelta: "if":

        - Superficialmente, assomiglia all'applicazione di un operazione "if",
          ma...

        - ... ordine e modalita' di valutazione (o meno)
          delle espressioni coinvolte sono importanti!

   1.4. Questi pochissimi strumenti sono sostanzialmente
        sufficienti per realizzare computazioni complesse

        (il primo miracolo e' che... !)

   1.5. Processo di valutazione per sostituzione e riduzione.

        - Sostituzione nome-procedura/lambda-espressione;

        - Sostituzione variabili/valore associato
          nel corpo della lambda-espressione;

        - Valutazione standard dell'espressione che ne risulta (riduzione),
          al livello base quando la funzione/operazione e' predefinita;

        - Ma attenzione alle regole di valutazione dell'espressione di scelta!

        - Esempi di valutazione passo-passo: "Stepper" dell'ambiente Racket.

2. Ricorsione.

   - In linea di principio, i pochi strumenti introdotti sono sufficienti
     a risolvere tutti i problemi che ammettono soluzioni algoritmiche...

   - ...basta che una procedura possa invocare se stessa;

   - E' quindi opportuno dare un nome alla procedura ricorsiva!

   - Dopodiche' non c'e' differenza sostanziale fra invocare
     un' "altra" procedura o invocare "se stessa"...

   - Nota: la possibilita' che una procedura invochi se stessa
     permette di realizzare elaborazioni di complessita' arbitraria,
     ma richiede anche che in alcuni casi (base) l'auto-invocazione
     possa essere evitata affinche' il processo si concluda.

3. Procedure ricorsive per risolvere problemi non numerici:
   Calcolo del complemento a uno.

   - Esempio:

       (ones-complement "101001110")  -*->  "010110001"

   - Come rappresentarsi la struttura della sequenza binaria (stringa);

   - Struttura del dato e struttura della soluzione:
     impostazione che rimanda alla soluzione di sottoproblemi (piu'semplici);

   - "Delega" relativa alla risoluzione del sottoproblema;

   - Operazione sul primo bit,
     elemento da combinare con il risultato dell'operazione "delegata";

   - Struttura di un'espressione che risolve il problema previa "delega";

   - Dalla delega alla ricorsione;

   - Casi ricorsivi: in relazione alla struttura della rappresentazione;

   - Casi base: stringa di un solo bit (o stringa vuota).

4. Programma in Scheme per il calcolo del complemento a uno.

   4.1. Si parte da una sequenza binaria ("abbastanza lunga"):

          seq :  stringa di 0/1

   4.2. Si "isola" il primo bit, separandolo dal resto della sequenza
        (particolare punto di vista sulla struttura del dato):

          seq  -->  (substring seq 0 1) ,  (substring seq 1)

   4.3. Si "delega" la soluzione relativa al resto della sequenza
        (istanza un po' piu' semplice dello stesso problema):

          (delega (substring seq 1))

        ...E' come supporre che "delega" sia una procedura predefinita!

   4.4. Si determina direttamente il complemento del primo bit:

          (complemento (substring seq 0 1))

   4.5. Si combinano i due risultati parziali (casi ricorsivi):

          (string-append
           (complemento (substring seq 0 1))
           (delega (substring seq 1))
           )

   4.6. Astrazione procedurale (al variare di seq, "abbastanza lunga"):

          (lambda (seq)                    ; seq: stringa di 0/1
            (string-append
             (complemento (substring seq 0 1))
             (delega (substring seq 1))
             )
            )

   4.7. Assegnazione di un nome alla procedura:

          (define complemento-a-uno          ; val: stringa
            (lambda (seq)                    ; seq: stringa di 0/1
              (string-append
               (complemento (substring seq 0 1))
               (delega (substring seq 1))
               )
              ))

        ... E definizione della procedura "complemento" (di un bit).

   4.8. E se la sequenza contiene un solo bit? -- casi base:

          (complemento seq)

   4.9. Quando i casi ricorsivi e quando i casi base?

          (define complemento-a-uno          ; val: stringa
            (lambda (seq)                    ; seq: stringa di 0/1
              (if (> (string-length seq) 1)
                  (string-append
                   (complemento (substring seq 0 1))
                   (delega (substring seq 1))
                   )
                  (complemento seq)
                  )
              ))

       ...Ma "delega" non puo' denotare proprio questo procedimento?

          (define complemento-a-uno          ; val: stringa
            (lambda (seq)                    ; seq: stringa di 0/1
              (if (> (string-length seq) 1)
                  (string-append
                   (complemento (substring seq 0 1))
                   (complemento-a-uno (substring seq 1))
                   )
                  (complemento seq)
                  )
              ))

        Alla fine non c'e' nulla di nuovo: basta accettare
        che una procedura ... possa invocare se stessa!

5. Procedure ricorsive per risolvere problemi numerici:
   Lunghezze dei lati dei fogli in formato "Ak".

   5.1. Descrizione del problema.

        - (Operazioni presentate concretamente con un foglio A4;)

        - Un foglio di formato "Ak" e' un rettangolo (geometricamente) simile
          a quello che si ottiene piegando il foglio a meta', in modo tale da
          sovrapporre i lati piu' corti;
   
        - Convenzionalmente, si e' stabilito che un foglio di formato A0 deve
          avere una superficie di 1 mq;

        - In base alle convenzioni cosi' specificate si possono determinare
          univocamente le misure dei lati per i formati

            A0,  A1,  A2,  A3,  A4,  A5,  ecc.

   5.2. Formalizzazione:
        s(k) denota la lunghezza del lato maggiore del foglio di formato Ak.

        - Piegando il foglio a meta' per due volte la lunghezza dei lati
          corrispondenti si dimezzano, e in particolare quella del più lungo:

            s(k+2)  =  s(k) / 2  (*)

        - Struttura del dato: secondo successore di...!

        - Le lunghezze dei lati del foglio di formato A0 devono essere
          conosciute:

            s(0)  =  s0

            s(1)  =  s1  [lato minore A0 = lato maggiore A1]

        - Criteri per calcolarle:

            s1 / s0  =  s(2) / s1  =  s0 / 2s1  [similitudine e (*)]

            s0 * s1  =  1 mq  =  10000 cmq      [superficie convenuta]

   5.3. Procedura ricorsiva in Scheme.

        - Codifica: casi ricorsivi e casi base;

        - Costanti: "define" (s0, s1).

6. Modello di calcolo -- sostituzioni e riduzioni:

   - Non cambia nulla: non servono ulteriori strumenti;

   - Esempio di valutazione;

   - La ricorsione e' gestita in modo del tutto naturale...

   - ...Ma conoscere il processo di valutazione
     non aiuta a risolvere problemi.

7. Esercizi:
   - Sperimentare la valutazione passo-passo delle procedure ricorsive
     con l'ausilio dello "stepper" di Racket;
   - programma per il complemento a uno (v. punto 4) che opera separando
     l'ultimo bit della sequenza anziche' il primo.


Riferimenti: vedi anche cap. 1 e sez. 2.1 del libro consigliato.

---

*** Lezione 6 - 21/10/22 ***

1. Costrutto di scelta multipla "cond".

   - Alternativa all'annidamento di costrutti "if";

   - "If" annidati e generalizzazione del costrutto "if";

   - Sintassi:  (cond (B1 E1) (B2 E2) ... (Bn En) (else E))

   - Regole di valutazione e confronto con il costrutto "if":

       (if B1 E1 (if B2 E2 (if ... (if Bn En E) ... )))

   - Ruolo della clausola "else";

   - Esempio: codifica alternativa della procedura sviluppata
     al punto 5.3 della lezione precedente.

2. Introduzione del costrutto "let".

   - Complemento a uno rivisitato (diversa struttura del dato):
     suddivisione a meta' e due deleghe: attenzione ai casi base!

   - Posizione del primo bit della parte destra:

       (let ( (k (quotient (string-length s) 2)) ) ... )

   - Maggiore chiarezza di lettura (e migliori prestazioni):

       (define complemento-a-uno    ; val: stringa
         (lambda (seq)              ; seq: stringa non vuota di 0/1
           (let (
                 (k (quotient (string-length seq) 2))  ; let !
                 )
             (if (= k 0)
                 (complemento seq)  ; un solo bit
                 (string-append
                  (complemento-a-uno (substring seq 0 k))
                  (complemento-a-uno (substring seq k))
                  )))
           ))

   - Espressione "let": non e' equivalente a "define"!

   - In particolare, il costrutto "let" definisce un'espressione
     che, quando valutata, assume un valore e l'associazione
     nome-valore e' limitata all'ambito di quella espressione.

   - Il "define" estende invece l'ambiente di programmazione
     con associazioni nome-valore permanenti e non definisce
     un espressione in senso proprio (non produce un valore).

3. Elaborazioni relative alla rappresentazione numerica:
   Interpretazione di una rappresentazione binaria (interi non negativi).

   3.1. Ogni dispositivo di calcolo che consente di introdurre dati
        numerici attraverso una tastiera (fisica o virtuale) si
        avvale di un programma di questo tipo.

   3.2. Analisi:

        - Interpretazione di "101101" ;

        - In questo caso conviene isolare l'ultimo bit (perche'?)...

        - Delega dell'interpretazione di "10110" --> q = 22 ;

        - Valore del bit meno significativo: "1" --> r = 1 ;

        - Ricomposizione: "101101" --> 2q + r = 2 * 22 + 1 = 45 ;

        - La giustapposizione di un bit a destra determina una crescita
          del peso delle cifre precedenti di un fattore 2.

   3.3. Programma in Scheme: vedi esempi (pagine del corso).

4. Esercizi:
   - sperimentazione dei programmi sviluppati;
   - esperimenti di programmazione con i costrutti "cond" e "let";
   - impostazione del programma per l'operazione inversa
     (da valore numerico intero non negativo a rappresentazione).


Riferimenti: vedi anche cap. 1 e sez. 2.1 del libro consigliato.

---

*** Lezione 7 - 24/10/22 ***

0. Il costrutto "let" non introduce potenzialita' aggiuntive!

   - Simulazione delle funzionalita' del costrutto "let"
     attraverso l'uso di procedure (lsb-compl).

1. Rappresentazione di un intero non negativo in base due.

   1.1. Ogni dispositivo di calcolo che puo' visualizzare output
        testuale si avvale di un programma di questo tipo.

   1.2. Analisi:

        - Rappresentazione binaria di n?

        - Parita' e ultimo bit;

        - A cosa corrisponde, numericamente, rimuovere l'ultimo bit?

        - Struttura: quoziente e resto della divisione per due
          (conviene assumere questo punto di vista):

            n  =  2 * q  +  r

        - Sviluppo top-down: casi ricorsivi e casi base.

   1.3. Programma in Scheme... con il costrutto "let":

          (define bin-rep  ; val: stringa
            (lambda (n)    ; n:   intero non negativo
              (let (
                    (lsb (if (even? n) "0" "1"))  ; oppure: (lsb (bit n))
                    )                             ;   (define bit ...)
                (if (< n 2)
                    lsb
                    (string-append
                     (bin-rep (quotient n 2))
                     lsb
                     ))
                  )))

2. Interpretazione di una rappresentazione numerica in base generica B
   (interi non negativi), dati una stringa di cifre e un intero B >= 2.

   2.1. Facendo riferimento al modello per la base due

        - Conviene isolare l'ultima cifra (cifra meno significativa);

        - Delega dell'interpretazione delle cifre precedenti: q ;

        - Valore della cifra meno significativa: r ;

        - Ricomposizione: Bq + r ;

        - La giustapposizione di una cifra a destra determina una crescita
          del peso delle cifre precedenti di un fattore B!

   2.3. Programma in Scheme: vedi esempi (pagine del corso).

3. Rappresentazione di un intero non negativo in base generica.

   - Dati: intero non negativo n, base B.

   - Focalizzazione sulla cifra meno significativa (vedi punto 1).

   - Struttura:  n = qB + r

   - Aritmeticamente:  q = quoziente / r = resto ...

     ... della divisione intera di n per B

   - Sviluppo top-down sul modello del caso binario...

   - Procedura di supporto per la rappresentazione di una cifra
     relativa a una base B (2 <= B <= 10).

   - Schema di ricorsione:

       rep( n )  =  rep( qB + r )  =  rep( q ) ° dgt( r )

   - Casi base...

   - Programmi di questo tipo sono stati realizzati per fornire
     gli strumenti di lettura e scrittura dei dati
     (interfaccia utente).

4. Esercizi:
   - sperimentazione dei programmi sviluppati;
   - procedura per determinare il valore di una cifra relativa a una
     base B <= 16 (cifre esadecimali: 0, 1, 2, ..., 9, A, B, ..., F);
   - procedura per interpretare (determinare il valore numerico di)
     una cifra in base B, 2 <= B <= 16;
   - verifica delle procedure di conversione in e da base generica B,
     rappresentaz. --> intero (val) / intero --> rappresentaz. (rep),
     attraverso espressioni in cui sono annidate, p.es.:

       (rep (val "1032" 4) 4) ,  (val (rep 78 4) 4) ,  etc.


Riferimenti: vedi anche capp. 1 e 2 del libro consigliato.

---

*** Lezione 8 - 28/10/22 ***

1. Problema: Sistema ternario bilanciato.

   1.1. Partendo da lontano... Problema dei pesi

        - Sistema di pesi standard: 1, 1, 2, 5, 10, 10, 20, 50, 100, ...
          Sarebbero sufficienti i pesi: 1, 2, 5, 10, 20, 50, 100, ... ?
          Come? (prove con la bilancia)

        - Si vuole utilizzare il minor numero possibile di pesi campione
          per pesare oggetti di 1, 2, 3, ..., 40 libbre con una classica
          bilancia a equilibrio a due piatti...

           "Data una certa quantita' il cui peso sia un numero di libbre da
            1 a 40 inclusi (senza tuttavia ammettere le frazioni), si chiede
            quanti pesi come minimo occorrera' impiegare a questo scopo."
            (C.-G. Bachet, Problemi piacevoli e dilettevoli, 1612)

            "Di quattro pesini che pesano quaranta libbre..."
               Un commerciante ha a disposizione una bilancia (a due piatti) e
            quattro pesini. Con questi e' in grado di pesare tutti gli oggetti
            il cui peso e' un numero intero di libbre, compreso tra una libbra
            e quaranta libbre. Quanto è il peso di ciascuno dei quattro pesini?
               ... Un commerciante ha a disposizione una bilancia a due piatti
            e cinque pesi, ognuno dei quali misura un numero intero di libbre.
            Dovendo essere in grado di misurare tutti i pesi espressi con
            numeri interi di libbre a partire da uno, qual e' il peso massimo
            che si puo' misurare?"
            (Leonardo Pisano 'Fibonacci', Liber Abaci, 1202)

            Persia, XI/XII sec.? (Al-Tabari)

        - Per ciascun peso...
          lo si puo' mettere nel piatto dell'oggetto da pesare (-1),
          oppure non lo si utilizza (0),
          o infine lo si mette nell'altro piatto (+1);

        - I valori rilevati sono numeri interi da 1 a 40;

        - Astrazione (!): da "rappresentazioni materiali di pesi"
                          a  "rappresentazione astratte di numeri".

   1.2. Cenno storico: Calcolatore "Setun" di Brusentsov (1958).

        - "Forse le proprieta' di simmetria e la semplicita' dell'aritmetica
          in questo sistema numerico un giorno si dimostreranno importanti
          --- quando il flip-flop verra' sostituito da un flip-flap-flop."
          (D. Knuth, The art of computer programming, 1969);

        - Esempio di aritmetica ternaria bilanciata (Setun!): somme algebriche
          (simboli per le cifre: "-", ".", "+").

2. Sistema ternario bilanciato:
   Programma per interpretare interi in notazione BTR.

   - Metafora per introdurre il sistema binario di rappresentazione
     dei numeri interi non negativi: pesi campione corrispondenti
     alle diverse potenze di due (1, 2, 4, 8... g), senza ripetizioni
     e da disporre sul piatto opposto a quello con l'oggetto da pesare;

   - Metafora per introdurre il sistema ternario bilanciato per
     i numeri interi non negativi: pesi campione corrispondenti
     alle diverse potenze di tre (1, 3, 9, 27... g), senza ripetizioni
     e da disporre sul entrambi i piatti;

   - Esempio di interpretazione della notazione ternaria bilanciata:

       (btr-val "--+.-")  -*->  -100

   - Realizzazione che adatta il modello discusso precedentemente;

   - Procedura per determinare il valore di una cifra BTR.

3. Sistema ternario bilanciato:
   Programma per rappresentare interi (anche negativi)in notazione BTR.

   - Esempio:

       (btr-rep -100)  -*->  "--+.-"

   - Operazioni "quotient" e "remainder" nel caso di dividendo negativo:
     verifica in Scheme.

   - Analisi dei casi: cifra meno significativa? ricorsione?

       -1 <= n <= +1  (casi base: rappresentazione di una sola cifra);

       n = 3q + r,  -1 <= r <= +1  (r e' il valore di una cifra);

       n = 3q - 2 = 3(q-1) + 1  (r = -2 non e' il valore di una cifra);

       n = 3q + 2 = 3(q+1) - 1  (r = +2 non e' il valore di una cifra).

   - Realizzazione di un programma in Scheme.

4. Sistema ternario bilanciato per la rappresentazione dei numeri interi:
   breve discussione.

   - Numeri rappresentabili con k cifre e aritmetica: estremi e simmetria
     (quanti numeri diversi posso rappresentare? quali sono i valori piu'
     piccolo e piu' grande?);

   - Tutto l'intervallo  [-(3^k-1)/2, +(3^k-1)/2]  e' rappresentabile
     (induzione su n o riconduzione alla notazione in base 3 standard);

   - Unicita' della rappresentazione BTR di un intero.

5. Esercizi:
   - riflettere sulle relazioni introdotte al punto 3;
   - verifica delle procedure per interpretare/codificare in notazione BTR
     attraverso espressioni in cui sono annidate come, p.es.:

       (btr-rep (btr-val "--+.-"))  -*->  "--+.-"

       (btr-val (btr-rep -100))  -*->  -100


Riferimenti: vedi anche capp. 1 e 2 del libro consigliato; vedi anche
nota storica relativa al sistema BTR nella pagina online degli esempi.

---

*** Lezione 9 - 31/10/22 ***

1. Problemi che difficilmente si riescono ad affrontare senza
   ragionare e impostare la soluzione in termini ricorsivi.

   1.1. Premessa:

        - La ricorsione e' prima di tutto uno strumento concettuale
          per affrontare problemi;

        - E' interessante, ma secondario, che si traduca in modo
          diretto in costrutti di programmazione;

        - Questo permette di ragionare innanzitutto al livello del problema,
          senza preoccuparsi di troppi aspetti legati al modello di calcolo,
          come invece avviene con i programmi imperativi.

   1.2. Problemi di tassellazione lineare:
        Tassellazione di un cordolo di lunghezza n e altezza 1

        - A. Utilizzando piastrelle 2x1 e 1x1;

        - B. Utilizzando piastrelle 1x1 di colore rosso e blu, con l'ulteriore
             vincolo che le piastrelle rosse non possono essere adiacenti;

        - Esempio: caso n = 3 (problemi A e B).

   1.3. Risoluzione a gruppi dei problemi A, per n = 12, e B, per n = 11.

        - Risoluzione per enumerazione esaustiva delle soluzioni?
          ... complessita' logica della soluzione;

        - Casi ricorsivi: inizio a tassellare il cordolo con una
          piastrella di uno dei due tipi previsti e resta da
          tassellare un cordolo di lunghezza...

        - Casi ricorsivi: inizio a tassellare il cordolo con una
          piastrella dell'altro tipo e resta da tassellare
          (liberamente) un cordolo di lunghezza...

        - Casi base:  n = 0, 1  oppure  n = 1, 2.

   1.4. Schema di soluzione.

        - Casi ricorsivi (n > 2):

            tassellazioni(n) = tassellazioni(n-2) + tassellazioni(n-1)

                               [problemi A e B]

        - Casi base:

            tassellazioni(1) = 1 [problema A] / 2 [problema B]

            tassellazioni(2) = 2 [problema A] / 3 [problema B]

   1.5. Codifica in Scheme: esercizio.

2. Ricorsione ad albero: Percorsi di Manhattan.

   - Formulazione del problema ed esemplificazione:
     Quartiere stile "Manhattan", dove gli incroci A e B distano
     fra loro i isolati verticalmente e j isolati orizzontalmente

        A     A'
          .---.---.---.---.---.---.---.
          |   |   |   |   |   |   |   |
       A" .---.---.---.---.---.---.---.
          |   |   |   |   |   |   |   |
          .---.---.---.---.---.---.---.
          |   |   |   |   |   |   |   |
          .---.---.---.---.---.---.---.
          |   |   |   |   |   |   |   |
          .---.---.---.---.---.---.---.
          |   |   |   |   |   |   |   |
          .---.---.---.---.---.---.---.
                                        B
     
     In quanti modi diversi posso camminare dall'incrocio A
     all'incrocio B senza fare piu' strada del necessario?

   - Quanti sono i percorsi nel caso 2 x 2 ? E nel caso 3 x 3 ?

   - Riduzioni ricorsive (vedi incroci A' e A") e casi base;

   - Codifica dello schema ricorsivo in Scheme;

   - Caratterizzazione della "ricorsione ad albero" (tree recursion);

   - Si e' visto qualche altro esempio di ricorsione ad albero?

4. Esercizi:
   - completare la codifica della soluzione ricorsiva relativa al
     problema dei percorsi di Manhattan;
   - sperimentazione di valutazioni delle procedure ricorsive
     per i problemi affrontati tramite la ricorsione ad albero;
   - tassellazione di un cordolo con tre tipi di piastrelle: 1x1,
     2x1 e 3x1 -- in quanti modi diversi? (attenzione ai casi base!)


Riferimenti: vedi anche cap. 4 del libro di testo (ricorsione ad albero).

---

*** Lezione 10 - 4/11/22 ***

1. Ricorsione ad albero: Numeri di Stirling del II tipo.

   1.1. Formulazione del problema ed esemplificazione:

        - In quanti modi si possono ripartire n elementi in k gruppi non vuoti?
          Quante sono le possibili partizioni di un insieme di cardinalita' n
          in k sottoinsiemi non vuoti?

        - In quanti modi diversi posso ripartire...
            ... 3 oggetti diversi in 3 gruppi?
            ... 4 oggetti diversi in 3 gruppi?
            ... 5 oggetti diversi in 3 gruppi?
            ... 6 oggetti diversi in 3 gruppi?
          (l'ordine degli oggetti nei gruppi e l'ordine dei gruppi
          non sono distinguibili)

   1.2. Risoluzioni ad hoc per i casi piu' semplici:

        - Analisi di casi piu' semplici.

        - In quanti modi si possono ripartire 4 oggetti in 3 gruppi non vuoti?

            . .     .    .         D(4,2) = 6

            S(4,2) = 6

          (D: numero di disposizioni; S: numeri di Stirling del II tipo.)

        - In quanti modi si possono ripartire 5 oggetti in 3 gruppi non vuoti?

            . . .    .    .        D(5,2) = 10

            . .    . .    .        5 * D(4,2) / 2 = 15

            S(5,3) = 10 + 15 = 25

          (D: numero di disposizioni; S: numeri di Stirling del II tipo.)

        - In quanti modi si possono ripartire 6 oggetti in 3 gruppi non vuoti?

            . . . .    .    .      D(6,2) = 15

            . . .    . .    .      D(6,3) * 3 = 60  [ oppure 6 * D(5,2) = 60 ]

            . .    . .    . .      D(6,2) * D(4,2) / 3! = 15

            S(6,3) = 15 + 60 + 15 = 90

        - ...Ma la tecnica non si generalizza facilmente a casi piu' complessi:
          In quanti modi si possono ripartire 7 elementi in 3 gruppi non vuoti?
          E 16 elementi in 4 gruppi?

        - In alternativa, rispetto al caso di 6 oggetti e 3 gruppi:

            S(5,3) = 25  [ noto ]

          c'e' un elemento nuovo che, per ciascuna delle 25 disposizioni,
          puo' essere aggiunto in uno dei 3 gruppi:

            S(5,3) * 3 = 75

          restano, pero', da contare i casi in cui il nuovo elemento
          e' il solo del gruppo:

            S(5,3) * 3 + S(5,2) = 75 + 15 = 90

        - Esercizio: verifica che S(5,2) = 15

   1.3. Problema generale.

        - Determinazione del numero di partizioni di un insieme di n elementi
          in k sottoinsiemi non vouti: in quanti modi e' possibile ripartire...?

        - Difficolta' di generalizzare le tecniche empiriche adottate in casi
          specifici:  S(4,3),  S(5,3),  S(6,3).

        - Approccio ricorsivo - impostazione:
          fissato un particolare elemento, per formare una partizione posso
          scegliere se questo stara' da solo o assieme ad altri elementi...

        - Esempio visto sopra:

            S(5,3) = 25  [ noto...       o delega! ]

            S(5,2) = 15  [ esercizio...  o delega! ]

            S(6,3) = 3 * 25 + 15

2. Impostazione di una soluzione ricorsiva generale.

   2.1. Riduzioni ricorsive (1 < k < n), preso un oggetto X:

        - se X costituisce un gruppo da solo restano S(n-1,k-1) possibilita'
          di ripartire gli altri n-1 oggetti in k-1 gruppi;

        - altrimenti per ciascuna delle S(n-1,k) ripartizioni che posso
          formare con n-1 oggetti ho k modi di decidere con chi sta X.

   2.2. Casi base e riduzioni ricorsive:

        - se k = 1: quanti modi per ripartire gli oggetti?

        - se k = n: quanti modi per ripartire gli oggetti?

   2.3. In sintesi, i numeri di Stirling del II tipo sono cosi' definiti:

          S(n,1) = S(n,n) = 1               per  n > 0

          S(n,k) = S(n-1,k-1) + k S(n-1,k)  per  1 < k < n

3. Esercizi:
   - verifica non basata sulla ricorsione che S(5,2) = 15;
   - sperimentazione della procedura per calcolare i numeri di Stirling
     del secondo tipo e confronto con i risultati calcolati manualmente.

4. Nota a margine relativa al sistema ternario bilanciato (BTR)
   per la rappresentazione dei numeri interi:

   - Numeri rappresentabili con k cifre e aritmetica: estremi e simmetria.

   - Quanti numeri diversi posso rappresentare?

       3^k        [tutte le sequenze di k cifre ternarie]

   - Quali sono i valori piu' grande e piu' piccolo?

       3^k - 1    [tutte le rappresentazioni tranne quella di zero]

       (3^k-1)/2  [tanti numeri numeri positivi quanti negativi]

        (3^k-1)/2 =  3^0 +  3^1 + ... +  3^i + ... +  3^(k-1)  [solo cifre +]

       -(3^k-1)/2 = -3^0 + -3^1 + ... + -3^i + ... + -3^(k-1)  [solo cifre -]

   - Tutto l'intervallo  [-(3^k-1)/2, +(3^k-1)/2]  e' rappresentabile?

       induzione su n o riconduzione alla notazione in base 3 standard.

   - Unicita' della rappresentazione BTR di un intero!


Riferimenti: vedi anche cap. 4 del libro di testo (ricorsione ad albero).

---

*** Lezione 11 - 7/11/22 ***

1. Problema della sottosequenza comune piu' lunga (LCS).

   1.1. Preambolo:

        - Problema interessante e significativo anche
          dal punto di vista applicativo (in diversi ambiti);

        - Allineamento del DNA
          (Francis Crick & James Watson; schede di Alberto Policriti);

        - Smith & Waterman (i volti dell'informatica).

   1.2. Definizione del problema e ambito applicativo.

        - Confronto fra catene di nucleotidi per conoscere le informazioni
          comuni (pattern matching nell'ambito della biologia molecolare):

            A G A C T G A A C A T A C
              | |  /   \ \  |  / / /
              G A T C C G A C T A C

          oppure:

            A G A C T G A A C A T A C
              | |  \   \ \  |  / / /
              G A T C C G A C T A C

          (ecc.)

        - Problemi come l'allineamento del DNA (catene di nucleotidi), attuali
          nell'ambito della ricerca in biologia, non si risolvono "a mano":
          dimensioni del DNA umano dell'ordine dei miliardi di nucleotidi!
          (Genoma umano: > 3 miliardi di coppie di basi.)

        - LCS e' un problema di elaborazione non numerica interessante sia
          per l'analisi ricorsiva, sia dal punto di vista applicativo.

2. Problema della sottosequenza comune piu' lunga: lunghezza delle soluzioni (LLCS).

   2.1. Lunghezza della sottosequenza comune piu' lunga (LLCS)
        - Analisi del problema e impostazione della soluzione:

          llcs("",v) = llcs(u,"") = 0

          llcs(au,av) = 1 + llcs(u,v)

          llcs(au,bv) = max( llcs(u,bv), llcs(au,v) )  se a <> b

   2.2. Codifica della procedura "llcs".

        - Struttura ricorsiva;

        - Ricorsione ad albero (terza classe di casi).

3. Problema della sottosequenza comune piu' lunga: soluzioni (LCS).

   3.1. Calcolo della LCS a partire dalla struttura di "llcs"
        (qui '+' rappresenta la giustapposizione di stringhe):

          lcs("",v) = lcs(u,"") = ""

          lcs(au,av) = a + lcs(u,v)

          lcs(au,bv) = longer( lcs(u,bv), lcs(au,v) )  se a <> b

   3.2. Codifica della procedura "lcs".

        - Schema basato sulla struttura di "llcs";

        - E' univoca la soluzione?

            lcs( "ATG", "TAG" ) = ...

        - Codifica della procedura di supporto "longer"
          (versione non deterministica!);

4. Esercizi:
   - sperimentazione dei programmi sviluppati;
   - misura del "minimo errore" -- complementare a llcs
     (numero di simboli che non trovano corrispondenza).


Riferimenti: vedi anche cap. 4 del libro di testo (ricorsione ad albero).

---

*** Lezione 12 - 11/11/22 ***

1. Problema della sottosequenza comune piu' lunga (LCS): Osservazioni.

   1.1. Ricorsione ad albero...

        - Prestazioni modeste: Perche'?
          (Ma vedremo che si puo' rimediare...)

        - In quali casi l'algoritmo e' efficiente/inefficiente?

   1.2. Diverso ambito applicativo, prettamente informatico.

        - Problema correlato: comando "diff" delle shell Unix/Linux
          (confronto di versioni diverse di file testuali):
          Soluzione complementare alla LCS;

        - Elementi atomici: righe di testo;

        - Sequenza: sequenza di righe;

        - LCS e' un problema di notevole interesse applicativo!

2. Struttura e trattamento delle liste in Scheme.

   2.1. Costanti e operazioni primitive "irriducibili" sulle liste:

        - Costante lista vuota "null";

        - Costruzione di liste via via piu' lunghe: "cons";

        - Predicato per verificare se una lista e' vuota: "null?";

        - Operazioni per acquisire informazioni 
          sulle componenti di una liste: "car" e "cdr";

        - Punto di vista relativo alle liste nei linguaggi funzionali:
          La struttura della lista

            (1 2 3 4 5)

          si caratterizza attraverso coppie ( elemento . lista ):

            (1 . (2 3 4 5))

            (1 . (2 . (3 4 5)))

              ...   ...

            (1 . (2 . (3 . (4 . (5 . null)))))

          e risulta comunque costruita a partire dall'interno
          (ultimo elemento) verso l'esterno (primo elemento):

            (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 null)))))

        - Punto di vista privilegiato: primo elemento della lista;

        - Ogni altra struttura o procedura si riconduce ai "mattoni"
          primitivi elencati sopra;

        - Esempi.

   2.2. Rappresentazione di una lista per enumerazione dei suoi elementi.

        - Operatore "quote" (apice), esempio:

            '(1 2 3 4 5)

        - Pseudo-procedura (numero arbitrario di argomenti) "list", esempio:

            (list 1 2 3 4 5)

        - Ma... valuta e confronta:

            (list 1 (- 9 7) 3 (* 2 2) (+ 2 3))

          con:

             '(1 (- 9 7) 3 (* 2 2) (+ 2 3))

        - Sintassi vs. semantica.

3. Procedure predefinite (ma non primitive) sulle liste: gli sviluppatori di Scheme
   hanno implementato queste procedure sulla base di null, null?, car, cdr, cons.

   3.1. Elemento in posizione k di una lista:
        Definizione della procedura "list-ref" in termini di operazioni primitive.

        - L'elemento di indice 0 della lista L e' (car L);

        - Assumo di conoscere l'elemento t con indice k-1 in (cdr L),
          allora l'elemento t ha indice k nella lista L.

   3.2. Lunghezza di una lista: Esercizio.

   3.3. Procedura "append" di una coppia di liste L1 e L2:
        Definizione della procedura in termini di operazioni primitive.

        - Esempio:  (append '(1 2 3) '(4 5 6 7))  -*->  '(1 2 3 4 5 6 7)

        - Se L1 e' vuota, allora la la lista risultante e' L2;

        - Assumo di conoscere la soluzione L per (cdr L1) e L2,
          allora la lista risultante e' (cons (car L1) L);

        - Trattamento 'asimmetrico' di L1 e L2.

   3.4. Procedura "reverse" per 'rovesciare' una lista.

        - versione inefficiente basata su "append":

            (define reverse           ; val:  lista
              (lambda (s)             ; s:    lista
                (if (null? s)
                    null
                    (append (reverse (cdr s)) (cons (car s) null))
                    )))

        - versione piu' efficiente realizzata attraverso
          l'introduzione di un parametro aggiuntivo (lista):

            (define reverse           ; val:  lista
              (lambda (s)             ; s:    lista
                (reverse-rec s null)
                ))

            (define reverse-rec       ; val:  lista
              (lambda (s t)           ; s, t: liste
                (if (null? s)
                    t
                    (reverse-rec (cdr s) (cons (car s) t))
                    )))

4. Esercizi:
   - soluzione del problema dei percorsi di Manhattan
     per una griglia tridimensionale;
   - definizione della procedura "length" (lunghezza di una lista)
     a partire dalle primitive di cui al punto 2.1;
   - procedura per determinare la posizione di un elemento
     in una lista numerica (prima occorrenza, supponendo
     che il dato sia un elemento della lista).


Riferimenti: per quanto riguarda le liste, vedi cap. 7 del libro consigliato.

---

*** Lezione 13 - 14/11/22 ***

1. Ricorsione mutua: Numeri di Fibonacci.

   - Problema della crescita di una popolazione ideale di conigli
     discussa da Leonardo Pisano nel "Liber Abaci" (1202):

     * L'ambiente e' chiuso (situazione sperimentale!);
     * All'istante iniziale t=0 c'e' una coppia di conigli fertile;
     * Una coppia di conigli fertile all'istante t da' alla luce una
       nuova coppia di conigli ad ogni mese successivo t+1, t+2, ...
     * I conigli nati all'istante t diventano fertili esattamente dopo
       un mese, all'istante t+1;
     * I conigli non muoiono nell'intervallo di tempo considerato;
     * I conigli nascono sempre a coppie: un maschio e una femmina.

     (Le ultime due ipotesi non sono esplicitamente enunciate.)

   - Soluzione basata su due procedure mutuamente ricorsive.

   - Problema risolto da Fibonacci: dopo un anno quante sono le coppie?

       (+ (newly-born-pairs 12) (fertile-pairs 12))  -*->  377

   - Esempio: dopo 11 mesi?

       (+ (newly-born-pairs 11) (fertile-pairs 11))  -*->  233

     Ricorda qualcosa? E' solo un caso?

   - Relazione con i numeri di Fibonacci:

       (+ (newly-born-pairs n) (fertile-pairs n))  -*->  Fib(n)

   - Il problema discusso nel "Liber Abaci":
     vedi nota storica nelle pagine online del corso.

2. Ricorsione e parametri aggiuntivi: Test di primalita'.

   2.1. Impostazione di base.

        - La soluzione non puo' basarsi ricorsivamente sulla conoscenza
          del risultato del test di primalita' per un numero naturale
          precedente (informazioni insufficienti).

        - Riconduzione a un problema piu' generale (presenza di divisori
          in un intervallo) la cui risoluzione puo' essere impostata in
          termini ricorsivi.

        - Verifica se un numero naturale n > 1 e' primo, ricondotta alla
          verifica che n non ha divisori nell'intervallo [2, n-1].

        - Introduzione di parametri aggiuntivi:
          Estremi inferiore e superiore dell'intervallo.

   2.2. Verifica: procedura per calcolare la lista dei numeri primi
        nell'intervallo [m, n].

   2.3. Raffinamenti del programma (I):

        - Fra i "candidati" divisori di n, e' sufficiente considerare
          quelli dispari (ad eccezione di 2);

        - Verifica ricondotta all'esistenza di divisori DISPARI
          nell'intervallo [3, n-1].

   2.4. Raffinamenti del programma (II):

        - Fra i "candidati" divisori di n, e' sufficiente considerare
          quelli minori o uguali alla radice di n [ sqrt(n) ];

        - Se  n = pq  e  p > sqrt(n),  allora  q < sqrt(n);

        - Verifica ricondotta all'esistenza di divisori dispari
          nell'intervallo [3, floor(sqrt(n))];

        - floor(x) e' la parte intera di x.

3. Esercizi:
   - rivedere e sperimentare le soluzioni discusse;
   - processo di valutazione nel caso di ricorsione ad albero e ricorsione
     mutua: valutazione passo-passo tramite "stepper" di Racket;
   - dimostrare che i valori della funzione fib cosi' definita:

       fib(n) = fertile-pairs(n) + newly-born-pairs(n)

     definiscono la sequenza di numeri di Fibonacci, ovvero:

       fib(n+2) = fib(n+1) + fib(n)  per ogni n >= 0


Riferimenti: vedi anche cap. 4 del libro di testo (ricorsione ad albero);
per quanto riguarda le liste vedi anche cap. 7.

---

*** Lezione 14 - 18/11/22 ***

1. Caratterizzazione della ricorsione di coda.

   1.1. Confronto dei processi computazionali relativi
        alle procedure "mul" e "gcd" cosi' definite:

          (define mul              ; valore: intero
            (lambda (m n)          ; m, n: interi non negativi
              (cond ((= n 0)   0)
                    ((even? n)      (mul (* 2 m) (quotient n 2)) )
                    (else      (+ m (mul (* 2 m) (quotient n 2))))
                    )))

          (define gcd              ; valore: intero
            (lambda (x y)          ; x, y > 0 interi
              (cond ((= x y) x)
                    ((< x y) (gcd x (- y x)))
                    (else    (gcd (- x y) y))
                    )))

   1.2. Drammatizzazione: uno studente/un gruppo di studenti
        e' responsabile di una singola "chiamata".

        - (mul 5 25) :
        
            mul( m=  5, n=25 )  -->  m + 120 = 125
              \/                              /\
            mul( m= 10, n=12 )  -->            120
              \/                              /\
            mul( m= 20, n= 6 )  -->            120
              \/                              /\
            mul( m= 40, n= 3 )  -->  m +  80 = 120
              \/                              /\
            mul( m= 80, n= 1 )  -->  m +   0 =  80
              \/                              /\
            mul( m=160, n= 0 )  -->              0

        - (gcd 60 18) :
        
            gcd( x=60, y=18 )   -->              6
              \/                              /\
            gcd( x=42, y=18 )   -->              6
              \/                              /\
            gcd( x=24, y=18 )   -->              6
              \/                              /\
            gcd( x= 6, y=18 )   -->              6
              \/                              /\
            gcd( x= 6, y=12 )   -->              6
              \/                              /\
            gcd( x= 6, y= 6 )   -->              6

   1.3. Cosa caratterizza il secondo processo computazionale (gcd)
        rispetto al primo (mul)?

        - La fase "ascendente" del processo di calcolo e' banale;

        - Ricorsione di coda: non restano operazioni in sospeso e
          si puo' dimenticare la storia;

        - La ricorsione di coda puo' essere implementata senza
          stack (annotazione tecnica), rendendo piu' efficiente
          l'uso della memoria.

2. Note a margine - logica di "gcd":
   Algoritmo di Euclide per il Massimo Comun Divisore (MCD).

   - Euclide risolve il problema formulandolo e giustificandolo
     in termini geometrici: Elementi, VII libro, circa 300 a.C.
     (vedi appunti nelle pagine del corso);

   - Tecnica di calcolo probabilmente gia' nota nel V sec. a.C.

   - Proprieta' catturate dalla definizione ricorsiva:

       MCD( x, x ) = x
       MCD( x, y ) = MCD( x, y-x )      se x < y
       MCD( x, y ) = MCD( x-y, y )      se x > y

     oppure in termini di resto della divisione
     ("ovvero detraggo il minore dal maggiore per fino a tanto che posso",
     traduzione degli Elementi dovuta a Tartaglia, XVI secolo):

       MCD( x, y ) = y                  se x mod y = 0
       MCD( x, y ) = MCD( y, x mod y )  altrimenti

     [ x mod y : resto della divisione intera di x per y ]

3. Caratterizzazione della ricorsione di coda:
   Ricorsione di coda e iterazione.

   3.1. Relazione con l'iterazione (approccio iterativo):
   
          int gcd( int x, int y ) {  // codice Java, C, C++, C#

            while (x != y) {         //
              if (x < y) {
                y = y - x;           //  (gcd x (- y x))
              } else {
                x = x - y;           //  (gcd (- x y) y)
            }}
            return x;                //  x
          }

   3.2. Codifica in Pascal per ulteriori confronti:
   
          function gcd( x, y: integer ) : integer;

          begin
            while (x <> y) do
              if  x < y  then
                y := y - x           {  (gcd x (- y x))  }
              else
                x := x - y;          {  (gcd (- x y) y)  }

            gcd := x                 {  x                }
          end;

   3.3. Computazione iterativa (vedi sopra - punto 1.2):

          gcd( 60, 18 ) :
        
            x = 60,          y = 18
                          \/
            x = x-y = 42,    y = 18
                          \/
            x = x-y = 24,    y = 18
                          \/
            x = x-y = 6,     y = 18
                          \/
            x = 6,           y = y-x = 12
                          \/
            x = 6,           y = y-x = 6   -->  6

   3.4. Relazione fra programma ricorsivo di coda (in Scheme)
        e programma iterativo (per esempio in Pascal).

        - La ricorsione di coda e' una ricorsione e puo' essere
          trattata come qualunque altra ricorsione;

        - D'altro canto e' facile passare da una ricorsione
          di coda a un comando iterativo while e viceversa;

        - E' facile passare da ricorsione a iterazione
          solo nei casi di ricorsione di coda...

4. Ulteriori esempi di ricorsione di coda:
   Algoritmo del "contadino russo" per la moltiplicazione.

   4.1. A proposito della procedura "mul"...

        - La procedura "mul" e' una variante della tecnica di calcolo
          del prodotto nota come "moltiplicazione del contadino russo";

        - La definizione di "mul" al punto 1.1 in realta'
          non va molto bene per fare i conti a mente: basta provare!

   4.2. Il "vero" algoritmo del contadino russo puo' essere modellato
        da ricorsioni di coda e consente il calcolo "ricordando" solo
        tre dati (parametri m, n, p) da un passo a quello successivo:

          (define mul              ; valore: intero
            (lambda (m n)          ; m, n: interi non negativi
              (mul-rec m n 0)
              ))

          (define mul-rec          ; valore: intero
            (lambda (m n p)        ; m, n, p: interi non negativi
              (cond ((= n 0)   p)
                    ((even? n) (mul-rec (* 2 m) (quotient n 2) p))
                    (else      (mul-rec (* 2 m) (quotient n 2) (+ p m)))
                    )))

   4.3. L'ordine delle operazioni e' in realta' diverso, rispetto alla
        versione precedente, ma il risultato  e' corretto in virtu'
        delle proprieta' associativa e commutativa della somma...

   4.4. Esempio di trasformazione da ricorsione a iterazione:
        moltiplicazione del contadino russo.

5. Esercizi:
   - analisi del processo di valutazione di procedure ricorsive
     di coda e non attraverso lo "stepper" di Racket;
   - individuare le procedure ricorsive di coda fra quelle
     definite nelle lezioni precedenti;
   - procedura ricorsiva per determinare (direttamente) un esempio di
     sequenza piu' corta di modifiche per allineare due sequenze --
     dove ciascuna modifica corrisponde all'inserimento di un carattere
     nell'una o nell'altra delle due sequenze di input. Esempio:

            A G A   C   T G A A C A T A C
              | |   |     | |   |   | | |     -->    ATCTAA
              G A T C C   G A   C   T A C

   - procedura come sopra, ma per liste di stringhe (testi), dove
     le stringhe (righe) sono considerate unità atomiche, indivisibili.


Riferimenti: sulla ricorsione di coda (approccio "iterativo")
vedi cap. 3 del libro consigliato.

---

*** Lezione 15 - 21/11/22 ***

0. Note a margine...

   0.1. Operazioni su liste: "Etimologia" dei termini car/cdr:

        - Perche' non first/rest; head/tail (Haskell)?

        - Annotazione storica: vedi appunti nelle pagine del corso.

   0.2. Algoritmo di Euclide per il MCD:

        - Annotazione storica: vedi appunti nelle pagine del corso;

        - Interpretazione geometrica.

   0.3. Scopo della "drammatizzazione":

        - Non solo la ricorsione di coda...

        - Ma anche una ulteriore riflessione sull'idea di delega!

1. Verifica formale della correttezza dei programmi.

   1.1 In ogni caso e' necessario ragionare sui programmi:
       Quali strumenti consentono di argomentare in modo piu' rigoroso?

   1.2. Significato:

        - La correttezza riguarda la logica algoritmica;

        - E' un concetto relativo alle specifiche,
          e presume che siano chiaramente identificabili dati
          di partenza e risultati della computazione;

        - Presuppone un modello astratto di computazione.

   1.3. Motivazioni pragmatiche, culturali e didattiche:

        - La formalizzazione delle specifiche (assunzioni, risultati
          attesi) contribuisce alla chiarificazione del problema
          e alla documentazione della soluzione proposta;

        - L'analisi formale e' importante nei casi in cui i programmi
          assolvono funzioni cruciali o sono diffusamente utilizzati;

        - L'uso di due linguaggi strutturalmente diversi, il linguaggio
          di programmazione e il linguaggio per esprimere le specifiche
          e le proprieta' dei valori calcolati, conduce a rappresentare
          il problema da punti di vista diversi, facendo emergere piu'
          facilmente eventuali errori logici;

        - Dal punto di vista dell'apprendimento, favorisce lo sviluppo
          di atteggiamenti mentali che portano a scrivere programmi
          piu' chiari/trasparenti e concisi/eleganti.

2. Dimostrazione di correttezza delle procedure ricorsive.

   2.1. Che funzioni calcolano le procedure "odd" e "unknown"?
 
          (define odd      ; valore: ?
            (lambda (i)    ; i > 0 naturale
              (if (= i 1)
                  1
                  (+ (odd (- i 1)) 2)
                  )))

          (define unknown  ; valore: ?
            (lambda (x)    ; x: naturale
              (if (= x 0)
                  0
                  (+ (unknown (- x 1)) (odd x))
                  )))

   2.2. Procedura "odd":

        - Proprieta' da dimostrare:

            ogni n > 0 naturale :  (odd n) -*-> 2n-1

        - Interpretazione della notazione  E -*-> V :

            la valutazione dell'espressione E (espressione Scheme)
            termina in un numero finito di passi (0 o piu' passi)
            restituendo il valore V (espressione "matematica")

        - Impostazione e dimostrazione per induzione;

        - Intuizioni alla base di una dimostrazione per induzione.

   2.3. Impostazione della dimostrazione di correttezza
        della procedura "unknown".

        - Che funzione calcola la procedura "unknown"?

        - E' evidente?

        - Proprieta' da dimostrare:

            ogni n naturale :  (unknown n) -*-> n^2

        - Caso base:  (unknown 0) -*-> 0

            (dimostrazione immediata: esercizio)

        - Ipotesi induttiva, scelto k naturale :  (unknown k) -*-> k^2

        - Passo induttivo, per k scelto sopra:

            (unknown k+1) -*-> (k+1)^2

   2.4. Interpretazione intuitiva del processo di dimostrazione per induzione.

        - Per tutti i valori dei parametri,
          all'interno del dominio di definizione della procedura...

        - ...la valutazione termina in un numero finito di passi, restituendo
          un valore che soddisfa le relazioni con gli argomenti specificate.

        - L'ordine secondo il quale la proprieta' e' dimostrata per i diversi
          valori dei parametri (di input) e' compatibile con l'ordine di calcolo
          dei risultati delle valutazioni ricorsive della procedura nel processo
          concretamente messo in atto.

   2.5. Correttezza della procedura "unknown":
        Formalizzazione dei vari passaggi logici.

        - Dimostrazione del caso base: evidente.

        - Dimostrazione del passo induttivo
          (k scelto in relazione all'ipotesi induttiva):

            (unknown k+1)

              -*-> (if (= k+1 0) 0 (+ (unknown (- k+1 1)) (odd k+1)))

              ---> (if false 0 (+ (unknown (- k+1 1)) (odd k+1)))  ; k+1 > 0

              ---> (+ (unknown (- k+1 1)) (odd k+1))

              ---> (+ (unknown k) (odd k+1))

              -*-> (+ k^2 (odd k+1))          ; per l'ipotesi induttiva

              -*-> (+ k^2 2(k+1)-1)           ; proprieta' dimostrata per "odd"

              ---> k^2 + 2k+1 = (k+1)^2
3. Esercizio:
   - rivedere le dimostrazioni svolte.


Riferimenti: vedi anche capp. 2-4 del libro consigliato, in particolare sezione 2.2.

---

*** Lezione 16 - 25/11/22 ***

1. Dimostrazione di correttezza relative a procedure con piu' parametri:
   Esempio in cui le condizioni dipendono dal valore di un solo argomento.

   1.1. Procedura per il calcolo dell'elevamento a potenza:

          (define power    ; val:  x^y  intero
            (lambda (x y)  ; x > 0, y >= 0 interi
              (if (= y 0)
                  1
                  (* x (power x (- y 1)))
                  )))

   1.2. Dimostrazione per induzione sul valore di...
        La scelta piu' naturale ricade sul valore di y, in quanto:

        - la condizione che distingue casi base e casi ricorsivi
          dipende solo dal valore di y;

        - il valore decresce per l'invocazione ricorsiva;

        - il passo induttivo puo' procedere da un valore a quello successivo.

   1.3. Impostazione della dimostrazione per induzione.

        - Casi base:

            ogni m > 0 intero . (power m 0) -*-> m^0

        - Ipotesi induttiva: scelto n intero non negativo, assumo

            ogni m > 0 intero . (power m n) -*-> m^n

        - Passo induttivo, da dimostrare: per n scelto sopra

            ogni m > 0 intero . (power m n+1) -*-> m^(n+1)

2. Ricapitolazione delle intuizioni a supporto della tecnica
   di dimostrazione per induzione (esempio "power").

     (define power    ; val:  x^y  intero
       (lambda (x y)  ; x > 0, y >= 0 interi
         (if (= y 0)
             1
             (* x (power x (- y 1)))
             )))

   2.1. Casi base:

        x in [1, 2, 3, ... ]  e  y = 0 :  (power x y) --> x^y  (*)

   2.2. Dall'ipotesi induttiva  al passo induttivo:

        x in [1, 2, 3, ... ]  e  y = n :  (power x y) --> x^y

          ==>  x in [1, 2, 3, ... ]  e  y = n+1 :  (power x y) --> x^y  (**)

   2.3. Implicazioni:

        x in [1, 2, 3, ... ]  e  y = 0 :  (power x y) --> x^y  (*)

          ==>  x in [1, 2, 3, ... ]  e  y = 0+1 = 1 :  (power x y) --> x^y  (**)

          ==>  x in [1, 2, 3, ... ]  e  y = 1+1 = 2 :  (power x y) --> x^y  (**)

          ==>  x in [1, 2, 3, ... ]  e  y = 2+1 = 3 :  (power x y) --> x^y  (**)

          ==>  ...

   2.4. Di fatto, via via (induttivamente) si apprende che:

               x in [1, 2, 3, ... ]  e  y in [0] :           (power x y) --> x^y

          ==>  x in [1, 2, 3, ... ]  e  y in [0, 1] :        (power x y) --> x^y

          ==>  x in [1, 2, 3, ... ]  e  y in [0, 1, 2] :     (power x y) --> x^y

          ==>  x in [1, 2, 3, ... ]  e  y in [0, 1, 2, 3] :  (power x y) --> x^y

          ==>  ...

3. Algoritmo del "contadino russo" (lezione 14):
   Dimostrazione di correttezza di "mul-rec" - induzione piu' articolata.

   3.1. Correttezza e specifiche:

        - Correttezza relativa alle specifiche;

        - Assunzioni sui valori dei parametri;

        - Formalizzazione di precondizioni e proprieta' del risultato:

            (define mul              ; val:  xy  (intero)
              (lambda (x y)          ; x, y: interi non negativi
                (mul-rec x y 0)
                ))

        - Proprieta' generale da dimostrare:

            ogni m, n naturali :  (mul m n)  -*->  mn

   3.2. Premessa:

        - Il nocciolo della dimostrazione per induzione riguarda la procedura
          ricorsiva (per "mul" si tratta semplicemente di un corollario);

        - Il valore calcolato da "mul-rec" non e' in generale il prodotto
          dei primi due argomenti (lo e' solo se il terzo argomento e' 0,
          ma non e' questa la situazione di una ricorsione generica);

        - Qual e', in generale, il valore restituito in funzione di x, y, z ?

            (define mul-rec          ; val: ... xy + z  (intero)
              (lambda (x y z)        ; x, y, z: interi non negativi
                (cond ((= y 0)   z)
                      ((even? y) (mul-rec (* 2 x) (quotient y 2) z))
                      (else      (mul-rec (* 2 x) (quotient y 2) (+ z x)))
                      )))

   3.3. Inoltre (aspetti su cui riflettere)...

        - Piu' argomenti, ma si puo' fare riferimento a uno solo di essi
          (moltiplicatore), il cui valore decresce e dal cui valore dipende
          la scelta fra modalita' di ricorsione o meno;

        - Impostazione: dimostrazione per induzione su uno degli argomenti
          (il secondo);

        - Per poter applicare l'ipotesi induttiva non e' utile fare riferimento
          al valore immediatamente precedente del secondo argomento, ma a tutti
          i valori precedenti, uno dei quali e' rilevante;

        - Trattamento di condizioni che coinvolgono i casi ricorsivi:
          il processo di valutazione che coinvolge la ricorsione non e' unico;

        - Dimostrazione del passo induttivo organizzata per casi.

   3.4. Impostazione della dimostrazione formale di correttezza per induzione.

        - La dimostrazione si riferisce alla procedura ricorsiva:
          qual e' la proprieta' da dimostrare?

            ogni m, n, p naturali . (mul-rec m n p)  -*->  mn + p

        - mn + p  invariante per tutte le ricorsioni di coda!

        - Induzione:
          Se la proprieta' vale per tutti i naturali k <= n
          allora vale anche per n+1.

        - Riformulazione in termini di induzione "semplice" della proprieta'
          da dimostrare nel caso generale:

            ogni n naturale :
              ogni k in [0,n] naturale, ogni m, p naturali :  (mul-rec m k p)  -*->  mk + p

          (dimostrazione sull'ampiezza dell'intervallo [0,n])

        - Casi base:

              ogni k in [0,0] naturale, ogni m, p naturali :  (mul-rec m k p)  -*->  mk + p

        - Piu' semplicemente, poiche' l'intervallo [0,0] continen solo il valore 0:

              ogni m, p naturali :  (mul-rec m 0 p)  -*->  m*0 + p

        - Passo induttivo - scelto un valore naturale n,

          dall'ipotesi:

            ogni k in [0,n]   naturale, ogni m, p naturali :  (mul-rec m k p)  -*->  mk + p

          segue che:

            ogni k in [0,n+1] naturale, ogni m, p naturali :  (mul-rec m k p)  -*->  mk + p

        - Tenuto conto di quanto gia' compreso nell'ipotesi induttiva
          (ovvero che solo n+1 appartiene a [0,n+1] ma non a [0,n]),
          resta da dimostrare che, per il valore di n scelto sopra:

            ogni m, p naturali :  (mul-rec m n+1 p)  -*->  m(n+1) + p

        - Come si dimostra, infine, che:

            ogni m, n naturali :  (mul m n) -*-> mn ?

   3.5. Seguendo il progredire della dimostrazione:

               m, p in [0, 1, 2, ... ]  e  k in [0] :           (mul-rec m k p) --> mk + p

          ==>  m, p in [0, 1, 2, ... ]  e  k in [0, 1] :        (mul-rec m k p) --> mk + p

          ==>  m, p in [0, 1, 2, ... ]  e  k in [0, 1, 2] :     (mul-rec m k p) --> mk + p

          ==>  m, p in [0, 1, 2, ... ]  e  k in [0, 1, 2, 3] :  (mul-rec m k p) --> mk + p

          ==>  ...

   3.6. Dimostrazione dei casi base:

          (mul-rec m 0 p)

            -*-> (cond ((= 0 0)    p)
                       ((even? 0)  (mul-rec (* 2 m) (quotient 0 2) p))
                       (else       (mul-rec (* 2 m) (quotient 0 2) (+ p m)))
                       )

            ---> (cond (true p) ((even? 0) ...) (else ...)) ---> p = m*0 + p

   3.7. Dimostrazione del passo induttivo (per n scelto...):

          (mul-rec m n+1 p)

            -*-> (cond ((= n+1 0)    0)
                       ((even? n+1)  (mul-rec (* 2 m) (quotient n+1 2) p))
                       (else         (mul-rec (* 2 m) (quotient n+1 2) (+ p m)))
                       )

            ---> (cond (false 0) ((even? n+1) ...) (else ...))  ; poiche' n+1 > 0

        ?) a seconda che n+1 sia pari o dispari, seguiranno due processi di valutazione
           distinti, e la dimostrazione deve potersi condurre a buon fine per entrambi...

        a) n dispari (in tal caso n+1 >= 2 pari):

            -*-> (cond (false        0)
                       (true         (mul-rec (* 2 m) (quotient n+1 2) p))
                       (else         (mul-rec (* 2 m) (quotient n+1 2) (+ p m)))
                       )

            -*-> (mul-rec 2m (n+1)/2 p)  ; poiche' n+1 pari

            -*-> 2m(n+1)/2 + p           ; per l'ipotesi induttiva, poiche' (n+1)/2 in [0,n]

                  = m(n+1) + p

        b) n pari (in tal caso n+1 >= 1 dispari):

            -*-> (cond (false        0)
                       (false        (mul-rec (* 2 m) (quotient n+1 2) p))
                       (else         (mul-rec (* 2 m) (quotient n+1 2) (+ p m)))
                       )

            -*-> (mul-rec 2m n/2 p+m)    ; poiche' n+1 dispari

            -*-> 2m n/2 + p+m            ; per l'ipotesi induttiva, poiche' n/2 in [0,n]

                  = mn + p + m = m(n+1) + p

        !) La dimostrazione di entrambi i casi (a) e (b)
           conclude la dimostrazione del passo induttivo.

        (Nota: 2m, p+m cadono comunque nel dominio dei naturali [0, 1, 2, ... ])

5. Esercizi:
   - completare nei dettagli le dimostrazioni di correttezza discusse;
   - che proprieta' hanno i valori di (ufo n) in relazione ai valori di n?

       ;; Unidentified Flying prOcedure

       (define ufo            ; valore: ?
         (lambda (x)          ; x > 0 naturale
           (cond ((= x 1) 1)
                 ((even? x)   ; x pari
                  (- (* 2 (ufo (quotient x 2))) 1))
                 (else        ; x dispari
                  (+ (* 2 (ufo (quotient x 2))) 1))
                 )))


Riferimenti: vedi anche capp. 2-4 del libro consigliato, in particolare sezione 2.2.

---

*** Lezione 17 - 28/11/22 ***

1. Esempio: procedura "manhattan".

   1.1. Correttezza della procedura manhattan:

          ogni m, n naturali :  (manhattan m n)  -*->  (m+n)! / (m! * n!)

   1.2. Novita':

        - Ricorsione ad albero:
          non comporta problemi specifici purche' l'ipotesi induttiva sia applicabile
          a tutte le valutazioni ricorsive che compaiono nell'espressione;

        - Due argomenti, ma non si puo' fare riferimento a uno solo di essi
          perche' per una delle due invocazioni ricorsive resta immutato;

        - Impostazione: dimostrazione per induzione su una misura della difficolta'
          del problema che tenga conto del valore di entrambi gli argomenti, p.es.
          somma dei valori degli argomenti k = m+n;

        - Come si scoprira', i casi base della dimostrazione per induzione non
          si "sovrapporranno" esattamente ai casi base del codice ricorsivo...

   1.3. Impostazione della dimostrazione di correttezza:

          ogni k naturale :
            ogni m, n naturali t.c. m+n = k :  (manhattan m n) --> (m+n)! / (m! * n!)

   1.4. Dimostrazione del caso base:  k = 0 ==> m = n = 0.

          (manhattan 0 0)  -*->  1 = (0+0)! / (0! * 0!)

   1.5. Ipotesi induttiva, scelto un numero naturale k:

          ogni m, n naturali tali che m+n = k :

            (manhattan m n)  -*->  (m+n)! / (m! * n!)

   1.6. Dimostrazione del passo induttivo, per k scelto sopra:

          ogni m, n naturali tali che m+n = k+1 :

            (manhattan m n)

              -*->  (if (or (= m 0) (= n 0))
                        1
                        (+ (manhattan (- m 1) n)
                           (manhattan m (- n 1)))
                        )

        a) m = 0:

            -*->  1 = (0+n)! / (0! * n!)

        b) n = 0:  simmetrico.

        c) m, n > 0:

            -*->  (+ (manhattan (- m 1) n)
                     (manhattan m (- n 1))
                     )

            --->  (+ (manhattan m-1 n)
                     (manhattan m (- n 1))
                     )

            -*->  (+ (m-1+n)!/((m-1)!*n!)   ; ipotesi induttiva: m-1 + n = k
                     (manhattan m (- n 1))
                     )

            --->  (+ (m-1+n)!/((m-1)!*n!)
                     (manhattan m n-1))
                     )

            -*->  (+ (m-1+n)!/((m-1)!*n!)
                     (m+n-1)!/(m!*(n-1)!)   ; ipotesi induttiva: m + n-1 = k
                     )

            -*->  (m-1+n)!/((m-1)!*n!) + (m+n-1)!/(m!*(n-1)!))

                  = (m+n-1)!/(m! * n!) (m + n)

                  = (m+n)! / (m! * n!)

   1.7. Osservazioni:

        - Per poter applicare l'ipotesi induttiva e' stato sufficiente basarsi
          sul valore immediatamente precedente della misura m+n in quanto questa
          si riduce esattamente di uno per ciascuna delle ricorsioni.

2. Proprieta' della procedura "ufo" (vedi esercizio della lezione 17).

   2.1. Proprieta' dei valori restituiti dalla procedura "ufo"
        (esercizio della lezione precedente): discussione.

        - Proprieta' individuate dagli studenti: come si possono formalizzare?

        - Nelle formule che seguono, si intende che
          le variabili n, j, k si riferiscono sempre a numeri naturali;

        - Notazione:  (ufo n) -*-> f(n)

          (a) f(n) dispari

              ogni n > 0 : esiste j >= 0 : (ufo n) -*-> 2j + 1

          (b) f(n) <= n

              ogni n > 0 : esiste j in [1,n] : (ufo n) -*-> j

          (c) f(2^k) = 1

              ogni k >= 0 : (ufo 2^k) -*-> 1

          (d) f(2^k-1) = 2^k-1

              ogni k > 0 : (ufo 2^k-1) -*-> 2^k-1

          (e) f(n) = f(n-1) + 2  se n non e' una potenza di 2

              [vedi formalizzazione generale al punto 2 seguente]

   2.2. Come si possono impostare le dimostrazioni per induzione?
        Quali tecniche di dimostrazione per induzione conviene utilizzare?

   2.3. Esercizio: Dimostrazione per induzione della proprieta' (c).

        - Induzione (semplice) su k;

        - Qual e' il valore della condizione  (even? 2^(k+1)) ?

        - Qual e' il valore dell'espressione  (quotient 2^(k+1) 2) ?

3. Dimostrazione per induzione delle proprieta' generali della procedura "ufo".

   3.1. In sintesi...

        - proprieta' generale (comprende tutte le precedenti):

            ogni k >= 0 : ogni j in [0,2^k-1] : (ufo 2^k+j) -*-> 2j+1

          dove i valori k, j sono numeri naturali

        - impostazione di riferimento:

            k     j                           n = 2^k+j
            0     [0]                         [1]
            1     [0, 1]                      [2, 3]
            2     [0, 1, 2, 3]                [4, 5, 6, 7]
            3     [0, 1, 2,  ...,  6,  7]     [8, 9, 10, ..., 14, 15]
            4     [0, 1, 2,  ..., 14, 15]     [16, 17,   ..., 30, 31]
            ...   ...                         ...

            k     n = 2^k+j                   2j+1  (nell'ordine)
            0     [1]                         [1]
            1     [2, 3]                      [1, 3]
            2     [4, 5, 6, 7]                [1, 3, 5, 7]
            3     [8, 9, 10, ..., 14, 15]     [1, 3, 5,  ..., 13, 15]
            4     [16, 17,   ..., 30, 31]     [1, 3, 5,  ..., 29, 31]
            ...   ...                         ...

   3.2. Dimostrazione per induzione su k, nei naturali:

        - casi base: ogni j in [0,2^0-1] : (ufo 2^0+j) -*-> 2j+1

            (ufo 2^0+0)

              -*-> (cond ((= 1 1) 1) ... )

              -*-> 1 = 2j+1  perche' j = 0  (unico valore in [0,2^0-1] = [0,0])

        - ipotesi induttiva, preso un valore naturale k:

            ogni j in [0,2^k-1] : (ufo 2^k+j) -*-> 2j+1

        - passo induttivo, per k scelto sopra e per ogni j in [0,2^(k+1)-1]:

            (ufo 2^(k+1)+j)

              -*-> (cond ((= 2^(k+1)+j 1) 1) ((even? 2^(k+1)+j) ... ) (else ... ))

              -*-> (cond (false 1) ((even? 2^(k+1)+j) ... ) (else ... ))

              -*-> ?

        - sottocaso (a): 2^(k+1)+j pari,

          da cui consegue j pari (anche 2^(k+1) e' pari) e inoltre j <= 2^(k+1)-2

              -*-> (- (* 2 (ufo (quotient 2^(k+1)+j 2))) 1)

              ---> (- (* 2 (ufo 2^k+(j/2))) 1)      ; poiche' k+1 > 0 e j pari

              -*-> (- (* 2 (2(j/2)+1)) 1)           ; per l'ipotesi induttiva,

                infatti j/2 in [0,2^k-1] poiche' j <= 2^(k+1)-2

              ---> (- 2(j+1) 1)

              ---> 2(j+1) - 1 = 2j+1

        - sottocaso (b): 2^(k+1)+j dispari

          da cui consegue j dispari (2^(k+1) e' pari)

              -*-> (+ (* 2 (ufo (quotient 2^(k+1)+j 2))) 1)

              ---> (+ (* 2 (ufo 2^k+((j-1)/2))) 1)  ; poiche' k+1 > 0 e j dispari

              -*-> (+ (* 2 (2((j-1)/2)+1)) 1)       ; per l'ipotesi induttiva,

                infatti (j-1)/2 in [0,2^k-1] poiche' 1 <= j <= 2^(k+1)-1

              ---> (+ 2((j-1)+1) 1)

              ---> 2j+1

4. Nota a margine: formula chiusa per il valore f(n) restituito dalla
   procedura "ufo" applicata all'argomento intero n > 0:

   - n = 2^k + j,  dove  k = floor( log n )  e  j = n - 2^floor( log n )

   - f( n ) = 2 ( n - 2^floor(log n) ) + 1      [log in base 2]

5. Esercizi:
   - relativamente alla procedura "ufo", dimostrazione per induzione
     sui valori di k della proprieta' (d) di cui al punto 2.1;
   - definizione di una procedura "sorted-append" che date due liste
     numeriche ordinate restituisce la lista ordinata di tutti gli
     elementi delle liste argomento;
   - definizione di una procedura "twin-primes" che restituisce la
     lista di tutte le coppie (liste di due elementi) di numeri
     primi gemelli compresi nell'intervallo [inf, sup].


Riferimenti: vedi anche capp. 2-4 del libro consigliato, in particolare sezione 2.2.

---

*** Lezione 18 - 2/12/22 ***

0. Pretesto: Codice di Giulio Cesare.

   - Primo esempio storico documentato di uso della crittografia
     (vedi nota storica associata agli esempi).

   - Piu' in generale, come rappresentare in modo compatto le regole
     di crittazione carattere per carattere?

       Tabella o... procedura!

1. Procedure con argomenti procedurali.

   1.1. Anche il codice e' rappresentato nella memoria della macchina
        ...e puo' essere visto come un dato.

   1.2. Semplici regole di trasformazione dei simboli (lettere)
        modellate attraverso procedure.

   1.3. Procedura "encryption":
        codifica e ruolo del parametro procedurale "rule":

          (... (lambda (message rule) ...))

        che puo' essere applicato, astraendo sulla funzione specifica

          ... (rule (string-ref message 0)) ...

   1.4. Esemplificazione per "regole" improvvisate:

          (encryption "PROGRAMMAZIONE" (lambda (x) x))  -*->  ??

          (encryption "PROGRAMMAZIONE" char-downcase)   -*->  ??

          (encryption
           (encryption "PROGRAMMAZIONE" char-downcase)
           char-upcase)                                 -*->  ??

   1.5. Osservazione: La procedura "encryption" puo' applicare qualunque
        regola di codifica basata su una permutazione dei caratteri
        (regola fissa da applicare lettera per lettera, indipendentemente
        dal contesto testuale in cui ciascuna lettera compare).

2. Procedure a valori procedurali (codice di Giulio Cesare).

   2.1. Anche il codice e' rappresentato nella memoria della macchina
        ...e puo' essere il risultato di una elaborazione.

   2.2. Generalizzazione della procedura di codifica secondo lo schema
        di Giulio Cesare per qualsiasi rotazione delle lettere:

        - Caso di rotazione fissa: rot = 3  -->  procedura anonima.

        - Parametrizzazione della rotazione e generalizzazione.

        - Procedura con valori procedurali:

            ... (lambda (rot)              ; argomento della procedura
                  (lambda (letter)  ... )  ; espressione a valore procedurale
                  )

   2.3. Tecniche per la rotazione, nel caso semplificato dell'alfabeto inglese:

          lettera -> codice ASCII -> rotazione modulo 26 (codice ASCII) -> lettera

   2.4. Regole di crittazione - esempio:
        La regola applicata da Giulio Cesare, secondo Svetonio.

          (define enc-rule (caesar-cipher 3))

          (encryption "IULIUSCAESAR" enc-rule)  -*->  "LXOLXVFDHVDU"

   2.5. Regole decrittazione:

          (define dec-rule (caesar-cipher ?? ))  ; qual e' l'argomento opportuno?
                                                 ; ( 0 <= ?? < 26 )

          (encryption "LXOLXVFDHVDU" dec-rule)  -*->  "IULIUSCAESAR"

3. Procedure con argomenti e valori procedurali.

   3.1. Anche il codice e' rappresentato nella memoria della macchina
        ...e puo' essere oggetto di elaborazione come qualsiasi altro dato.

   3.2. Funzione di decrittazione, data la funzione di crittazione
        nel caso di codici stile "Cesare" (rotazione alfabetica).

        - Argomento procedurale: funzione di crittazione;

        - Valore procedurale: funzione di decrittazione;

        - Criterio: rotazione complementare ( r  -->  26 - r ).

   3.3. Esempio di applicazione:

          (define enc-rule (caesar-cipher 3))
          (define dec-rule (compl-rotation enc-rule))
          (define encrypted-message (encryption "JULIUSCAESAR" enc-rule))
          (encryption encrypted-message dec-rule)

   3.4. Generalizzazione della procedura che calcola la regola inversa
        quando la regola e' una qualsiasi permutazione delle lettere.

4. Esercizi:
   - sperimentazione degli esempi discussi;
   - revisione della procedura "caesar-cipher" che si applica
     all'alfabeto Latino del tempo Repubblicano (20 lettere):

       A, B, C, D, E, F, G, H, I, L, M, N, O, P, Q, R, S, T, V, X.


Riferimenti: vedi anche cap. 5 del libro consigliato.

---

*** Lezione 19 - 5/12/22 ***

0. Ricapitolazione: Procedure con argomenti e/o valori procedurali.

   - Generalizzazione della procedura che calcola la regola inversa
     quando la regola e' una qualsiasi permutazione delle lettere.

   - Argomenti e valori di tipo numerico, booleano, stringa, immagine,...

   - ... Argomenti e/o valori di tipo procedurale.

   - Caratteristica tipica dei linguaggi funzionali:
     anche le procedure possono essere oggetto di elaborazione.

   - Argomento procedurale (f):

       (define ... (lambda (f ...) ... (f ...) ... ))

   - Valore procedurale:

       (define ... (lambda (...)
                     (lambda (x) ... )  ; valore procedurale
                   ))

     (la lambda espressione annidata potrebbe non essere esplicita).

1. Esempio notevole di procedura con argomenti procedurali: "map"

   - Procedura predefinita in Scheme:

       (map (lambda (x) (+ x 1)) '(1 3 5 7 9))  -*->  '(2 4 6 8 10)

       (map (lambda (w) (encryption w (caesar-cipher 3)))
            '("ALEA" "IACTA" "EST"))  -*->  '("DOHD" "LDFWD" "HVW")

   - "map" e' molto utilizzata nella programmazione funzionale;

   - Definizione ricorsiva della procedura "map":

       (define map        ; val: lista di elementi in E
         (lambda (f s)    ; f:   procedura [ D --> E ]
                          ; s:   lista di elementi in D
           (if (null? s)
               null
               (cons (f (car s)) (map f (cdr s)))
               )))

2. Altri esempi di procedure con argomenti e valori procedurali
   (funzione di ordine superiore).

   2.1. Operatore di composizione:
        Composizione di funzioni f, g : D --> D;

        - Corrispondenza fra definizione matematica e codifica in Scheme.

   2.2. Operatore di iterazione (della composizione):
        Iterata di una funzione f : D --> D;

        - Codifica 'diretta' e ruolo della variabile x di tipo D;

        - Codifica basata sull'utilizzo della procedura "composition";

        - (Vedi esempi disponibili attraverso le pagine del corso);

        - Corrispondenza fra definizioni matematiche e codifiche in Scheme.

   2.3. Si possono rappresentare operazioni molto astratte!

   2.4. Esempi:

        - (composition (lambda (x) (+ x 1)) (lambda (x) (* 2 x))) -*-> ??

        - (composition (iterate (caesar-cipher 1) 7) (caesar-cipher 19)) -*-> ??

3. Procedure con valori procedurali: Funzioni polinomiali.

   - P(x) = c0              per k = 0

     P(x) = c0 + c1*x + c2*x^2 + ... + ck* x^k

          = c0 + x * Q(x)   per k > 0

   - Funzione denotata da un polinomio in una variabile,
     data la lista dei coefficienti:

       (define pol-fun  ; val: procedura
         (lambda (cs)   ; cs:  lista coefficienti di x^0, x^1, x^2...
           (lambda (x)                             ; P(x)
             (if (null? (cdr cs))
                 (car cs)                          ; c0
                 (+ (car cs)                       ; c0 +
                    (* x ((pol-fun (cdr cs)) x)))  ; x * Q(x)
                 ))
           ))

   - Esempio:  ((pol-fun '(1 2 1)) 5) -*-> ??

4. Esercizi per la preparazione alla prova scritta d'esame:
   - algoritmo di crittazione in base al cifrario di Vigenere (XVI sec.):
     esercizio 3 della prima prova di accertamento del 21/01/2013;
   - applicazione della procedura "map" per determinare tutte le soluzioni
     del problema LCS (vedi sezione degli esempi delle pagine el corso):
       * revisione della procedura "longer" --> "all-better";
       * revisione della procedura "lcs" --> "all-lcs";
       * come si potrebbero evitare le ripetizioni?
   - prove di accertamento sulla prima parte del corso
     e temi d'esame in generale sugli argomenti trattati.


Riferimenti: vedi anche cap. 5 del libro consigliato;
vedi cap. 7 per quanto riguarda le liste in Scheme.

---

*** Lezione 20 - 9/12/22 ***

0. Note a margine...

   0.1. Esempi di riepilogo:

          (map (lambda (w) (encryption w (caesar-cipher 3)))
               '("ALEA" "IACTA" "EST"))
               )                          -*->  ??

          (composition (iterate (caesar-cipher 3) 7)
                       (caesar-cipher 5)
                       )                  -*->  ??

   0.2. Ricorsione lineare o ad albero, argomenti e valori procedurali...

        - le regole di valutazione sono sempre le stesse:
          sostituzioni e riduzioni;

        - dal punto di vista del modello di calcolo non si aggiunge nulla;

        - conta solo la nostra capacità di elevare il livello di astrazione
          attraverso il quale pensiamo il processo di elaborazione!

1. Esempio di svolgimento di temi d'esame:
   - I prova di accertamento del 21/01/2022: esercizi 1/A, 2/B, 3/A, 4/B.

2. Esercizi:
   - esercizio 1/A del 21/01/2022, sperimentando strutture risolutive
     diverse da quella vista a lezione, p. es. organizzazione basata su
     una procedura di supporto per verificare se il pattern costituito
     dai primi k caratteri si ripete ciclicamente;
   - I prova di accertamento del 21/01/2022: esercizi 1/B, 2/A, 3/B, 4/A.
   - temi d'esame in generale,
     sulla parte di programma svolta nel I periodo didattico.


*** Lezione 21 - 12/12/22 ***

1. Esempio di svolgimento di temi d'esame:
   - I prova di accertamento del 29/01/2021: esercizi 1/B, 2/A, 3/B, 4/A.

2. Esercizi:
   - I prova di accertamento del 29/01/2021: esercizi 1/A, 2/B, 3/A, 4/B.
   - temi d'esame in generale,
     sulla parte di programma svolta nel I periodo didattico.

---

*** Lezione 22 - 16/12/22 ***

1. Esempio di svolgimento di temi d'esame:
   - I prova di accertamento del 4/02/2020: esercizi 1/A, 2/B, 3/A, 4/B.

2. Esercizi:
   - I prova di accertamento del 4/02/2020: esercizi 1/B, 2/A, 3/B, 4/A;
   - esercizio 3/A-B del 4/02/2020: analizzando ricorsivamente le cifre
     a partire da quella meno significativa (a destra), anziche' dalla
     piu' significativa (a sinistra);
   - temi d'esame in generale,
     sulla parte di programma svolta nel I periodo didattico.

---

*** Lezione 23 - 19/12/22 ***

1. Esempio di svolgimento di temi d'esame:
   - I prova di accertamento del 3/02/2017: esercizi 1, 2, 3, 4, 6.

2. Esercizi:
   - temi d'esame in generale,
     sulla parte di programma svolta nel I periodo didattico.

---

*** Lezione 24 - 23/12/22 ***

1. Discussione di esercizi proposti dagli studenti:
   - Esercitazione di laboratorio sui temi d'esame: esercizi 2, 3, 7;
   - I prova di accertamento del 21/01/2013: esercizio 4.

3. Esercizi:
   - temi d'esame in generale.

---

*** 9/01/23 ***

Ricevimento sui temi d'esame.


----- * -----


*** I Prova di accertamento - 19/01/23 ***

Esercizi consigliati per la preparazione alla prova:

- In generale, gli esercizi delle prime prove di accertamento
  e gli esercizi delle altre prove scritte sugli argomenti
  trattati nel primo periodo didattico.