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
### Operazioni: find
##### Reperimento
Di servizi dal registry tramite **query** che comprendono vari aspetti (tipo di servizio, categoria, prezzo...)
#####  Selezione 
Dello specifico servizio. Può essere manuale o automatica in base a qualche proprietà

### Operazioni: bind
Il client per invocare il servizio utilizza i dettagli trovati tra le informazioni tecniche nella descrizione del servizio. 
Può avvenire direttamente (con connessione al provider) o tramite intermediario (registry o broker)

## Esempio: 
> Azienda che fornisce parti in plastica speciali, sulla base di un contratto o una tantum. 
> - Agisce da intermediario tra produttori di parti e altre aziende che utilizzano tali parti in prodotti più vasti. 
> - Interagisce quindi con molteplici attori. 

Il processo di interesse riguarda l'invio di un ordine di acquisto da parte di un'altra azienda. 
- Potrebbe coinvolgere: Ricezione ordine, controllo in magazzino, verifica del credito, fatturazione automatica, aggiornamento del magazzino, spedizione. 
Semplificando: Un servizio "aggregatore" riceve l'ordine, richiede a un servizio di magazzino se i pezzi ci sono e in caso affermativo richiede una spedizione a un servizio corriere, calcola il prezzo e fattura. 
![[Pasted image 20240514135915.png#invert|500]]

# Livelli di adozione 
1. Adozione di SOA nell'organizzazione
	- Adattando applicazioni esistenti e orchestrandone il funzionamento per la realizzazione di alcuni processi
2. Organizzazione basata su SOA
	- Definizione di servizi comuni e standardizzati per l'organizzazione, consistenti tra di loro e rispettosi delle policy aziendali.
3. Realizzazione di SOA inter-organizzazioni
	- Processi collaborativi progettati pensando anche ad organizzazioni esterne. 

# QoS (affidabilità)
> Capacità di un servizio di rispondere alle invocazioni ad un certo livello commensurato alle aspettative del client 

Dato che è previsto che possano coesistere più fornitori dello stesso servizio la QoS è molto importante. Insieme ovviamente al costo. 

## Elementi della qualità nei servizi: 
- Disponibilità
	- Assenza di downtime e misure TTR (Time To Repair)
- Accessibilità
	- Probabilità di successo dell'invocazione
- Conformità agli standard
- Integrità
	- Conformità alla descrizione formale del servizio (es: WSDL o SLA)
- Performance
	- Throughput e latency
- Affidabilità
	- Capacità di un servizio di funzionare correttamente anche in presenza di problemi di server o di rete. 
- Scalabilità
	- Capacità di servire le richieste anche a fronte di forti variazioni nel loro volume
- Sicurezza
	- Autenticazione, autorizzazione, integrità, confidenzialità 
- Transazionalità 
		- Quando serve, deve essere descritta nella SLA e rispettata 


## SLA

> Service-Level Agreement

Descrizione formale del livello di servizio fornito, in forma di contratto. Include descrittori di qualità da rispettare  nel contratto tra provider e client. Possono esserci penalità in caso di mancato rispetto. 
Può essere statica o dinamica. 

### Elementi SLA: 
- Scopo 
- Attori (provider e requestor)
- Periodo di validità 
- Ambito di competenza (i servizi forniti)
- Vincoli 
- Penalità
- Servizi opzionali 
- Esclusioni
- Amministrazione 

Due approcci: 
- Web Services "standard" basati su SOAP e WSDL
- Web Services di tipo **REST**

# Web Services
Definizione ufficiale: 
> Applicazione software identificata da un URI in cui le interfacce e le connessioni si possono definire, descrivere e ricercare attraverso artefatti XML. Supportano l'interazione diretta con altri applicativi software usando messaggi basati su XML attraverso protocolli di base di internet. 

Quindi è:
- una componente software che effettua delle operazioni messe a disposizione da remoto tramite linguaggi basati su XML su uno strato di trasporto costituito dai protocolli di base di internet. Esempio: ricerche su motori di ricerca. 

## XML
- Definizioni 
- messaggistica
## Protocolli di base internet 
- Comunicazione 
- http, smtp, ftp...

I principali attori coinvolti sono quelli definiti da SOA:
- Service provider
- Service Client
- Service registry 

### Possibili applicazioni di base
- B2B
- Integrazione di sistemi
- Adozione di funzioni Web in altre applicazioni
- Ricerca e visualizzazione di informazioni complesse in agenti utente
- Ogni cosa che ora si realizza anche con tecniche di *screen scraping*. 

### Le tecnologie dei WS: 
![[Pasted image 20240514144436.png#invert|500]]
## Gli standard: 
- **Standard abilitanti:**
	- HTTP(SMTP), XML
- **Standard di base:**
	- SOAP, WSDL, WSMO
- **Standard per composizione e collaborazione**: 
	- BPEL, WS-CDL
- **Coordinamento e transazione:** 
	- WS-Coordination, WS-Transaction
- **Altro:**
	- WS-Security, WS-Policy, WS-Management

### Web Services e XML 
- XML per la comunicazione tra fornitore e richiedente del servizio
- XML per la descrizione dell'interfaccia pubblica 
- XML per la descrizione dei servizi forniti 
### La comunicazione
In generale, avviene tramite messaggi codificati XML e trasportati da HTTP (SMTP, FTP). 
Tipicamente, il formato dei messaggi segue specifiche SOAP (Simple Object Access Protocol)

![[Pasted image 20240514145028.png#invert|500]]

## SOAP
> Simple Object Access Protocol

Usato spesso per comunicazioni di tipo RPC, ma non solo. 

