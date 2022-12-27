[[esercizio2scheme.pdf]]

![[Pasted image 20221226230646.png|200]]
Aggiungendo all'ambiente di programmazione il *teachpack* `drawing.ss` si hanno a disposizione le due forme base, che vengono manipolate tramite le procedure: 
- `(shift-down <forma> <passi>)`
- `(shift-right <forma> <passi>)`
- `(quarter-turn-right <forma>)`
- `(quarter-turn-left <forma>)`
- `(half-tur <forma>)`
- `(glue-tiles <forma1> <forma2>)`

```scheme
(define HalfCrossUp  ; espressione che genera la metà superiore della croce
    (glue-tiles
     larger-tile
     (shift-right smaller-tile 1.6)
    )
 )

(define HalfCrossDown ; espressione che capovolge HalfCrossUp
    (half-turn
     HalfCrossUp
     )
 )

(define FullCross ; espressione che unisce le due metà 
  (glue-tiles
   HalfCrossUp
   (shift-down (shift-right HalfCrossDown 1.6) 0.8))
 )

(define HalfSquareRight ; espressione che genera metà di un quadrato 
  (glue-tiles
   larger-tile
   (shift-down smaller-tile 3.2))
  )

(define HalfSquareLeft ; ribalta halfsquareright 
  (half-turn
   HalfSquareRight)
  )

(define FullSquare ; unisce 
  (glue-tiles
   HalfSquareLeft
   (shift-down (shift-right HalfSquareRight 1.6) 0.8))
 )
```
