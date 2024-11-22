### Componenti

1. *Ottimizzatore* (gestore interrogazioni): Strategie di accesso ai dati per esecuzione delle interrogazioni
2. *Gestore metodi* *di accesso ai dati*: trasforma i comandi di alto livello (**SQL**) in operazioni di scrittura e lettura e scrittura di dati in memoria secondaria
3. *Buffer manager*: trasferimento dei dati dalla base di dati alla memoria principale e viceversa, interagendo con il gestore della memoria secondaria (file system)
4. *Controllore della concorrenza*: Garantisce che non ci siano interferenze nelle operazioni R/W ai dati. $\Large \longrightarrow$  isolamento. **Isolamento**
5. *Controllore affidabilità*: garantisce il buon funzionamento del sistema in caso di malfunzionamenti o guasti. $\Large \longrightarrow$  robustezza. **Atomicità** e **Persistenza**

> [!abstract]+  **Transazione** 
 > Identifica un'unità elementare di lavoro svolta da un programma applicativo con caratteristiche associate di correttezza, robustezza e isolamento. 
 > *Sistema Transazionale* (DBMS) mette a disposizione un meccanismo per la definizione ed esecuzione di transazioni. 
 
unità elementare = unità atomica, quindi può comprendere diverse interrogazioni, aggiornamenti. 
 
 Eseguite in modo concorrente, non seriale. 

Due comandi per incapsulamento: 
`bot` = begin of transaction
`eot` = end of transaction

Se `bot` viene omesso, si assume che ogni istruzione costituisca una transazione (**autocommit**).

Una sola di queste due può comparire in una transazione: 
`commit` = commit work $\approx$ garanzia del cambiamento dei dati. Forza una conclusione positiva della transazione con la registrazione **permanente** di tutti gli aggiornamenti nel DB. 

`abort` = abort / rollback work.  

```sql
begin transaction;
X := X-10;
Y := Y+10; 
commit work; 
end transaction
```

```sql
start transaction
update ContoCorrente
	set Saldo = Salto + 10000
	where NumConto = 6528;
 update ContoCorrente
	 set Saldo = Saldo - 10000
	 where NumConto = 4371;
 select Saldo into A
	 from ContoCorrente
	 where NumConto = 4371;
 if A >= 0
	 then commit work;
	 rollback work; 
```

## ACID


[...] 


### Atomicità

### Consistenza

### Isolamento
l'ordine di esecuzione è vincolato alle operazioni interne alla transazione. L'ordine di esecuzione di transazioni diverse non è controllabile.
### Persistenza



