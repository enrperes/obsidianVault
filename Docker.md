> Progetto Open-Source che permette di eseguire processi informatici in ambienti isolabili, facilmente distribuibili (=container) con obiettivo di semplificare i processi di deployment di applicazioni software. 

è uno strumento che consente di: 
- Distribuire facilmente applicazioni in una sandbox (container)
- Eseguibili sul sistema operativo host 

## Container 
Lo standard è l'utilizzo di macchine virtuali 
Le VM virtualizzano l'hardware. Docker virtualizza il sistema operativo in modo diverso. 
Le VM offrono un isolamento completo: problemi nel sistema operativo Host non influenzano le VM e viceversa. 

I Container sfruttano la meccanica di basso livello del sistema operativo host per minimizzare l' overhead. 
Più leggero rispetto alle VM 

### Architettura Docker

1. Docker CLI (Client)
2. Docker Host: Docker Daemon (Server)
3. Docker Hub (registry) 

Il client comunica con il server (daemon) che si occupa della costruzione, esecuzione e distribuzione dei container Docker. 
#### Docker Daemon
- Ascolta le richieste API di Docker 
- Gestisce gli oggetti Docker
	- Immagini 
	- container
	- reti 
	- volumi

### Container Docker 
Esempio: Applicazione Web con: 
- Frontend Angular
- API in PHP (usando Laravel)
- Database MySQL 

Se volessi lavorare su questo progetto dovrei avere installato Node, PHP, Composer, MySQL. 
Come essere sicuri di avere le stesse versioni degli altri sviluppatori nel nostro team? 
Si usano i container. 


#### Container 
Sono processi isolati per ciascuna delle componenti dell'app 
Ogni componente app funziona nel proprio ambiente isolato, separata o da tutto il resto del computer. 

Autocontenuti 
Isolati
Indipendenti
Portatili

#### Immagini Docker
Immagine = pacchetto standardizzato che include tutti i file, i binari, le librerie e le config per eseguire un container 
Esempio, per un'app Python includerà il runtime Python, il codice dell'app, tutte le dipendenze

- Le immagini sono immutabili. Una volta creata, non può essere modificata. 
- Le immagini dei contenitori sono composte da strati. Ogni strato rappresenta un insieme di modifiche al sistema 

#### Registro Docker
Memorizza le immagini Docker (come un GitHub per le immagini Docker)
- Docker Hub è un registro pubblico per cercare 

## Docker 🤝 AWS

Due servizi: 
- EC2: Quello che useremo  
- ECS: il servizio pensato per l'utilizzo di Docker su AWS
	- Amazon Elastic Container Service
	- Orchestrazione di container che aiuta a gestire, distribuire, eseguire le applicazioni container. 
	- Tre livelli: 
	- 1. Provisioning 
		- Strumenti per interfacciarmi con lo scheduler 
	- 2. Controller
		- Distribuire e gestire le applicazioni che girano sui container 
	- 3. Capacità 
		- Infrastruttura su cui girano i container 


### Installazione su EC2

(file con istruzioni su notability)

