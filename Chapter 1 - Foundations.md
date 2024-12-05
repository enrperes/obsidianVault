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
