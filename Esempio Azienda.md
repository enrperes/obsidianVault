![[Pasted image 20241008164043.png#invert]]

Contesto: Azienda. 

Metodologia di progettazione: bottom up:
1. Identificare entità 
2. definire attributi che definiscono le entità 


### E/R
![[Sketch 3.png#invert]]

Quando c'è un loop bisogna sempre prestare attenzione alle inconsistenze.

il loop Dipartimento - Gestisce - Impiegato - Afferisce introduce un problema: 
un impiegato può gestire un dipartimento ma non afferire a quel dipartimento (?)
Possibile correzione: Sostituire Afferisce - impiegato con (0, 1). Soluzione che non funziona: 
- impiegati che non sono manager 
- impiegato 

Vincoli di integrità 
Regole di derivazione

### Relazionale

![[Pasted image 20241017170329.png#invert]]

*Manager* = chiave esterna di **dipartimento**, che va in **impiegato**
*Dip* = chiave esterna di **Impiegato** che finisce su **Dipartimento** 

Situazione conflittuale che va risolta (?)

