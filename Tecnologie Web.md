---
cssclass: list-lines
---

[[Tecnologie Web-info]]

## Etica & Tecnologia 2022-10-05
> **Tecnologia** = ambito del sapere e del fare che si occupa degli *artefatti*, prodotti comprendendo e trasformando il mondo. 
> **Artefatti** = enetità ideate progettate e costruite intenzionalmente per soffisfare un insieme specifico di bisogni. 

L'uomo produce artefatti per migliorare la qualità della vita. 
Gli artefatti sono caratterizzati da: 
- Le concettualizzazioni e i linguaggi disponibili per la loro descrizione e modellazione
- Dal loro ciclo di vita e dalle metodologie per la ideazione, progettazione, costrizione, gestione, valutazione, dismissione, smaltimento. 

Gli artefatti possono essere **Oggetti** o **Servizi**

Gli Oggetti sono entità presenti (prodotti hardware, software)
I servizi (processi) sono una successione di eventi che accadono nel tempo. In ogni momento in cui esiste è presente solo in parte.  (Processo di progettazione di un artefatto, servizio di riparazione, presentazione multimediale....)

Artefatti fisici realizzano il loro scopo sfruttando processi/fenomeni fisici. (Oggetti, tipo coltello)
Artefatti simbolici hanno un supporto fisico ma realizzano il loro scopo attraverso l'uso di segni (libro)

Il **Design** ha il compito di abbinare artefatti al corpo umano. Non si progetta solo per l'utilità, prestazioni, funzioni. Anche per il piacere, divertimento, emozioni, valori. 

Artefatti computazionali: artefatti che realizzano la loro funzione attraverso l'esecuzione di un programma. 
Considerazione di un prodotto: 
- Funzione (a cosa serve)
- Uso (come si usa)
- Utilità (se è utile o meno)
- Prestazioni (efficiente o meno)
- Convenienza

La tecnologia è vista come il mediatore tra le persone e il mondo. 

##### Teoria della Mediazione Tecnologica

Relazioni P-T-M (Persona, Tecnologia, Mondo)
- ***embodiment***: la tecnologia è incorporata nell'utente (occhiali) (P-T) -> M
- ***Hermeneutic***: la tecnologia fornisce una rappresentaizione del mondo che va interpretata (Sensori) P -> (T-M)
- ***Alterity*** La tecnologia è dotata di *Agency*: sistema autonomo capace di agire in funzione di obiettivi e scopi. (Robot) P-> (T-M)
- **Background** tecnologia incorporata che agisce nello sfondo (Home automation)
- **Fusion** Tecnologia fusa con l'utente (pacemaker)
- **Augmentation** Tecnologia esercita una mediazione tra *embodiment* e *hermeneutic* (Realtà aumentata)

Cultura influenzata dalla tecnologia e viceversa

#### Captologia 
DIsciplina che studia l'uso dei computer per influenzare idee e comportamenti.
Computers As Persuasive Technologies: CAPT

[...] Slides

#### Etica
La tecnologia è neutrale, dipende da come viene usata. L'etica è il settore della filosofia che si occupa dei comportamenti giusti e sbagliati. 

**Tecnologia persuasiva**
 
---

2022-10-06 10:35

![[Computer Networks#Story of the Internet]]

![[Internet]]

![[Internet - Parte 1.pdf]]

---

2022-10-12 10:37
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

![[Internet - Parte 2.pdf]]

---

2022-10-13 10:33

### Livello di rete
*Forwarding / Switching*=quando un router riceve un pacchetto, lo trasferisce sul collegamento di uscita. 
*Routing*= il livello di rete deve determinare il percorso che i pacchetti devono seguire tramite algoritmi di routing. 
Il livello di rete è **Best effort**, non garantisce 
- La consegna dei pacchetti
- L'ordine dei pacchetti
- Il ritardo end to end
- La larghezza di banda minima necessaria

L'elemento hardware del livello di rete è il **Router**
Formato da: 
- Porte di ingresso
- Porte di uscita
- Struttura di commutazioni (collega input e output)
- Processore di instradamento

Per gestire il passaggio tra input e output il router usa una *tabella di inoltro*: 

### Internet Protocol [[IP]]

**IP**: Due versioni: 
- IPv4: 32 bit; $2^{32}$ bit, circa 4 miliardi  
- IPv6: 128 bit

[formato dei datagrammi IPv4]
- Numero di versione
- Lunghezza dell'intestazione
- Tipo di servizio (low latency, high throughput, reliable...)
- Lunghezza del datagramma

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

![[Internet - Parte 3.pdf]]
