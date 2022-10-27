
---
cssclass: list-lines
---

[[Tecnologie Web-info]]

---

[[Tecnologia, Cultura ed Etica.pdf]]
## Etica & Tecnologia 2022-10-05
> **==Tecnologia==** = ambito del sapere e del fare che si occupa degli *artefatti*, prodotti comprendendo e trasformando il mondo. 
> **Artefatti** = enetità ideate progettate e costruite intenzionalmente per soffisfare un insieme specifico di bisogni. 

L'uomo produce artefatti per migliorare la qualità della vita. 
Gli artefatti sono caratterizzati da: 
- Le concettualizzazioni e i linguaggi disponibili per la loro descrizione e modellazione
- Dal loro ciclo di vita e dalle metodologie per la ideazione, progettazione, costrizione, gestione, valutazione, dismissione, smaltimento. 

Gli artefatti possono essere **Oggetti** o **Servizi**

Gli **Oggetti** sono entità presenti (prodotti hardware, software)
I servizi (processi) sono una successione di eventi che accadono nel tempo. In ogni momento in cui esiste è presente solo in parte.  (Processo di progettazione di un artefatto, servizio di riparazione, presentazione multimediale....)

**Artefatti** fisici realizzano il loro scopo sfruttando processi/fenomeni fisici. (Oggetti, tipo coltello)
Artefatti simbolici hanno un supporto fisico ma realizzano il loro scopo attraverso l'uso di segni (libro)

Il **Design** (*Abbinamento strutturale*) ha il compito di abbinare artefatti al corpo umano. Non si progetta solo per l'utilità, prestazioni, funzioni. Anche per il piacere, divertimento, emozioni, valori. -> *Design emozionale*

Artefatti **computazionali**: artefatti che realizzano la loro funzione attraverso l'esecuzione di un programma. 
Considerazione di un prodotto come servizio: 
- Funzione (a cosa serve)
- Uso (come si usa)
- Utilità (se è utile o meno)
- Prestazioni (efficiente o meno)
- Convenienza

La tecnologia è vista come il mediatore tra le persone e il mondo. 
**==Tecnologia==** = strumento usato per compiere attività o realizzare determinati obiettivi. 

##### Teoria della Mediazione Tecnologica

Relazioni **P-T-M** (Persona, Tecnologia, Mondo)
- ***embodiment***: la tecnologia è incorporata nell'utente (occhiali) (P-T) -> M
- ***Hermeneutic***: la tecnologia fornisce una rappresentaizione del mondo che va interpretata (Sensori) P -> (T-M)
- ***Alterity*** La tecnologia è dotata di *Agency*: sistema autonomo capace di agire in funzione di obiettivi e scopi. (Robot) P-> (T-M)
- **Background** tecnologia incorporata che agisce nello sfondo (Home automation)
- **Fusion** Tecnologia fusa con l'utente (pacemaker)
- **Augmentation** Tecnologia esercita una mediazione tra *embodiment* e *hermeneutic* (Realtà aumentata)

> La cultura influenza la tecnologia e la tecnologia influenza la cultura




#### Captologia 
DIsciplina che studia l'uso dei computer per influenzare idee e comportamenti.
Computers As Persuasive Technologies: CAPT
- Principio di scarsità 
	- Valore di un bene legato alla sua disponibilità 
- Principio di autorità 
	- Le persone si fidano di chi appare esperto 
- Principio di testimonianza sociale 
	- Quando non si sa come comportarsi si imitano gli altri
- Principio di simpatia
	- Persone attratte dal bello, da chi fa complimenti.. 
- Prinipio di reciprocità 
	- Persone debitori in caso di favori
- Principio di impegno e coerenza
	- Impegno -> coerenza per portarlo a buon fine 
- Principio della semplificazione
	- Semplificazione attività = modo per convincere persone ad eseguirla 
- Principio del tunnel 
	- Coinvolgimento in attività che non può essere interrotta  (=tunnel)
- Principio di personalizzazione
	- Gli altri prestano attenzione -> proviamo piacere 


#### Etica
La tecnologia è neutrale, dipende da come viene usata. L'etica è il settore della filosofia che si occupa dei comportamenti giusti e sbagliati. 
**Tesi della neutralità della tecnologia**: dipende da come viene usata: Responsabilità interamente all'utente. 

##### Principi etici del design persuasivo 
> I creatori di una tecnologia persuasiva non dovrebbero mai cercare di persuadere una o più persone di qualcosa che loro stessi non avrebbero acconsentito ad essere persuasi a fare. 

##### Trasparenza e opacità 
- Tecnologia trasparente
	- Non visibile: editor di testo -> si è concentrati sull'attività di scrittura
- Tecnologia opaca
	- è l'oggetto di attenzione dell'utente: editor di testo si blocca: attenzione si sposta su esso. 

#### Etica degli algoritmi 

Questioni etiche per l'uso di **big data, Data mining, Data Analytics, Internet of Things** 
Tra i problemi emersi: 
- Tracciabilità 
- Automazione dei sistemi 

Esiste un vuoto legislativo che deve ancora essere colmato (*AI4people, AI for Common Good...*)
 
---

2022-10-06 10:35
[[Internet - Parte 1.pdf]]

![[Computer Networks#Story of the Internet]]

![[Internet]]


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


---


# Risorse Multimediali - Parte 1
2022-10-20 10:30


[[Risorse Multimediali - Parte 1.pdf]]

## Digitalizzazione: 
Processo di conversione da *analogico* a *digitale*. Da valori continui a valori discreti. 
La conversione porta una perdita di informazioni: spesso non percettibili. 

Testi alfanumerici costituiti da elementi atomici discreti. (in codice ASCII)
C'è una legge di corrispondenza (codice) tra i caratteri astratti (alfabeto) e un insieme di configurazioni di bit (codici binari) 
Per codificare un alfabeto da 200 caratteri servono 8 bit: 2?8 = 256 > 200.


## ASCII
American Standard Code for Information Interchange  (1963 da ANSI)
è un codice per codifica dei caratteri 
**Si usano 7 bit (0-127)**
non 8 perchè i primi 32 codici numerici sono per i caratteri di controllo: 
- Carriage return, line feed, backspace, cancel, escape... 
- 127 = delete
**Extended ASCII** Si usano *8 bit* (estende ASCII ai caratteri usati in europa occidentale)

### UTF-8
Unicode Transformation Format è la codifica principale di **Unicode** per internet e W3C. 
Assegna un numero univoco ad ogni carattere usato per la scrittura di testi. 
www.home.unicode.org
Usa da **1 a 6 byte** per rappresentare un carattere.  è retrocompatibile con la codifica ASCII 
UTF-8: 127 caratteri (ASCII standard)
UTF-16: 2^11 caratteri (estensioni ASCII, alcuni ideogrammi)
I primi 128 sono lo standard ASCII.
UTF è la codifica di caratteri più diffusa.

>[!danger]-   Microtipografia
>Riguarda le famiglie di caratteri 
>ogni carattere astratto deve essere associato a una specifica rappresentazione grafica visiva: **glifo**
>I glifi sono memorizzati come mappe di **bit** (raster) o in forma vettoriale (vector)
>La corrispondenza caratteri - glifi è data dal **font**

## Font

Corrispondenza *triangolare* tra: 
- Carattere Astratto (T)
- Codice numerico ASCII (84)
- Glifo (*T*)

#### Famiglie di typeface
- Roman
	- Caratteri che hanno dei trattini di completamento nel glifo (grazie) -> serif. Usati per stampa su carta. 
- Gothic
	- Comprende i **sans serif**. Caratteri detti bastoni, usati per visualizzazione a schermo.
- Script
	- Caratteri che limitano l a scrittura a mano libera
- Blackletter
	- Caratteri ispirati a manoscritti antichi

#### Attributi grafici del glifo
- Dimensione del carattere
- Larghezza del carattere
- Spessore del tratto
- Inclinazione del tratto

Le dimensioni dei caratteri si misurano in punti. Un punto corrisponde a 1/72 inch. 1 inch = 2.54cm

#### Mesotipografia
> Configurazioni di glifi in linee e blocchi di testo 

- **Spacing**
	- spazio fra lettere
- **Kerning**
	- Spazio tra coppie di lettere specifiche. Usata per conferire aspetto equilibrato ai carattteri. 
- **justify**
	- lunghezza delle righe di testo
- **Interlinea**
	- Spazio sotto e sopra la riga di testo. 


## Immagini

Immagine analogica: rappresenta oggetto riprodotto mantenendo un'analogia formale con l'immagine originale. 
### $I = f(x,y)$
I = valore di luminosità / colore 
P = punto di coordinate x/y

### Digitalizzazione immagini
Attraverso due processi: 
- Campionamento
	-  Immagine suddivisa in griglia di celle: pixel logici. 
- Quantizzazione
	- ogni pixel assume un valore di colore, facendo la media dei valori all'interno del pixel. 

#### Rappresentazione del colore
Monocromatica: il valore indica l'intensità del grigio 
Colore: definizione di sazio geometrico astratto. 

- **RGB**
	- Sintesi additiva di tre colori primari. Ogni colore occupa **8 bit**. Usato per monitor e scanner
- **CMYK**
	- Sintesi sottrattiva di quattro colori: Cyan, Magenta, Yellow, Black. Usato nelle stampanti
- **HSL**
	- Hue Saturation Value. 8 bit per canale. Usato in campo artistico.
	- Hue: Parte dal rosso (0°), verde (120°), blu (240°)
	- Saturation: intensità e purezza del colore. Percentuale
	- Value: luminosità, brillantezza. Percentuale 
- **YUV**
	- Basato sulla separazione della luminanza (Y) dalla crominanza (UV). Usato in alcune tecniche di compressione (JPEG)

##### Sintesi Additiva  (RGB) e sottrattiva (CMYK)

![[440F1071-A755-43DC-8365-A6228966F226.png|300]]

>[!palette]- CLUT 
>Color LookUp Table

##### Altre caratteristiche immagine: 
- Dimensione (logica) di immagine bitmap = numero di pixel che compongono l'immagine. 
- Risoluzione di immagine: risoluzione del dispositivo di acquisizione o visualizzazione. 
**PPI** = pixel per inch 
- Profondità del colore: n. bit usati per la quantizzazione (2, 8, 16...)
- Scala tonale: gamma di colori visualizzabili (8bit, 10bit...)

##### Spazio occupato da immagine raster: 
	Spazio = Dimensione (pixel) x profondità (bit/pixel)


### Grafica vettoriale

Gestite alla base da **Curve di Bezier**. 1962.
- sono curve parametriche che definiscono elementi 

Vantaggi: compatte, facilmente manipolabili. 
Svantaggi: Complessità nella progettazione di immagini articolate, devono subire un processo di rasterizzazione per essere visualizzate. 

#### Uso delle immagini nel Web 
- Non figurative: Astratte. Non rappresentano entità del mondo 
- Figurative: rappresentano entità riconoscibili (persone, oggetti, ambienti)
	- Concettuali: Concetti astratti 
	- Narrative: eventi, monumenti del mondo. 

---

2022-10-26 10:30

[[Risorse Multimediali - Parte 2.pdf]]
# Suono
 > Onda longitudinale (onda di pressione) che viaggia attraverso aria o altro mezzo

Il processo di registrazione e riproduzione dell'audio è composto da una serie di operazioni idi **digitalizzazione** dell'onda di pressione sonora per la conversione dell'audio digitale in **onda di pressione.** 

Il segnale di audio analogico è rappresentabilie da una funzione in un intervallo reale di una variabile reale, il tempo t. 
### $A = x(t)$ 
Con A = ampiezza del segnale al tempo T 

### Dominio del tempo e della frequenza 

#### $y(t) = Asin(2\pi ft + \phi)$n

##### Serie di Fourier
Le onde periodiche possono essere visualizzate come somma di più onde sinusoidali di diversa frequenza e ampiezza 
Suono periodico: suono che si ripete a intervalli regolari 
**Serie di Fourier:** [formila]

![[CEA37F31-09CB-400B-9185-A89608C18B1B.jpeg|300]]

#### Trasformata di Fourier 

[...]

FFT...

#### Spettrogramma
> rappresentazione visiva tempo-frequenza di un audio digitale. 

#### Quantizzazione

