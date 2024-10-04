---
tags:
  - materia
---
[[info - Reti di calcolatori]]

---

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

> [!attention]  **** 
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
[...]