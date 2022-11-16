




---


SCHEME

LAMBDA: permette di effettuare una ASTRAZIONE PROCEDURALE. al posto di mettere i valori specifici,

definisco con la lambda espressione due variabili generali che valgolo per ogni valore.

(define sup-tot\-cil

( lambda (r h) ; r e h sono due variabili generali che nel nosto caso individuano il raggio e l’altezza di un

cilindro

(\* (\* (\* 2 3.14159) r) (+ r h))

)

)

==DEFINE==: serve per dare un nome a una procedura

(define sup-tot\-cil ;rinomino la procedura come “sup-tot\-cil”

( lambda (r h)

(\* (\* (\* 2 3.14159) r) (+ r h))

)

)

STRING-APPEND: si utilizza per giustapporre due stringhe

(string-append (substring "protiro" 0 (- 7 1 )) "I") ;NB: substring= "estrae/salva la stringa che va da 0 (per

scheme nn si parte da 1 ma si parte da 0)fino alla lunghezza della stringa (string-length) che si calcola

calcolando la quantità di caratteri quindi partendo da 1 e non da 0 (in questo caso 7) MENO il suffisso da

eliminare (in questo caso è solo l'ultima lettera quindi 1)

STRING-LENGTH: calcola la lunghezza della stringa (partendo da 1!!!)

(string-append (substring "protiro" 0 (- (string-length "protiro") 1)) "i")

"protiri"

SUBSTRING: creare una sottostringa

(define plurale-sm

(lambda (sm)

(string-append (substring sm 0 (- (string-length sm) 1)) "i" ) ;giustappongo la sottostringa “...” alla “i”

))

STRING=? serve per confrontare due stringhe

(define femminile?

(lambda (s)

(string=? (substring s (- (string-length s) 1)) "a")

CHAR=? serve per confrontare due caratteri

STRING-REF : serve per estrarre NON un pezzo di stringa, ma un preciso carattere

#\\a : si usa questa notazione per identificare un CARATTERE (a=carattere che vogliamo)

(define femminile?

(lambda (s)

(char=? (string-ref s (- (string-length s) 1)) #\\a)

))



IF : costrutto condizionale

(define plurale

(lambda (s)

(if C ; se è vera C

T ;allora valuto T

E) ;altrimenti valuto E

))

COND: metodo più compatto che evita di dover annidare più if:

(define s

(lambda (k)

(cond ((> k 1) (/ (s (- k 2)) 2)) ;se k>1 allora s (k\-2) /2, sennò:

((= k 0) s0) ;se k=0 allora s0

((= k 1) s1) ;se k=1 allora s1 ;anche se non è del tutto esatto perchè non è detto che seppure k<1 e

non è 0 allora è 1 (potrebbe essere -1)

)

))

(char -> integer #\\0) : ("Da carattere a integer") prende il carattere in posizione 0 (per es.) è retituisce

l’integer corrispondente

(integer\->char 48) : (“Da integer a carattere”) prende l’integer in posizione 48 (per es.) e restituisce il

carattere corrispondente

LET: si usa per definire una variabile

(define compl\-a-uno

(lambda (seq)

(let ((n (string-length seq)) ; 1°let : "sia n la lunghezza della sequenza"

)

(if (>= n 2)

(let (( k quotient n 2) ; 2° let : "sia k il quoziente tra n e 2"

)

(string-append (delega (substring seq 0 k))

(delega (substring seq k)))

)

(compl seq)

))

))

RICORSIONE: Una procedura può richiamare se stessa.

1)

per fare il complemento a uno di questa sequenza binaria: 1001011101 scelgo di dividere la prima cifra a

sinistra dal resto della sequenza: la prima cifra la calcolo io e il resto delego (delega=ricorsione):

(define compl\-a-uno

(lambda (seq)

(if (> (string-length seq) 1)

(string-append (compl (substring seq 0 1)) ;la prima cifra la calcolo io
