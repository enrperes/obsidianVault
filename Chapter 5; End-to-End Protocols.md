- Message delivery guarantee, in the same order as they were sent. 
- Delivers at most one copy of each message. 
- Supports arbitrarily large messages
- Supports sync between sender and receiver
- Allows receiver to apply flow control to the sender
- Supports multiple application processes on each host

### Transport layer:

![[Pasted image 20241126111130.png#invert|center|500]]
### End-to-end addressing in TCP/IP

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

