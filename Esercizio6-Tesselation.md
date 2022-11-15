



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