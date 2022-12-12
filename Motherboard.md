#todo 

http://edwardbosworth.com/My5155_Slides/Chapter12/SystemBusFundamentals.htm

![[Pasted image 20221205150817.png]]

## BUS
> Canale fisico di comunicazione tra dispositivi. 

Per gestire dispositivi con velocità diverse si usano **Bus sincroni** o **bus asincroni**. 
Fisicamente sono composti da tracce di alluminio o rame, oppure da / verso la Mobo: cavi isolati. [[Transmission Media|I cavi coassiali]] vengono usati per elimiare le interferenze date dai [[Onde Elettromagnetiche|campi magnetici]]. 
Viene anche usata la protezione differenziale basata su [[Kirchhoff]]. 

### Frequenza del bus
> numero di slot temporali distinti presenti nel segnale in un secondo. Calcolata in **Hetz**

### Banda passante 
> Frequenza x numero di bit presenti in uno slot (bit / sec)

### Bus sincroni 
![[Pasted image 20221205153114.png|500]]

## Bus seriali e paralleli
![[Pasted image 20221205153623.png|500]]

### Bus skew
![[Pasted image 20221205154109.png|500]]


![[Pasted image 20221205154905.png|500]]

---

2022-12-06

### La prossimità con la CPU 
Determina la banda passante, il costo e la flessibilità del bus. 
- Bus locale (front-side bus): proprietario, banda elevata. 
- Bus della cache (back-side bus): proprietario
- Bus della memoria principale
- Bus della scheda video (Accelerated Graphics Port (AGP))
- Bus per specifici controllori (ISA, ATA, SCSI)
- Bus per dispositivi esterni: USB, Thunderbolt 

## Schema connessioni Core i7
![[Pasted image 20221206110628.png|400]]
- 2 Bus proprietari a 666MHz e 64 linee dati per connessione a due memorie DDR3 SDRAM: 20GB/s
- 1 Bus PCIe per la connessione alla scheda grafica: 16GB/s
- 1 Bus Direct Media Interface: bus proprietario simile a PCIe per connessione a un chipset

## Accesso alla memoria
Può avvenire in modo sincrono o asincrono 
#todo 

## Accesso alla memoria DDR3
Parallelizzazione accessi alla memoria (**pipelining**)
Accesso dati in 3 fasi: 
- ACTIVATE
	- Si prepara la lettura, una riga della matrice di celle viene preparata all'accesso 
- READ/WRITE
	- Si eseguono accessi multipli a singole o sequenze di parole nella riga attivata. 
- PRECHARGE 
	- Chiude la riga corrente e prepara la memoria a una nuova ACTIVATE

La memoria DDR è divisa in banchi. Fino a 4 possono essere attivati simultaneamente. 

PCI realizza un arbitraggio semplice: 
- REQ# = segnale di richiesta 
- GNT# = segnale di assegnazione
^ lavorano in logica negata. 

## PCI Express (PCIe)
> Diversamente da PCI, è un **bus seriale**. 

- Ogni dispositivo ha una sua linea di input e output. La connessione è **punto a punto**. 
- Dispositivi con più connessioni dati (2,4,8,12,16) impegnano più linee PCIe
- Trasmissione dati a pacchetto (sequenze di bit)
- Banda passante: fino a 16Gb/s


`lsusb` comando Linux per periferiche USB 

### Livelli di comunicazione
La trasmissione avviene per livelli di comunicazione. Ogni livello garantisce funzionalità, aggiungendo a un pacchetto le relative info necessarie. 
I pacchetti si compongono di una serie di **campi** che il ricevitore progressivamente decodifica fino al recapito del messaggio al livello del programma. 

1. **Physical Layer**
	- Assicura la compatibilià tra slot e schede fisicamente diverse
	- codice 8b/10b (128b / 130b) -> Ricodifica di 8 bit in 10 bit. (ridondanza, non per controllo d'errore, per dare variabilità alla tensione, evitando sequenze tutte 0 o tutte 1)
	- 
2. **Link Layer**
	- Livello trasmissione 
	- Correzione di errori sul pacchetto mediante **codice a ridondanza ciclica.**
3. **Transaction Layer**
	- Livello transazione
	- Sistema di crediti per gestire le priorità durante la comunicazione 
1. **Software Layer**
	- Interoperabilità con il software che adoperava il bus PCI. 

## Universal Serial Bus (USB)
> Bus per il collegamento di periferiche esterne sviluppato nel 1995. 

Obiettivi: 
- Unico bus per tutte le periferiche 
- Accesso a slot interni non necessario
- Unico collegamento per tutte le periferiche 
- Scalabilitù del bus
- Connettività "how swap" = "plug & Play"
- Supporto dispositivi real time: "audio, webcam"
- Disponibilità alimentazione elettrica. 

### Connessioni USB
Fino a 2.0: Half-duplex (o invia o riceve) -> differenziale a 4 linee. 
- 2 linee per lettura o scrittura 
- 1 linea per alimentazione
- 1 linea per Ground

USB 3.0 Full Duplex -> differenziale a 5 linee. La quinta linea ha una tensione costantemente uguale alla somma delle alter due. Per ridondanza. 
USB-C differenziale a 12x2 linee. Alimentazione fino a 100W

### Struttura delle rete USB
I dispositivi vengono organizzati in un albero che si estende fino a 127 nodi. 
- Root hub - collegato a PCIe  (radice)
- USB bay - hub per espansione (nodi intermedi)
- Devices - tastiera, mouse... (foglie)
La comunicazione avviene solo tra Root hub e USB bay: i devices non comunicano tra di loro. 
`lsusb` per vedere i dispositivi attaccati (terminale Linux)

#### Inserimento di un nuovo dispositivo
1. Root Hub identifica l'evento
2. Interroga il dispositivo per ottenere dati su tipo, banda richiesta, driver associati...
3. Esegue una chiamata al sistema operativo 
4. Assegna in ID unico. 

### USB framing 
> la comunicazione è organizzata in frame (pacchetti sincronizzati di dati)
> Per mantenere la sincronizzazione tra gli orologi interni dei dispositivi, ogni 1msec Root Hub invia un frame che viene letto da tutti i dispositivi (frame broadcast)

Esistono 4 tipi di frame: 
- Control (comandi al dispositivi e diagnostica)
- Bulk (dati)
- Isochronous (per dispositivi in tempo reale)
- Interrupt (per chiamare una procedura di sistema)

### USB: comunicazione 
#todo slide 58

