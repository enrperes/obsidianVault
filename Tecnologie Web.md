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
