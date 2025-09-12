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

# Schedule 
> Sequenza ordinata di operazioni (r, w, commit, abort) di un insieme di transazioni concorrenti


## Schedule Seriale: 
> Tutte le operazioni di ogni transazione sono eseguite in blocco (in ordine)


## Schedule Serializzabile 
> Uno schedule che produce lo stesso risultato di almeno uno schedule seriale delle stesse transazioni. 


## CSR
Conflict Serializability
Basata sui conflitti rw wr ww sullo stesso dato
Si costruisce il grafo dei conflitti 
Uno schedule è CSR quando il grafico è aciclico. 

## VSR 
View-Serializability

Due schedule sono equivalenti rispetto alle viste  se hanno le stesse *relazioni legge* e stesse *scritture finali*. 

## 2PL
Two-phase locking

Ogni transazione ha: 
- fase crescente = acquisizione dei lock (read lock condivisi, write lock esclusivi) 
- Fase calante = rilascio lock, senza più acquisizioni
Garantisce CSR ma può portare a deadlock 

### 2PL stretto
I lock sono rilasciati solo dopo il commit. Evita letture sporche. Standard nei DBMS. 

## TS
Timestamp
Ad ogni transazione viene dato un timestamp di inizio. 
Ad ogni oggetto x si associano: 
- WTM(x) = timestamp ultima scrittura
- RTM(x) = timestamp ultima lettura
Regole: 
- rt(x) accettata solo se $t\geq WTM(x)$ altrimenti abort
- wt(x) accettata solo se $t\geq WTM(x)$ e $t \geq RTM(x)$ altrimenti abort. 
Non ci sono attese $\Large \to$ no deadlock 
Molte transazioni possono essere abortite. 

---

VSR = la più generale
CSR ⊂ VSR
2PL ⊂ CSR
TS ⊂ CSR

2PL e TS hanno un'intersezione ma nessuno include l'altro 

---

## Regole per esercizi

### Verificare se è CSR
- Costruire il grafo dei conflitti 
	- Se c'è un ciclo $\Large \to$ non è CSR
	- Se c'è ciclo è CSR e anche VSR

### Verificare se è VSR ma non CSR 
- Controllare la relazione legge e le scritture finali 

### Verificare se è 2PL 
- Controllare che nessuna transazione acquisisca lock dopo averne rilasciati. 
### 2PL stretto
- Tutti i lock sono stati rilasciati solo dopo il commit

