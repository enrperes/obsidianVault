[[esercizio3scheme.pdf]]

> [!note]+  **spiegazione** 
 > Converte una stringa binaria ("101.1", "-11.01") nel corrispondente numero decimale in base 10. 
 > bin-rep->number  è la funzione principale. riceve la stirnga e separa la parte intera e la parte decimale (`findInt` `findDec`)
 > Converte le due parti in decimale, rispettivamente con `int` e `dec` 
 > `findInt` estrae tutti i caratteri prima del punto, `findDec` restituisce la parte dopo il punto, usando la lunghezza di `findInt` per tagliare la stringa. 
 > `int` converte da binario a decimale usando le potenze di 2
 > `dec` converte la parte decimale usando le potenze negative di 2
 > 

```scheme
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ((lib "drawings.ss" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "drawings.ss" "installed-teachpacks")) #f)))
(define findInt ;val: stringa, solo parte intera
  (lambda (n)
    (if (>= (string-length n) 1)
        (if (not (string=? (substring n 0 1) "."))
            (string-append (substring n 0 1) (findInt (substring n 1 (string-length n))))
            "")
        "")
      )
   )

(define findDec ;val: stringa, solo parte decimale
  (lambda (n)   
    (substring n (+ (string-length (findInt n)) 1) (string-length n)) 
    )
  )

(define int ;val: numero intero in base 10
  (lambda (n)
    (if (>= (string-length n) 1)
     (+ (* (string->number (substring n 0 1)) (expt 2 (- (string-length n) 1)))
        (int (substring n 1 (string-length n)))) 
     0
     ) 
    )
  )

(define dec-old ;val: numero decimale in base 10
  (lambda (n)
    (if (>= (string-length n) 1)
     (+ (* (string->number (substring n (+ 0 (string-length n) 1))) 
           (expt 2 (- 0 (string-length n)))) 
        (dec-old (substring n 0 (- (string-length n) 1)))) 
     0
     ) 
    )
  )

(define dec 
  (lambda (n)
    (if (>= (string-length n) 1) 
        (+ (* (string->number (substring n (- (string-length n) 1)))  
              (expt 2 (- 0 (string-length n))))
           (dec (substring n 0 (- (string-length n) 1))) 
           )
        0  
        )
    )
  )
  
(define bin-rep->number ;val: numero reale
  (lambda (n) ;input: numero in base 2 con segno e virgola
    (if (string=? (substring n 0 1) "-")   ; inizia con "-"
     (string-append "-" (number->string (+ (int (findInt (substring n 1 (string-length n))))
                                           (dec (findDec (substring n 1 (string-length n)))))))
      (if (string=? (substring n 0 1) "+") ; inizia con "+"
          (string-append "+" (number->string (+ (int (findInt (substring n 1 (string-length n))))
                                (dec (findDec (substring n 1 (string-length n))))
                                ))
                         ) 
          (+ (int (findInt n)) (dec (findDec n))) ; non inizia con un segno
      )
    ) 
  )
 )  

```