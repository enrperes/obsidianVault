###  1.
![[Pasted image 20250905120005.png]]

Espressione = lista annidata. Ogni nodo interno è in forma `(op a b)` con esattamente due argomenti. Le foglie sono numeri o variabili. 

```rkt
 (define postfix-expr             ; val: stringa
  (lambda (exp)                  ; exp: espressione in Scheme (struttura)
    (cond
      ;; Caso 1: espressione composta (lista) = (op arg1 arg2)
      ((list? exp)
       (string-append
         (postfix-expr (cadr exp)) " "
         (postfix-expr (caddr exp)) " "
         (symbol->string (car exp))))

      ;; Caso 2: variabile (simbolo) → la sua stringa
      ((symbol? exp)
       (symbol->string exp))

      ;; Caso 3: numero → la sua stringa
      ((number? exp)
       (number->string exp))

      ;; Caso 4: forma non riconosciuta → segnaposto d’errore
      (else "[?]")))) 
```

--- 

###  2
![[Pasted image 20250905120700.png]]


Idea: inserire l'elemento x nella posizione corretta dentro la lista già ordinata s usando solo la relazione di ordinamento r? passata come parametro 

```rkt
 ;; Inserimento ordinato secondo la relazione r?  (insertion)
(define sorted-ins
  (lambda (x s r?)
    (if (or (null? s) (r? x (car s)))         ; se s è vuota o x "viene prima di" (car s)
        (cons x s)                            ; inserisci x davanti
        (cons (car s) (sorted-ins x (cdr s) r?)))))

;; Insertion sort parametrico
(define sort
  (lambda (s r?)
    (if (null? s)
        null
        (sorted-ins (car s) (sort (cdr s) r?) r?)))) 
```

```rkt
 (define list-of-llis
  (lambda (seqs)
    (map (lambda (s) (llcs s (sort s <=)))    ; <-- primo argomento di map
         seqs))) 
```


---
### 3. 

![[Pasted image 20250905121331.png]]

![[Pasted image 20250905121550.png#invert]]

Viene definita una tabella `mem[a][b]` di tipo `StringSList[][]` che memorizza la lista di stringhe con tutti i percorsi possibili quando mancano `a` passi verticali e `b` passi orizzontali. 
Due cicli for annidati riempiono la tabella a partire da a=0 e b=0. 
3 casi: 
- a=0 e b=0
	- percorso vuoto 
- else
	- 

```java
 public static StringSList pathsDP( int i, int j, String p ) {

  // mem[a][b] = lista di percorsi quando mancano a verticali e b orizzontali
  StringSList[][] mem = new StringSList[i + 1][j + 1];

  for (int a = 0; a <= i; a++) {
    for (int b = 0; b <= j; b++) {

      if (a == 0 && b == 0) {
        // Base: nessun passo da fare → percorso vuoto
        mem[a][b] = NULL_LIST.cons("");
      } else {
        // Carattere del pattern per lo stato corrente
        char c = p.charAt(p.length() - a - b);

        // Da (a-1,b): possiamo mettere '0' se c != '1' e a>0
        StringSList u = (a == 0 || c == '1') ? NULL_LIST
                                             : map("0", mem[a - 1][b]);

        // Da (a,b-1): possiamo mettere '1' se c != '0' e b>0
        StringSList v = (b == 0 || c == '0') ? NULL_LIST
                                             : map("1", mem[a][b - 1]);

        // Unione: tutti i percorsi ammissibili
        mem[a][b] = u.append(v);
      }
    }
  }

  return mem[i][j];
} 
```

---
### 4. 
![[Pasted image 20250905122207.png]]

Calcolare la parte intera della radice quadrata di n
Invariante: $\Large x=2z+1; y=x+z^{2}; 0\leq z^{2} \leq n$ 

Proprietà dei quadrati consecutivi: 
$$
\Large (k+1)^{2}-k^{2}=2k+1
$$ 

x = numero dispari corrente $\Large 2z+1$ 
y = quadrato successivo $\Large (z+1)^{2}$ 
z = candidato attuale per la radice

```java
 public static int f( int n ) {   // Pre: n ≥ 0

    int x = 1;                   // = 2*0 + 1
    int y = x;                   // = x + 0^2 = 1 = (0+1)^2
    int z = 0;                   // z^2 = 0

    while ( y <= n ) {           // Inv: x = 2z + 1,  y = x + z^2 (= (z+1)^2),  0 ≤ z^2 ≤ n
                                 // Term: n - z*z

        x = x + 2;               // x' = 2(z+1) + 1
        y = x + (z + 1) * (z + 1); // y' = x' + (z+1)^2 = (z+2)^2
        z = z + 1;               // z' = z + 1
    }

    return z;                    // Post: z = ⌊√n⌋
} 
```