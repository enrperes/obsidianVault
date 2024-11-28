Le transazioni concorrenti possono causare anomalie: 
- perdita di aggiornamento 
- lettura sporca
- aggiornamento fantasma
- lettura inconsistente
- inserimento fantasma

Unità di misura del carico applicativo in un DBMS: numero di transazioni per secondo (*tps*). Varia da decine a migliaia di tps. 
Quindi è impensabile un'esecuzione seriale delle transazioni. 

N.B. utente e sistema hanno definizioni diverse di transazioni: una transazione del sistema può corrispondere a più t. per l'utente. 

[appunti su slide, notability]

