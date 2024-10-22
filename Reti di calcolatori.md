---
tags:
  - materia
---
[[info - Reti di calcolatori]]

---
# Chapter 1 - Foundations

## Connectivity 
- Link
- Nodes 
- Two main types of connections: 
	- Point-to-point (more limited or expensive)
	- Multiple Access (not so scalable)
- Switched Network 
	- Where specialized nodes allow to connect differente network trunks
		- Circuit Switched 
		- Packet Switched
- Packet, Message
- Store and Forward

## Recursive definition of Network 

> A computer network is an entity formed by: 
> - 2 or more nodes connected by a medium 
> or
> - 2 or more networks connected by a node

> [!attention]  **Def** 
 > A Network is a hierarchy of networks (often different)
 
## Cost Effective Resource Sharing
How to share a link? 
- Multiplexing / Demultiplexing 
- Synchronous Time division
	- Time slots, data transmitted in predetermined time slots
- FDM: Frequency Division Multiplexing
	- Range of frequencies assigned to each channel 
- Statisstical multiplexing 
	- Data transmitted based on demand of each flow

## Reliability
Networks should hide the errors. 
- lost bits
- packet loss
- Link / node fail
- Messages are delayed
- Messages delivered out of order

# Network Architecture
A *layered architecture* is adopted. 

![[Computer Networks#OSI Model]]


## Switches

### Repeater 

### Bridge

### Router 

### Proxy

# Application Programming Interface
> Referring to the interface the OS provides to the networking subsystems. 

## Socket Interface 
Dove un processo di un'applicazione si collega alla rete
Lavora al livello 4, usando TCP / UDP
L'interfaccia definisce le operazioni per: 
- Creare un socket
- Collegare un socket alla rete
- Mandare e ricevere messaggi attraverso la rete
- Chiudere il socket 

### Client-Server Model with TCP 
```c
 int sockfd = socket(address_family, type, protocol); 

 // TCP example
 int sockfd = socket(PF_INET, SOCK_STREAM, 0);

 // UDP example
 int sockfd = socket(PF_INET, SOCK_DGRAM, 0);

```
The socket number returned is the socket descriptor for the newly created socket

# Performance
Measured in two ways:
- **Throughput**
	- Number of `bits/s` that can be transmitted over a communication link
- **Latency**
	- Time between sending a message and its reception

## Frequency band
Basic, stationary (periodic) signals are **sinusoids**, defined by: 
- Amplitude
	- $\Large A$
	- volt, pascal....
- Frequency
	- $\Large f$ 
	- Hertz = $1/s$ 
- Phase
	- $\Large \varphi$ [rad]

Dominio del tempo vs dominio delle frequenze

## Latency 

> [!info] Delay=
> Latency = Propagation time + Transmit time + Queue time

**Propagation time** = Distance / speed of signal. Dipende dalle leggi della fisica, solitamente costante
**Transmit time** = time spent transmitting the message. Depends on its size.
**Queue time** = time spent inside computers, switches, routers. 

Small messages (few bytes) -> propagation is important
Large messages -> throughput is important 

$\color{orange}\large\text{Velocity Factor}$ = $\Large\frac{\text{speed of light in medium}}{\text{speed of light in void}}$ 

The lower the $\Large VF$, the slower the signal propagates, the greater the delay introduced by signal propagation. 

![[Pasted image 20241008100837.png#invert|300]]
Quindi un cavo in rame di alta qualità (Cat-7+) può essere meglio di un cavo in fibra ottica. 

## Jitter
> Delay Variance 

Introdotto solitamente nelle code variabili di switch e router. Irrilevante per FTP, SMTP. Crea problemi nelle trasmissioni audio/video realtime. 

## Delay vs Throughput 
Per avere grande throughput è necessario mantenere i canali pieni -> la coda diventa più grande -> il delay aumenta.

Per avere un delay ridotto la coda dovrebbe essere vuota o molto corta -> low throughput. 

Channel between a pair of processes as a hollow pipe.
Delay: length of pipe
Throughput: width of pipe
![[Pasted image 20241008105013.png#invert|300]]

Es: 
Delay: $50 ms$
Throughput: $45 Mbps$ 
$50*10^{-3}s * 45 * 10^{6}\;\text{bits/second} = 2.25*10^{6}\;\text{bits}=280KB \;\text{data}$   

# Chapter 2 - Connections
Electromagnetic radiations propagating through a medium: 
- Copper wire
- Optical fiber
- Air
![[Pasted image 20241008110648.png#invert|600]]
FM: 88-108 MHz
Microonde: 2.4GHz

## Encoding - Signals and Symbols 

Placing binary data on a signal = **encoding**
Done by **Modulation** = modificare il segnale di base (**carrier**) in termini di:
- frequenza (FSK)
	- Frequency Modulation (FM)
- amplitude (ASK) 
	- Amplitude Modulation (AM)
- fase (PSK)
	- Phase Modulation 

**Demodulation** è il contrario: si estraggono bit da un segnale modulato. 

Il dispositivo responsabile di modulation / demodulation è il ==modem==

![[Pasted image 20241008111739.png#invert|600]]

Una modulazione può variare ampiezza, fase e frequenza allo stesso tempo, codificando più bit alla volta. Su un canale è possibile usare più di una frequenza portante --> più larghezza di banda.

### Nyquist-Shannon theorem
on a channel of bandwitdh B we can transmit symbols at a rate no more than 2B: 
$$
R = 2B
$$

= Baud Rate = symbol / s

![[Audio#Campionamento]]


L'**alfabeto** è l'insieme di simboli che il canale può rappresentare. 
Avendo un alfabeto di **M** simboli, il numero di bit che ogni simbolo può rappresentare è $\log_{2}(M)$ 

Es: 2 livelli: 2 simboli, 1 bit per simbolo. 4 livelli, 4 simboli, 2 bit per simbolo. 
![[Pasted image 20241010100308.png#invert|450]]



Es2: Range $-V \sim +V$ divided into 8 levels.

Symbols are the 8 possible voltage levels. Each carries 3 bit. 
![[Pasted image 20241010100914.png#invert|350]]

### Noise on the channel 
Random signal $N(t)$ caused by: 
- Thermal noise (on cables)
- Distortions
- Interferences
- Technological limits 
If the noise is too powerful, a symbol can be changed in the channel. 

The important factor is the **signal to noise ratio**: $\Large \frac{S}{N}$: the ratio between the average signal power $\Large S$ and the avg noise power: $\Large N$ 
Entrambi misurati in W (mW)
Ratio expressed in decibel (dB) and called SNR (Signal to Noise Ratio) = Noise Level

$$
\Large SNR (dB) = 10\log_{10}\left( \frac{S}{N} \right)
$$
Incremento di 3dB = triplicare il S/N. Incremento di 10dB = decuplicare S/N
Potrebbe anche essere negativo. 

S/N alto --> rumore piccolo --> possibile suddividere il canale in tanti livelli. 
S/N basso --> rumore alto --> meno livelli nel canale --> meno bit / simbolo 

Da cui si ricava il: 

## Shannon - Hartley Theorem 
Lega banda di frequenze (utilizzabili), S/N e le capacità di canale. 

$$
\Large C = B \log_{2}\left( 1+\frac{S}{N} \right) \;\;\;[bps]
$$
C = capacità di segnale 
B = larghezza di banda utilizzabile

più è grande S/N, maggiori saranno le capacità del canale. S/N basso: capacità più bassa

Per aumentare il bitrate: o aumentare S/N, o aumentare la bandwidth. 

Es: Phone link

B = 3300 - 300 = 3000Hz
S = avg signal power 
N = avg noise power

Con 30dB di noise --> S/N = $10^{30/10}=1000$ 
$C=3000 \cdot \log_{2}(1001)=30kbps$ 

## Encoding
NRZ, Manchester, NRZI , MLT, 4B/5B

## Encoding Techniques

- These encoding techniques are used at the **physical layer** of the network architecture. The physical layer handles the transmission of raw bits over a communication link.
- **Encoding** is the process of placing binary data onto a signal, which is accomplished through **modulation**. Modulation modifies a basic signal, called the **carrier**, by adjusting its frequency (FSK), amplitude (ASK), and/or phase (PSK).
- **Demodulation** is the reverse process: retrieving the bits from the modulated signal.	
- A **modem** is a device that performs both modulation and demodulation.


### NRZ Encoding
- **NRZ (Non-Return-to-Zero)** encoding is a straightforward technique where a **high signal level represents a '1' bit and a low signal level represents a '0' bit**.

#### Problems with NRZ
- **Baseline wander:**
    - The receiver calculates an average of the signals it has received to differentiate between high and low signals.
    - Long sequences of consecutive '0's or '1's can shift this average, hindering detection.
- **Clock recovery:**
    - Both the sender and receiver rely on a clock for transmitting and receiving bits.
    - Frequent signal transitions (from high to low or vice versa) are crucial for synchronizing the sender and receiver clocks.
    - NRZ encoding can struggle with this if there are long sequences of the same bit value.

### NRZI Encoding
- **NRZI (Non-Return-to-Zero Inverted)** addresses the consecutive '1's issue in NRZ.
    
- In NRZI:
    
    - The sender **transitions from the current signal level to encode a '1'**.
    - The sender **stays at the current signal level to encode a '0'**.
- While NRZI solves the problem of consecutive '1's, it doesn't handle long sequences of '0's effectively.
    

### Manchester Encoding
- **Manchester encoding** merges the clock signal with the data signal.
- This is achieved by transmitting the **XOR (exclusive OR) of the NRZ-encoded data and the clock signal**.
- The clock signal internally alternates between low and high, forming a clock cycle.
- In Manchester encoding:
    - A **low-to-high transition represents a '0'**.
    - A **high-to-low transition represents a '1'**.

#### Problem with Manchester Encoding
- Manchester encoding **doubles the rate of signal transitions** compared to NRZ and NRZI.
- This means the receiver has **half the time to detect each signal pulse**, potentially impacting the reliability of data recovery.
- The rate at which the signal changes state is known as the **baud rate**.
- Since Manchester uses two signal transitions to represent one bit, its **bit rate is half its baud rate**.

### MLT-3 Encoding
- **MLT-3 (Multi-Line Transmission, 3-level)** is an encoding technique that shares similarities with NRZI but utilizes **three signal levels: -1, 0, and +1**.
- **Encoding Rules:**
    - The signal **transitions to the next level at the beginning of a '1' bit.**
    - **No transition occurs at the beginning of a '0' bit.**
    - Upon reaching either extreme level (+1 or -1), the signal **changes direction.**
- **Advantages:**
    - MLT-3 **reduces the baud rate**, as it can represent multiple bits with a single transition.
    - It helps **mitigate baseline wander** because the average signal level tends to stay closer to zero due to the three levels and alternating direction changes.
- **Applications:**
    - MLT-3 is often **used in combination with 4B/5B encoding in 100 Mbps Ethernet (100BASE-TX)**, which uses twisted pairs for transmission.

### 4B/5B Encoding

- **4B/5B encoding is a technique to break up long sequences of '0's and '1's, which can cause problems with clock recovery and baseline wander.**
- In 4B/5B encoding, **every 4 bits of data are encoded as a 5-bit code before transmission.**
- **The 5-bit codes are chosen so that there's never more than one leading '0' and no more than two trailing '0's.** This prevents three consecutive '0's from occurring, even between different 5-bit codes.
- **Characteristics:**
    - **Efficiency: 80%** (4 data bits transmitted for every 5 bits sent)
    - **Delay: 5 bits** (the receiver needs to receive 5 bits to decode 4 data bits)
- **Special Codes:**
    - Out of the 32 possible 5-bit codes, 16 are used for data, and the remaining 16 are reserved for special functions.
    - Some special codes **violate the rule of limiting consecutive '0's**.
    - **Examples of special codes:**
        - **00000:**  the line is dead.
        - **11111:**  the line is idle.
        - **00100:**  halt signal.
        - **00111:**  reset signal.
- **MLT-3 and 4B/5B in Ethernet:**
    - The combination of 4B/5B encoding and MLT-3 helps to achieve reliable data transmission in 100BASE-TX Ethernet.
    - When the line is idle (11111 in 4B/5B), MLT-3 maintains a constant signal level, providing a clear indication of line status.

By using MLT-3 with 4B/5B encoding, Ethernet systems can transmit data efficiently and reliably over twisted-pair cabling.


## Framing

Al livello Data-Link (2) i messaggi scambiati sono i **frame.**
#### Byte-oriented protocols:
- BISYNC (Binary Synchronous Communication) protocol 
	- Sentinel based 
	- Developed by IMB
- DDCMP (Digital Data Communication Protocol)
	- Byte Count based 
	- Used in DECNet

#### BISYNC
https://book.systemsapproach.org/direct/framing.html#byte-oriented-protocols-ppp

In ASCII: 
SYN = 22 (Synchronize)
SOH = 1 (Start of Header)
STX = 2 (Start of Text)
EXT = 3 (End of Text)
DLE = 16 (Data Link Escape)
CRC (Cyclic Redundancy Check)
Sono caratteri sentinella che precedono e segnalano l'header. 
![[Pasted image 20241011094228.png#invert|450]]

#### DDCMP 
Byte counting approach. Intestazione di 16 bit fissi. Count: indica la lunghezza totale del body.  Se *count* è corrotto -> **Framing error**
![[Pasted image 20241011095829.png#invert|450]]
#### HDLC (IBM)
Bit oriented protocol. 
Una sequenza di bit indica l'inizio e la fine del frame: `01111110` 
Header, Body, poi sequenza finale. 
![[Pasted image 20241011100221.png#invert|450]]

#### PPP
Point to Point Protocol 
[...]

### Error Detection
Introdotti da interferenze elettromagnetiche, rumore termico...
Il riconoscimento degli errori avviene nel livello 2 Data Link.
Soluzioni: 
#### DROP the frame
Come non fosse mai stato inviato. 
Livelli superiori possono riconoscere la perdita del pacchetto e richiederla. 
#### NOTIFY the sender
Se il messaggio è corrotto, viene notificato il sender che lo rispedisce. Se l'errore è occasionale, ritrasmettere risolverà il problema. 
#### Forward Error Correction
Usando algoritmi di correzione errore, il receiver ricostruisce il messaggio 
Tipicamente usata quando non c'è possibilità di re-invio messaggi. (es: digitale terrestre)
La ridondanza necessaria per la correzione è pesante e richiede tanta banda. 

Frequency of wrong bits is called **Bit Error Rate** (BER)

Idea generale: 
- n bits message
- k redundant bits 
Usually k is constant and << n
In Ethernet un frame con anche 12000 bit richiede solo 32-bit CRC

## Error Detection


### One-dimensional parity
7 bit + 1 bit di parità per raggiungere un numero pari di 1. Un numero pari di errori non è detected. 
![[Pasted image 20241011104744.png#invert|150]]
### Two-dimensional parity
Extra parity byte per tutto il frame, in aggiunta al parity bit per ogni byte. 1, 2, 3, 4(quasi) errori di bit vengono riconosciuti. Può anche essere usato per correggere la maggior parte di 1 e 2 bit errors. 
Gli errori da 4 bit non sono riconosciuti se sono allineati nella stessa riga e colonna. 
![[Pasted image 20241015094603.png#invert|200]]

### Checksum

1. Consider data as sequence of 16 bit integers
2. Add them together using 16-bit (complemento a uno) and take the ones complement of the result. 
3. The resulting 16-bit number is the **checksum**. 
4. Transmit the checksum together with the message. 
5. The receiver performs the same calculation on the received data and compares the result. 

Used only in Network and Transport Layer. 

### CRC
Used in DDCMP, HDLC, CSMA/CD, Token Ring...




$$
\Large
A_{sup}= 2(H-r\cdot w)+w(l-2r)+\frac{1}{2}\pi r
$$


CRC is used to *detect* errors, not correct them. Corrupt frames are discarded and must be resent. 
An **unreliable** link-level protocol leaves to higher level protocols the decision to retransmit messages. 
- Ethernet, WiFi. 
A **reliable** link-level protocol must recover from the discarded frames
- PPP

## Reliable Transmission

### ACK (Acknowledgment)
> Small control frame sent from receiver to sender saying that it has received the earlier frame. 
> It's a frame with header only, no data. 
If the sender doesn't receive the ACK after some time, it resends the original frame. 

The action of waiting for the ACK is called **timeout**. 
Using ACK and timeouts to implement reliable delivery is called **Automatic Repeat Request (ARQ)**. 

![[Pasted image 20241015104053.png#invert|450]]
a) ACK received before the timer expires
b) Original frame is lost
c) ACK is lost ⚠️
d) timeout fires too soon. ⚠️


Problema caso C: 
- Sender times out and retransmits the original frame. Receiver will think it's the next frame, since it has already sent the ACK. 
- Duplicate copies of frames will be delivered. 
Soluzione: 
- Use 1 bit sequence. Each frame numbered (0 or 1). In case of timeout a frame is resent with the same number. The receiver can determine if it's a copy based on the number compared to the previous one. 

![[Pasted image 20241015110755.png#invert]]

### Sliding Window Protocol 

Usato da PPP. Affidabile. Mantiene l'ordine dei frame (che sono numerati). Usato a livello 4, meno spesso al livello 2. Il receiver può fermare o rallentare il sender, se non manda gli ACK. 

The sender sends many frames during a RTT, even before receiving the first ACK, in order to fill the link capacity. Used sometimes at link level, more often transport Level. 
TCP lo sfrutta a 16-bit. 
L'idea è di spedire i frame durante il RTT, che parte dalla spedizione del primo frame fino al suo ACK. 
![[Pasted image 20241015110836.png#invert|450]]
- **RWS**: Receiving windows size.
- **LAF**: Largest Acceptable Frame (sequence number)
- **LFR**: Last Frame Received (sequence number)

![[Pasted image 20241017093752.png#invert|450]]


- Negative Acknowledgment (**ACK**)
	- es: Arriva frame n.7, receiver non ha ricevuto il n.6: invia NAK del n.6
- Additional Acknowledgement
- Selective Acknowledgement 

**SWS** si calcola con: $\text{Delay}\times \text{Bandwidth}$. 
**RWS** può essere variabile: 
- RWS = 1: no buffer al receiver per frame che arrivano fuori ordine
- RWS > SWS: il buffer non verrà mai riempito 
- RWS < SWS
- RWS = SWS = 1: è lo stop and wait ARQ 
	- If RWS = SWS then: SWS <= (MaxSeqNum +1)/2 = $2^{n-1}$ 
	- 

(pag 76+)


## Ethernet - IEEE 802.3

Mid 1970s by Bob Metcalfe at Palo Alto Research Centers (PARC)
Standard defines both: 
- Physical layer (lvl 1): medium, signals, encoding...
- DataLink layer (lvl 2): Frame format, error handling, media access control (MAC)

### CSMA/CD
> Carrier Sense Multiple Access with Collision Detection. 

Nodes can distinguish between idle and busy link. 
Multiple Link means that all nodes can access the link at the same time. 

## 10Base5
> 10Mbps, Baseband(digital), 5=500m (max length)

Manchester Encoding System: 
- 0V when idle
- +- 0.85V when transmitting 
- Onda quadra a 10MHz --> 10Mbps
#### Transceiver 


![[Pasted image 20241017105309.png#invert|center|350]]
![[Pasted image 20241017110951.png#invert|center|450]]

A livello Ethernet non si usa più questa tecnologia, obsoleta già negli anni 80. 

Un segnale viene propagato lungo tutto il cavo in entrambe le direzioni. Per evitare "eco" un resistore è posizionato alle estremità, in modo da assorbire il segnale. 


Segmenti Ethernet possono essere collegati da Repeater: dispositivo che decodifica e ri-codifica segnali digitali da entrambe le direzioni. Bit-by-bit, non c'è il concetto di frame, CRC....
Numero massimo di repeater = 4: 10Base5 Ethernet ha lunghezza massima 2500m. 


![[Pasted image 20241017110833.png#invert|450]]
### 10Base2, 10BaseT

![[Pasted image 20241017111332.png#invert|left|150]]

10Base2: Thinner, cheaper, coaxial cable. 10Mbps, no longer than 200m. 
10BaseT: T = Twisted pair. Limitato a 100m. 4B/5B Encoding and MLT-3. 

![[Pasted image 20241017111411.png|400]]


## 10BaseT
Quando riceve un Frame in una porta, l'Hub lo inoltra a tutte le sue porte, dopo un CRC check, usando lo store-and-forward. Non opera bit-by-bit come il Transceiver. Questo comporta un tempo di trasmissione doppio (+ il tempo di elaborazione dell'HUB)
Star Topology: Hub (ripetitore multiporta), da non confondere con lo Switch.
![[Pasted image 20241017111835.png#invert|left|400]]

ogni twisted pair può essere visto come un singolo segmento Ethernet: uno dei due trasmette e l'altro riceve. 
- One pair from hub to host, one form host to hub. Independent, so full duplex. 
- The other 2 pairs are unused in 10BaseT, used in 100 and 1000BaseT

### Ethernet Frame Format

![[Pasted image 20241018094500.png#invert|800]]
- Il *Preamble* (7 bytes `10101010` ) in 10Base-5 e 10Base-2 genera un'onda quadra a 10MHz. Permette al ricevitore di sincronizzarsi con il segnale. 
- *SFD* = Start of Frame Delimiter è composto da 8 bit (`10101011`) e indica l'inizio di un frame. 
- *Host and Destination Address*: 48 bit each
- *VLAN* tag (optional, 4 bytes)
- *Packet Type* (2 byte): demux key to identify the higher level protocol 
- *Data*: 64~1500 bytes. 
- *CRC-32* (32 bit)
- End of frame is implicit with loss of carrier. 

Overall: 14(+4) bytes header, 4 bytes trailer + 8 bytes of preamble and SFD (not part of the frame)

#### Ethernet Addresses 

Ogni scheda Ethernet ha un numero **Ethernet Address**, composto da 48 bit. 
Limite teorico di $2^{48}$ indirizzi
L'indirizzo appartiene alla scheda di rete, non l'host. Memorizzata nella memoria della scheda di rete. 
Es: `8:0:2b:e4:b1:2` , dove i primi 3 byte sono assegnati alla Digital Equipment Corporation (DEC)


### Ethernet Receiver Algorithm 
Ogni frame inviato viene ricevuto da tutti gli adaptor connessi a Ethernet. 
Ogni scheda di rete riconosce i frame indirizzati al suo address, controlla CRC e poi lo passa all'host --> **unicast frames**. (quelli con indirizzo diverso vengono ignorati)
Gli indirizzi **broadcast**, tutti 1, vengono passati all'host da tutte le schede di rete. 

### Ethernet Transmitter Algorithm 
Commonly called **MAC: Media Access Control**. 
Implementato nell'hardware della scheda di rete. 
Quando deve spedire un frame: 
1. Se la linea è in *idle*, transmette il frame subito 
	1. Il limite di 1500bytes indica the la linea può essere occupata per un certo limite di tempo
2. Se la linea è *occupata*, aspetta che vada in idle, poi trasmette subito. 

#### CSMA/CD
3 Stati: 
- **Idle**: non ci sono frame da trasmettere
- **Contention**: Un frame sta venendo trasmesso e qualcuno è in attesa di trasmettere
- **Transmission**: una (o più) stazioni stanno trasmettendo. 
è possibile che due dispositivi inizino a trasmettere allo stesso tempo: *collisione*. I segnali sono sovrapposti e non possono essere decodificati correttamente. 

*collision detection*: differenza tra segnale che ricevo e trasmetto = 0. Altrimenti viene segnalata una collisione e il frame viene abortito. (minimo 96 bits)
Viene spedita una *jamming sequence*, per segnalare. 

Il caso peggiore è quando i due host sono agli estremi opposti del cavo ethernet (max 2500m) e il tempo minimo di ascolto per accorgersi di una collisione è = 2* tempo di propagazione del segnale (andata e ritorno): motivo della lunghezza minima di 64 byte 
RTD (Round Trip Delay) = $25.6\mu s$ 

### Ethernet Transmitter Algorithm 
![[Pasted image 20241018104323.png#invert|left|500]]
[...]

### Ethernet efficiency 

Pacchetti più grandi aumentano l'efficienza del canale

[pag 111 chapter 2]

### N equal stations competing 
In ogni slot, ogni stazione vuole trasmettere un frame, con probabilità $P$. 
$Np$ è il numero medio di stazioni che vogliono trasmettere ad ogni slot: è il *global load* della rete. 
probabilità che uno slot venga usato per la trasmissione di un frame: 
$$
P(\text{1 out of N transmits)}=Np(1-p)^{N-1}
$$
La massima probabilità c'è quando $p = \frac{1}{N}$, quindi $Np = 1$ 
Quindi, per evitare collisioni e ottimizzare il throughput globale, più host ci sono, meno spesso dovrebbero trasmettere. 

37% degli slot vengono presi senza collisioni

![[Pasted image 20241022100340.png#invert|600]]

Reti piccole o frame grandi >>


# Wireless Links

### ISM 2.4 GHz band
![[Pasted image 20241022104526.png#invert|center]]
Suddiviso in 14 canali da 20MHz. 

![[Pasted image 20241022105233.png#invert]]

### FHSS
> Frequency Hopping Spread Spectrum

Tecnica per trasmettere segnale su uno spettro "random" di frequenze. 

![[Pasted image 20241022110049.png#invert|600]]
Il ricevitore usa lo stesso algoritmo del sender, per cambiare frequenza in sync. 
Tecnica usata anche oggi nel Bluetooth. 

### DSSS
Rappresenta ogni bit nel frame con multipli del segnale trasmesso. 
![[Pasted image 20241022110425.png#invert|500]]


> [!example]+  **Wireless technologies** 
 > - Wi-Fi (802.11)
 > - Bluetooth (802.15.1)
 > - WiMAX (802.16)
 > - 3G / 4G / 5G cellular wireless


