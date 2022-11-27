
2022-10-14 08:37 
###### Da infinito a participio passato 

 ```scheme
 (define ato ;val :bool
  (lambda (s) ;s: string
   ;(string=? (string-ref s (- (string-length s) 1)) "are")
    (string-append (substring s 0 (- (string-length s) 2)) "to")
    )
  )
```

(string-ref str k) -> returns character at position k in str. First position =  0. 