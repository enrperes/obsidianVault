### Internet

> Interconnessione di singole reti di calcolatori gestite da organizzazioni pubbliche, aziendali o private. 
è un sistema di reti di calcolatori (=rete di reti), un insieme di *nodi*.
Tra i *nodi*: 
- Host (terminale): applicazioni come computer, server, smartphone. 
- Nodi di commutazione (router, switch, bridge)
- Punti di accesso

**ISP** = Internet Service Provider, fornisce accesso a internet e ai sistemi periferici.  

- ISP di Livello 1: Reti della dorsale di Internet, copertura internazionale (Cavi sottomarini in fibra)
- ISP di Livello 2: Copertura nazionale o regionale 
- ISP di Livello 3: Locali, ISP di accesso 


Linee di comunicazione (=*LINK*): 
Un collegamento fisico tra due nodi è costituito da un link fisico ([[Transmission Media|Cavi di rete]]) -> = *Mezzi Guidati*
I collegamenti ***logici*** non necessitano di una connessione fisica tra i nodi. -> *Mezzi non guidati*.

![[Pasted image 20221006105451.png|200]]
![[Transmission rate]]

#### Reti di reti 

Internet fornisce servizi ale applicazioni, dette applicazioni distribuite. Coinvolgono più sistemi periferici che si scambiano dati. 

Interazioni tra sistemi periferici: un insieme di regole che definiscono le modalità di interazioni tra reti: **Protocollo di rete. **

### Protocolli di rete

Definiscono come le entità di un livello in un nodo scambiano informazioni con le entità in un altro nodo. Definisce i *formati* e il significato dei messaggi, i tipi e le sequenze di azioni da effettuare per svolgere un servizio, 

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