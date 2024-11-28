- Message delivery guarantee, in the same order as they were sent. 
- Delivers at most one copy of each message. 
- Supports arbitrarily large messages
- Supports sync between sender and receiver
- Allows receiver to apply flow control to the sender
- Supports multiple application processes on each host

### Transport layer:

![[Pasted image 20241126111130.png#invert|center|500]]
### End-to-end addressing in TCP/IP

![[Pasted image 20241128093618.png#invert|right|500]]
**PORTS** = Internet Transport Layer Endpoints. 
Una porta è un numero tra 0 e 65545 (16bit)
In ogni connessione, due numeri di porte coinvolte, una per processo: 

`IP, port`  = Indirizzo *socket*, communication endpoint. 

L'indirizzo IP identifica l'host, il numero di porta il processo interno a quell'host. 
Per comunicare, due processi devono avere un socket ciascuno e comunicare con lo stesso transport protocol. 

Quindi una comunicazione è completamente identificata dalla tupla: 
`<IP_A, port_A, IP_B, port_b, protocol>`

#### Ports for client-server model 
Per iniziare la comunicazione, il client deve sapere la porta del server. 
I server possono memorizzare gli indirizzi dei client quando si contattano.

Es: Server Web port: 80; email server: 25; 

I client usano porte dinamiche, scelte casualmente, per ogni comunicazione. 

### Communication protocols

![[Pasted image 20241128094748.png#invert|center|500]]

#### Connection oriented
- Connessione affidabile implementato da **TCP** (e SCTP) 
- Si deve stabilire una connessione prima di scambiare i dati --> più costoso
- I datagrammi appartengono a una connessione --> più affidabile 
#### Connectionless
- I datagrammi sono inviati senza una connessione stabilita prima --> faster
- Ogni datagramma è indipendente
- Non affidabile 
- In TCP/IP implementato da **UDP**
#### Reliable connectionless
- Raramente implementato
- Simulato con TCP o aggiungendo controlli a UDP
- RUDP, RDP (poco usati)
#### Request / Reply
- Ogni richiesta del client è seguita da una risposta del server
- Ogni request/reply è indipendente dalle altre. 
- in TCP/IP è implementato nell'application layer. 
- RPC, RMI, SOAP, REST

## UDP
- Connectionless communication
- Non numbered datagrams
- No error / flow control
- Only encapsulation in IP
![[Pasted image 20241128095912.png#invert|center|500]]


Checksum = UDP header + data + pseudo-IP header 
Pseudo-IP Header = summary of the real IP header. 

Ogni socket ha una input e output queue (FIFO), mantenuta nel kernel 
Messaggi inviati e ricevuti interi. 

I pacchetti potrebbero arrivare con ordine sbagliato o duplicati. 

Quando arrivano all'Host, i pacchetti sono accodati nella coda associata alla relativa porta. 
Se una coda è piena, il pacchetto viene scartato. 
Se una porta non è associata a una coda, il pacchetto è scartato 

**Transaction-oriented**, suitable for simple query-respond protocols (DNS, NTP)
**Simple**, suitable for DHCP, TFTP
**Stateless**, suitable for large number fo clients (IPTV)
**Real Time Applications**: VoIP, online games
**Unidirectional communications** (broadcast, multicast)

## TCP


[...] 

