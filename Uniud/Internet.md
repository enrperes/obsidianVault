### Internet

> Interconnessione di singole reti di calcolatori gestite da organizzazioni pubbliche, aziendali o private. 

Tra i *nodi*: 
- Host (terminale): Tutti i dispositivi che si connettono a internet. (applicazioni come computer, server, smartphone)
- End system: sistemi periferici
- Nodi di commutazione (router, switch, bridge)
- Punti di accesso

Tutti i sistemi periferici sono connessi tramite rete di collegamenti (**[[Link]]**) e commutatori di pacchetti (**packet switch**)

**ISP** = Internet Service Provider, fornisce accesso a internet e ai sistemi periferici.  

- ISP di Livello 1: Reti della dorsale di Internet, copertura internazionale (Cavi sottomarini in fibra)
- ISP di Livello 2: Copertura nazionale o regionale 
- ISP di Livello 3: Locali, ISP di accesso 

### Livelli di applicazione

#### Applicazione di rete

- **Le applicazioni sono coppie di processi comunicanti che si cambiano messaggi.** 
	- Un processo invia e riceve messaggi dalla rete attraverso un'interfaccia software: **Socket** 
		- I **Socket** sono le porte tra applicazione e internet. 
			- Definiti con il numero di porta di destinazione (16bit) a due parametri: 
				- NA = indirizzo IP di rete dell'host. 
				- PN = [[numero di porta]] aociato al processo. 
- I programmi hanno l'obiettivo di definire l'architettura dell'applicazione e stabilire la sua organizzazione
- Ci sono due architetture di connessione: [[Architettura client-server]] e [[Architettura Peer-to-peer (P2P)]]

### Protocolli di rete

> **DNS; DHCP; FTP; HTTPS; SSH; SMTP...**
> Definiscono come le entità di un livello in un nodo scambiano informazioni con le entità in un altro nodo 

- Tipi di messaggi scambiati
- Sintassi dei messaggi
- Semantica dei campi 







Nelle reti a commutazione di circuito le risorse richieste lungo un percorso (buffer) per consentire la comunicazione sono *riservate* durante la sessione di comunicazione. 
I commutatori sul percorso mantengono lo stato della connessione  per tutta la durata della comunicazione, 
Come **vantaggi**: trasferimento di dati a velocità costante garantita. 

***Multiplexing*** - Commutazione di circuito. 
**FDM** = Frequency division Multiplexing.
	Lo spettro di frequenza di un collegamento viene suddiviso tra le connessioni. Il collegamento dedica una banda di frequenza a ciascuna connessione per la durate della connessione stessa. 

**TDM** = TIme division multiplexing 
	Il tempo viene suddiviso in frame di durata fissa, ripartiti in un numero fisso di slot temporali. La rete stabilisce una connessione attraverso il collegamento e dedica uno slot temporale a ogni frame. 

**Commutazione di pacchetto** vs **Commutazione di circuito**

Trasmissione Store and Forward: Il commutatore prima di iniziare a inviare il pacchetto aspetta di riceverlo tutto. 

**Throughput** istantaneo: velocità in bps alla quale un host sta ricevendo una risorsa. Istantaneo
può essere istantaneo, medio... 

![[Computer Networks#OSI Model|OSI Model]]

[Slides]