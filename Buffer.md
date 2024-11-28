> vasta zona di memoria centrale (RAM) preallocata al DBMS e condivisa fra le varie transazioni

Ha la responsabilità di mantenere **temporaneamente** porzioni della base di dati in memoria principale per aumentare prestazioni del DMBS, garantendo allo stesso tempo l'affidabilità.
Invia al gestore della memoria secondaria le effettive richieste di lettura e scrittura fisica. 

### Funzioni principali: 
- Caching dei dati 
	- Quando un'operazione del DBMS richiede accesso ai dati questi vengono caricati nel buffer dalla memoria secondaria. Operazioni successive vengono quindi eseguite con i dati nella RAM. 
- Deferred writes: 
	- Le modifiche ai dati non vengono scritte subito nella memoria secondaria; vengono registrate nel buffer e applicate in un secondo momento con operazione di flush o checkpoint. 

### Buffer Manager (gestore del buffer)

Modulo responsabile della gestione del *buffer pool*, la porzione di RAM usata. 
Funzionamento: 

1. Caricamento delle pagine nel buffer (dalla memoria secondaria alla principale e viceversa)
2. Politiche di sostituzione 
3. Scrittura dei dati modificati 
4. Flush delle pagine 
5. Gestione della concorrenza

![[Pasted image 20241126153506.png#invert|center|500]]

### Organizzazione del buffer

Organizzato in pagine, con dimensione pari a uno o più blocchi della memoria secondaria:
Il **blocco** è l'unità di misura di riferimento per le operazioni, può variare da alcuni KB ad alcune decine di KB.
Si assume che le pagine del buffer abbiano dimensione pari a quella del blocco. 

> I dati acceduti di recente hanno maggiore probabilità di essere acceduti nel futuro prossimo 

### Primitive per la gestione del buffer
Il buffer manager mette a disposizione delle primitive per le transazioni, per il caricamento e scaricamento delle pagine: 

> [!example]+  `fix`  
 > Utilizzata per richiedere l'accesso ad una pagina e restituisce al chiamante il riferimento alla pagina del buffer, in modo da consentire l'effettivo accesso ai dati 
 > 
 > ---
 > Esecuzione: 
 > 1. Si cerca la pagina fra quelle presenti nel buffer. Se disponibile, l'operazione termina con successo. (spesso)
 > 2. Se non è presente, si cerca nel buffer una pagina libera (con bit contatore = 0). Se il bit di stato segnala che è stata modificata (e non ancora salvata) viene aggiornata in memoria secondaria (`flush` ) e vengono effettuate le conversioni di indirizzi per identificare la pagina da caricare nel buffer e viene effettuata la lettura. 
 > 3. Se non ci sono pagine libere; 
> 	1. Politica **Steal**
> 		1. Consente di sottrarre una pagina ad un'altra transazione. La pagina selezionata (Vittima) viene scaricata in memoria di massa (`flush`), 
> 	2. Politica **no-steal**
> 		1. Politica adottata più spesso. La transazione viene sospesa e messa in coda. Quando si libera una pagina, il buffer procede. 
 
 > [!example]+  `setDirty`  
 > Indica al buffer che una pagina è stata modificata. Effetto: modifica del relativo bit di stato 
 
 > [!example]+  `unfix` 
 > indica al buffer manager che il chiamante ha terminato di usare la pagina. Effetto: decrementare il contatore di utilizzo della pagina. 
 > 

> [!example]+  `force` 
> Trascrive in memoria secondaria (in modo sincrono) una pagina del buffer. Aggiorna il corrispondente bit di stato. 
> Questa operazione è richiesta dal gestore dell'affidabilità quando è necessario garantire che alcuni dati non vengano persi. 

