**Costrutto condizionale**

```scheme
(if C   ; Se è vero C
	E1  ; Allora è valutato E1
	E2  ; Altrimenti viene valutato E2
) ; analogo a: C1 ? E1 : E2
```

3 argomenti: 
- Condizione (booleana)
- Espressione 1
- Espressione 2 (non può essere omesso)

Se il risultato di C è vero si valuta E1 e il risultato di if è E1. 
Falso: valuta E2, if = E2. 
Solo quando si valuta C si valuta o E1 o E2. 