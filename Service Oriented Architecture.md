> Servizio = entità **autonoma**, indipendente, in grado di assolvere funzioni di varia complessità (risposta a richiesta, esecuzione di processi complessi...)

## Service Orientation
Paradigma di progettazione e sviluppo, basato sull'idea di realizzare applicazioni componendole a partire da servizi indipendenti
- Standardized Service Contract
- Service Loose Coupling
- Service Abstraction
	- Per nascondere i dettagli di implementazione
- Service Reusability
	- Identificare servizi che possono essere condivisi da vari servizi 
- Service Autonomy
	- Servizio deve avere controllo sul suo proprio ambiente e risorse. 
- Service Statelessness
	- Idealmente tutte le info vengono scambiate nella chiamata (stateless)
- Service Discoverability
	- Un servizio deve essere descritto in modo da presentare le sue capacità e possibili opzioni di utilizzo (usando metadati nel contratto di servizio)
- Service Composability
	- Il servizio deve essere progettato avendo in mente che possa essere composto con altri

Si creano servizi più possibile indipendenti dagli altri: 
- Adottabili singolarmente
- Cambiamenti di uno non influenzano altri 

## Service Oriented Computing 
> Disciplina che si occupa dei vari aspetti relativi ai service: scienza, ricerca, tecnologie, applicazioni, progetto, patterns...

= Capacità di scambiare dati e garantire nativamente l'interoperabilità
Possibilità per un'impresa di scegliere tra diversi fornitori dello stesso tipo di servizio, a seconda di costi e prestazioni, senza un lavoro di integrazione da fare per passare da uno all'altro. Opposto di *vendor lock-in*. 

## Service Oriented Architecture 
> Stile architetturale atto a supportare la *service orientation*. 

L'implementazione di SOA comprende una combinazione di tecnologie, prodotti, API, infrastrutture...
![[Pasted image 20240509154502.png|400]]

###  I ruoli
##### Provider
Agente software che fornisce servizi, ne pubblica la descrizione. 
##### Client
Agente Software che utilizza i servizi. In grado di ricercare in un registry i servizi che gli interessano. Un agente può agire sia da provider che da client
##### Registry
Agente Software che mantiene una descrizione ricercabile di servizi forniti da più provider
### Operazioni: Publish 
##### Descrizione
Del servizio, in modo che sia reperibile in base alle sue caratteristiche: 
- informazioni sul provider
- Informazioni sul servizio (cosa fa)
- Informazioni tecniche (come invocare, dettagli implementativi)
##### Registrazione 
Presso un registry
