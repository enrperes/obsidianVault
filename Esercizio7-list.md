[[esercizio7scheme.pdf]]

Serie di procedure ricorsive per lavorare su liste ordinate di interi. 
- `belong` Verifica appartenenza
- `position` Restituisce l'indice di un elemento 
- `getIndex` Ricerca ricorsiva con contatore
- `sorted-ins` inserisce un elemento in ordine crescente evitando ripetizioni
- `sorted-list` ordina una lista 


```scheme
;Verifica se un elemento appartiene alla lista
(define belong? ;val: bool 
  (lambda (x S) ;x: intero, S: lista di interi
     (cond
       ((null? S)
        false)
       ((= (car S) x) ; controlla se è il primo elemento
        true)
       (else
        (belong? x (cdr S)) ; ripete con la lista meno il primo elemento 
       )
      )
   )
)

;Restituisce l'indice del numero cercato nella lista
(define position ;val: intero non negativo
  (lambda (x S)  ;x: intero, S lista di interi
     (getIndex  x S 0)
   )
)

;Mediante un contatore ricerca l'elemento all'interno della lista
(define getIndex              ;val: intero non negativo
  (lambda (x list i)          ;x: intero, list: lista di interi, i: intero non negativo (parte da 0)
    (if (= x (car list))      ; se primo elemento lista = x
        i 
        (getIndex x (cdr list) (+ i 1)) ; ripete con la lista meno il primo elemento 
    )
   ))

;Inserisce un numero in una lista ordinata e senza ripetizioni
(define sorted-ins ;val: lista
  (lambda (x S)   ;x: intero, S: lista ordinata di interi
    (cond
      ((null? S)         ; lista nulla?
        (cons x S)       ; aggiunge x al primo posto 
       )
      ((= x (car S))     ; = al primo elemento della lista?
       S)                ; ritorna la lista stessa
      ((< x (car S))     ; x minore del primo elemento?
        (cons x S)       ; aggiunge x al primo posto 
       )
      (else
       (cons (car S) (sorted-ins x (cdr S))) ; chiamata ricorsiva
       )
    ) 
  )
)

;Procedura che riordina la lista
(define sorted-list
  (lambda (S)
    (if (null? S)
        null
        (sorted-ins (car S) (sorted-list (cdr S)))
    )
  )
) 
```