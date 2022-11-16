> `L-tesselation` restituisce l'immagine della regione tassellata dato in input la lunghezza del lato piìù corto della regione da coprire (si assume sia potenza di due)

![[tessellation.png|500]]
Tassellazione di una regione a L realizzata utilizzando piastrelle simili delimitate da quattro lati corti di lunghezza 1 e due di lunghezza 2.

```scheme
(define one-tile
  (lambda (tile n)
    (glue-tiles
     (glue-tiles  
      (glue-tiles tile (shift-right (quarter-turn-right tile) (/ n 2)))
      (shift-down (shift-right tile (/ n 4)) (/ n 4)))
     (shift-down (quarter-turn-left tile) (/ n 2)))
    ))

(define L-tesselation
  (lambda (n)
    (cond ((= n 1) L-tile)
          ((= n 2)(one-tile L-tile 2))
          (else (one-tile (L-tesselation (/ n 2))  n)
                )
        )
  )
)
 
```
### Codice:

`one-tile` restituisce ![[L-tessellation2.png|50]]  spostando e girando la forma base, aumentandone gli spazi in funzione di `n`
`L-tesselation` richiama `one-tile`, che aggiunge una ![[L-tessellation2.png|50]] ogni volta. 

