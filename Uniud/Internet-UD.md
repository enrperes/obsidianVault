
[[Internet - Parte 1.pdf]]
2022-10-06 10:35

[[Computer Networks#Story of the Internet]]

[[Internet]]


---


# Internet 
2022-10-12 10:37
[[Internet - Parte 2.pdf]]

Internet è un sistema di reti di calcolatori (rete di reti)
I dispositivi che si connettono a internet sono detti Host (ospiti) o *end system* (sistemi periferici)
I sistemi periferici sono connessi tramite una rete di collegamenti (communication link) e commutatori di pacchetti (**packet switch**). 

I dati da scambiare sono divisi in sottoparti con un'intestazione: **pacchetti**


### Livelli di applicazione 
#### Applicazione di rete 
- I programmi hanno l'obiettivo di definire l'architettura dell'applicazione e stabilire la sua organizzazione. 
- client-server o peer-to-peer

##### Architettura client-server
Un **Host** sempre attivo (SERVER) risponde alle richieste di servizio degli altri host, i **client**.
- *client* chiede il servizio. Comunica con il server in qualunque momento, indirizzo dinamico, non comunica con gli altri client. 
- *server* fornisce il servizio. Sempre attivo, indirizzo statico, può ricevere richieste client in qualunque momento
Un singolo server non riesce a gestire tutte le richieste. I **data center** ospitano molti server per creare un potente server virtuale. 

##### Architettura Peer-to-peer (P2P)
Non c'è un server sempre attivo ma coppie arbitrarie di host: i **peer**, che comunicano direttamente tra di loro. (bit Torrent)
Nessuno degli host deve essere necessariamente sempre attivo. 
Non 'c'è un'infrastruttura sempre attiva.  Un vantaggio è la scalabilità. Tra gli svantaggi: sicurezza, prestazioni, affidabilità. 

#### Protocolli a livello di applicazione
definisce come i processi di un'applicazione si scambiano i messaggi: 
- tipi di messaggi scambiati
- sintassi dei messaggi
- semantica dei campi 
Alcuni protocolli: DNS; DHCP; FTP; HTTPS; SSH; SMTP...

Le applicazioni consistono in coppie di processi comunicanti che si scambiano messaggi. 
Un processo invia e riceve messaggi dalla rete attraverso un'interfaccia software: **Socket** (porta tra applicazione e internet)
Per scambiare messaggi le applicazioni hanno bisogno di un indirizzo IP, a 32bit. 

##### SOCKET
definito con un numero di porta di destinazione (a 16bit) a due parametri: NA = indirizzo IP di rete dell' host; PN = numero di porta associato al processo. 
###### Numeri di porta: 
2^16 = 65536 porte. 
Tra 0 e 1024 ci sono i numeri di porta *noti*(controllati dall'associazione IANA): 23:telnet; 22:ssh; 25:SMTP; 80:HTTP
Tra 49152 e 65536 ci sono le porte libere. Fino a 49152 possono essere registrate per evitare conflitti. 

#### Livello di trasporto 
Un protocollo a livello di trasporto mette a disposizione uan comunicazione logica tra processi applicativi di host differenti. 
[Slide protocollo a livello di trasporto (2)]

Due protocolli:
***UDP*** (User Datagram Protocol): servizio non affidabile e non orientato alla connessione. La consegna dei pacchetti non è garantita. 
***TCP*** (Transmission Control Protocol) servizio affidabile e orientato alla connessione

#### Multiplexing e demultiplexing 
Estendono la spedizione da host a host dal livello di rete a un servizio di trasporto da processo a processo per le applicazioni in esecuzione sugli host. 

### UDP
- controllo più preciso a livello di applicazione 
- [slides]

##### Checksum UDP 

### TCP
Servizio full-duplex  point to point, unicast 

Segmento TCP e struttura dei segmenti TCP  (32 bit)

11:56 registrazione 

Numero di sequenza 

Timeout 

Controllo di congestione 


---

2022-10-13 10:33
[[Internet - Parte 3.pdf]]

## Livello di rete

- Lato mittente: Prende i segmenti dal livello di trasporto, li incapsula. 
- Lato destinazione: Riceve i datagrammi dal router, estrae i segmenti e li consegna al livello trasporto. 

*Forwarding / Switching* (Inoltro) = quando un router riceve un pacchetto, lo trasferisce sul collegamento di uscita. Funzione del router.
*Routing* (Instradamento) = il livello di rete deve **determinare** il percorso che i pacchetti devono seguire tramite algoritmi di 

Il livello di rete è **Best effort**, non garantisce 
- La consegna dei pacchetti
- L'ordine dei pacchetti
- Il ritardo end to end
- La larghezza di banda minima necessaria

### Router
L'elemento hardware del livello di rete è il **Router**
Formato da: 
- Porte di ingresso
- Porte di uscita
- Struttura di commutazioni (collega input e output)
- Processore di instradamento
Per gestire il passaggio tra input e output il router usa una *tabella di inoltro*. Dai pacchetti il router estrae gli indirizzi di destinazione. 

### Internet Protocol [[IP]]

**IP**: Due versioni: 
- **IPv4**: 32 bit; $2^{32}$ bit, circa 4 miliardi  
- **IPv6**: 128 bit

#### formato dei datagrammi IPv4
- Numero di versione: 4bit, numero di versione del protocollo IP
- Lunghezza dell'intestazione
- Tipo di servizio (low latency, high throughput, reliable...)
- Lunghezza totale del datagramma IP (16bit max)



Un router ha più indirizzi IP, uno per collegamento. 

#### Subnet

	223.1.1.0/24 
/24 indica che i 24 bit che compongono l'indirizzo definiscono l'indirizzo della sottorete
[...]

**NAT** Network Address Translation. Assegna ad una intera LAN un solo indirizzo IP WAN

#todo 

#### Algoritmi di instradamento
- **Centralizzato**
	- calcola il percorso a costo minimo avendo una conoscenza globale della rete
- **Decentralizzato**
	- calcola il percorso a costo minimo in modo iterativo. Nessun nodo possiede informazioni complete sul costo di tutti i nodi. 
- **Statico**
	- I percorsi cambiano molto raramente
- **Dinamico**
	- determinano gli instradamenti al variare del volume di traffico o della topologia della rete
- **Sensibile al carico**
	- i costi dei collegamenti variano dinamicamente per riflettere il livello di congestione
- **Insensibili al carico**
	- dato che il costo di un collegamento non riflette esplicitamente il suo attuale livello di congestione. 

- Le **schede di rete** possiedono indirizzi a livello di collegamento: gli indirizzi ***[[MAC]]***


 ### Ethernet
 Insieme di tecnologie e protocolli per reti locali **LAN**


[...]


---

# World Wide Web
2022-10-19 10:31

[[World Wide Web.pdf]]

Nasce intorno al 1990 al CERN di Ginevra. Obiettivo: servizio di pubblicazione e distribuzione di dati e informazioni scientifiche. 

> WEB = spazio informativo e operativo on struttura ipertestuale e architettura client-server


[[Computer Networks#Story of the Internet | Le origini del WEB (più o meno)]] 

1991 I primi componenti principali del web
1994 W3C fondato al Cern -> World Wide Web Consortium www.w3.org
- Stabilisce gli standard e i protocolli di comunicazione. 

### Principi fondamentali del web:
- Accesso Universale: il web deve essere accessibile a tutti in qualsiasi momento. 
- Universo aperto: Deve potersi sviluppare con continuità. 
- Usabilità
- Accessibilità
- Interoperabilità
- Evolvibilità
- Uso di linguaggi misti

### Applicazione WEB
Caratterizzata da **Ipermedia** = struttura multilineare, utilizza diverse modalità di rappresentazione dell'informazione.

### Architettura di un browser WEB
- Interfaccia utente
	- Programma che interagisce direttamente con l'utente 
- Interfaccia di rete
	- Gestisce il flusso dati attraverso internet e il mantenimento di **cache** e **cookies**
- Parser
	- Analizza il file richiesto (*parsing*)
- Layout 
	- Presentazione dei componenti del sistema. 
- Librerie di supporto 
	- componenti software per interfaccia del browser. 


## URL
> Uniform Resource Locator
Identifica le risorse mediante un indirizzo.

Schema tipico: 
`` protocol://hostname:port/path-and-file-name 

- *Protocol*: protocollo a livello applicazione utilizzato da client e server (HTTPS, FTP...)
- *Host name*: Nome dominio DNS o indirizzo IP del server
- *Port*:  omesso, va in automatico quando corrisponde ad una porta standard. 
- *Path*: Nome e ubicazione della risorsa richiesta nel server.

Opzionali: 
- Username e password
- Query string: identificano parametri in aggiunta: "?" 
- Fragment: con il simbolo "#" indica una parte o una posizione all'interno della risorsa. 

#### Funzionamento del Browser
1. Utente inserisce URL 
2. URL spedito a interfaccia di rete. 
3. URL analizzato -> estratto indirizzo IP a cui connettersi e nome file da recuperare. Stabilisce la connessione con il server
4. Avviene la richiesta del file tramite il protocollo di rete (HTTPS, FTP)
5. File inviato al Parser.


### Elementi di un Server Web

- Nucleo 
	- gestire dati tra moduli
- Traduzione
	- traduce richieste del client (file, locazione)
- Controllo acceesso
	- Verifica identità utente
- Tipo di contenuto 
	- codifica oggetto richiesto
- Risposta
	- al client 
- Tracciamento
	- Registrazione dati richiesta (logging)

#### Esempio di server Web: Apache Software
Apache.org


## Protocollo HTTP

*HyperText Transfer Protocol*

Definisce la struttura dei messaggi e la modalità di comunicazione tra Client e Server
- Utilizza TCP come protocollo di trasporto
- Classificato come **Stateless protocol**: senza memoria di stato.
	- Invia i file al client senza informazioni sul client. 


#### Formato messaggi HTTP

- Riga di richiesta
	- Campo Metodo
		- GET (browser richiede un oggetto)
		- POST 
		- HEAD
		- PUT 
		- DELETE
	- Campo URL
- Righe di intestazione
- Riga vuota 

Formato messaggi HTTP di *richiesta*: 

```HTTP
GET /directory/page.html HTTP/1.1 
Host: www.google.com 
Connection: close 
User-agent: Mozilla/5.0 
Accept-language: en 
```

Formato messaggi HTTP di *risposta*
```HTTP
HTTP/1.1 200 OK
Connection: close
Date: 2022-10-20 01:14
Server: Apache/2.2.3
Last-Modified: 2022-10-19 21:15
Content-type: text/html
```


###### Codici di stato HTTP più comuni: 
- 200 
	- OK
- 301
	- Moved permanently
- 400 Bad Request
	- richiesta non compresa dal server
- 404 Not Found 
- 505 HTTP version not supported

## Cookies 

Utilizzati per: 
- Autenticare gli utenti 
- Limitarne l'accesso
- Fornire contenuti in funzione della loro identità

>[!info]- Esempio sui cookie
>• L'utente A accede al sito S (es. Amazon) per la prima volta (S usa i cookie).
• Quando la richiesta di A arriva al server, il sito S crea un numero di identificazione
ID-x univoco e crea nel suo database locale una nuova voce indicizzata da ID-X.
• Il server risponde ad A introducendo nella risposta HTTP una intestazione del
tipo: Set cookie: ID-X.
• Quando il browser di A riceve la risposta crea una nova voce nel file cookie da
esso gestito. Questa nova voce contiene il nome (hostname) del server e il
numero di identificazione ricevuto (ID-x).
• Ogni volta che A navigando nel sito segue nuove richieste il browser consulta il
file cookie estrae il numero di identificazione per il sito S e lo mette nella richiesta
HTTP in una linea di intestazione del tipo: Cookie: ID-X.
• In questo modo il server è in grado di tracciare l'attività di A nel sito S.


## Web Cache = Server Proxy

> Soddisfa le richieste HTTP al posto del web server effettivo.
Ha una memoria sul disco (cache) dove conserva oggetti recentemente richiesti

**Vantaggi**
- riduce i tempi di risposta alle richieste client
- Riducono il traffico sul collegamento a internet. Non sovraccaricano la banda. 
- Riducono il traffico globale del web in internet. 
**Problema:**
La copia di un oggetto che sta nella cache potrebbe essere scaduta -> il *GET condizionale* permette alla cache di verificare se i suoi oggetti sono aggiornati. 

*GET condizionale:*
Proxy al server: 

```HTTP
GET /fruit/banana.gif HTTP/1.1
Host: www.fruits.com
```
IL server invia l'oggetto al proxy:
```HTTP
HTTP/1.1 200 OK
Date: 2022-10-20 01:24
Server: Apache/1.3.0
Last-modified: 2022-10-19 20:25
Content-Type: image/gif
[data...]

```
...passa tempo...
Il proxy effettua un controllo di aggiornamento con il GET condizionale: 
```HTTP
GET /fruit/banana.gif HTTP/1.1
Host: www.fruits.com
If-modified-since: 2022-10-19 01:27
```
Il server web risponde (in caso di assenza di modifiche)
```HTTP
HTTP/1.1 304 Not Modified 
Date: 2022-10-20 01:28
Server: Apache/1.3.0
[]
```


### HTTP/2

Obiettivi: 
- Ridurre latenza
- Priorità delle richieste
- Compressione efficiente
- Elimina HOL
	- Gli oggetti pesanti caricate in testa alla pagina web creano un bottleneck per gli oggetti più piccoli in basso
	- Vengono suddivisi in piccoli frame 
- Priorità dei messaggi 
	- La priorità delle richieste può essere modificata per ottimizzare le prestazioni 
- Server push
	- Il server può inviare più risposte ad una singola richiesta. 

## HTTPS
> HyperText Transfer Protocol Secure

La comunicazione browser-server avviene su **TLS**: Trasnport Layer Security. 
- Riservatezza dei dati
	- Solo mittente e destinatario possono decifrare il contenuto del messaggio
- Integrità dei dati
	- Garanzia che il contenuto non subisca alterazioni durante la trasmissione
- Autenticazione end-to-end
	- Mittente e destinatario devono essere sicuri della loro identità

### Crittografia
- Chiave simmetrica
	- I due host utilizzano la stessa chiave
		-(pattern di sostituzione alfabetica)
- Chiave pubblica
	- Due chiavi
		- Pubblica
			Distribuita
		- Privata
			Personale e segreta

