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

1. Caricamento delle pagine nel buffer
	1. 
2. Politiche di sostituzione 
3. Scrittura dei dati modificati 
4. Flush delle pagine 
5. Gestione della concorrenza