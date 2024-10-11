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

### Cyclic Redundancy Check
Used in DDCMP, HDLC, CSMA/CD, Token Ring...
Other approaches include: Parity, Two dimensional Parity, Checksum. 
7 bit + 1 bit di parità per raggiungere un numero pari di `1`.
![[Pasted image 20241011104744.png#invert|150]]


---

