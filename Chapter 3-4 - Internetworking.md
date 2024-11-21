- Switching and Bridging
- basic internetworking (IP)
- Routing 

## Switching and Forwarding 
### Switch 
> Permette di interconnettere link in una grande rete. Multi input, multi output. 

Quando riceve un frame che è indirizzato ad un'altra parte della rete, lo inoltra (store-and-forward)
1. Receive a whole frame on a link
2. check it (CRC...): if invalid, drop it 
3. Using some internal table, choose which link to forward the frame to
4. Resend the frame to the chosen link

Secondo il modello OSI, dovrebbe essere implementato al livello 3 (Network), ma può essere implementato al livello 2 (datalink)

#### Star topology 

![[Pasted image 20241025110636.png#invert|right|400]]
A Switch has a fixed number of I/O. Larger networks can be built by interconnecting a number of Switches. The whole network will appear as a single LAN to each host. 
hosts can be connected by point-to-point links. These can be normal links on normal ports (*uplinks*) or tied together to appear as a single link (*trunking*). 
Stacked Switches act as a single one. They are connected via dedicated, proprietary high speed links. Different stars (set of stars) can be connected to **routers**, which are lvl 3 Switches.

- Ogni host ha un indirizzo univoco globale
	- livello 2: MAC 
	- livello 3: IP 
- Ci sono modi per identificare le porte I/O degli Switch. 
	- Numeri di porta
	- Nomi (dei nodi collegati alla porta)

- Ogni pacchetto contiene abbastanza info per permettere ad ogni Switch di determinare la destinazione. 
	- Ogni pacchetto contiene la destinazione completa
- Per stabilire come inoltrare un pacchetto, lo switch consulta la *tabella di forwarding*, con una colonna "destinazione" e una "porta". 

(forwarding table for switch 2)
![[Pasted image 20241025112618.png#invert|left|450]]
![[Pasted image 20241025112640.png#invert|right|150]]

.
### Connectionless
...

### Virtual Circuit (VC)
Anche chiamato Connection-oriented model: 
> Prima creare una connessione virtuale dall'host sender all'host destinazione e poi inviare i dati. 

![[Pasted image 20241105094338.png#invert|center|700]]
Es: Switch 1 ha 4 interfacce. Può ricevere e inviare pacchetti su ogni interfaccia. 
Se arriva un pacchetto su interfaccia 2, associato al VC 5 allora verrà spedito su interfaccia 1, vc = 11. 

#### PVC vs SVC
Permanent vs Switched by signaling. il primo è permanente e configurato dall'amministratore di rete. il secondo va in base ai pacchetti che arrivano. 

#### Vantaggi
- Sapere a priori le caratteristiche del canale: avere la conferma che esiste un percorso tra host e receiver, che è pronto a ricevere i dati. 
- + garanzie sulla latenza, + costo per configurare la rete. 

### Spanning Tree Algorithm 

## Internetworking
> Arbitrary collection of networks interconnected to provide host to host packet delivery service. 

![[Pasted image 20241107094743.png#invert|left|400]]
Esempio di (inter)network. 

A livello 3 si usano gli indirizzi IP 
![[Pasted image 20241107100139.png#invert|left|500]]
Host5 per comunicare con Host8 deve passare per i 3 Router, usando protocolli diversi (802.11, ETH, PPP)...
IP, al livello 3, ha il compito di passare da un protocollo all'altro. 

L'intestazione a livello 2 non ha come destinatario l'host finale, ma il salto successivo. 

### IPv4
![[Pasted image 20241107104226.png#invert|center|700]]
Intestazione pacchetto IPv4. 

[...] 

`ifconfig en0` su terminale per info sulla connessione, ip, mtu...

**MTU** = maximum Transmission Unit: depends on the technology. 
Transport level doesn't know about MTU: can cause problems if the path from sender to destination crosses a link with a smaller MTU. 


## Global Addresses
- Globally unique: 
	- Host can have many addresses, but an address cannot be assigned to more than one host. 
	- First part: network, assigned uniquely to a single entity. 
	- Second part: host within the network.
#### 3 + 1  CLASSES: 
- Class **A**: addresses beginning with `0`. Next 7 bits are network number. Remaining 24 bits are host number within the network. 
	- Primo byte inizia per: 0 ~ 127
	- $\Large 2^{7}$ reti, $\Large 2^{24}$ indirizzi ciascuna
- Class **B**: begins with `10`, next 14 bits are network number, remaining 16 are host number 
	- 128 ~ 191
	- $\Large 2^{14}$ reti, $\Large2^{16}$ indirizzi ciascuna
- Class **C**: begins with `110`, next 21 bits are network number, remaining 8 bits are host number 
	- 192 ~ 223
	- $\Large2^{21}$ reti, $\Large2^{8}$ indirizzi
- Class **D**: begins with `111`, not used for host addressing but for multicast. Class E is unused. 
	- 224+ 

Numero totale di indirizzi possibili: $\huge 3.75\times 10^{9}$ (non bastano)
#### Indirizzi speciali (2)
- Tutti `0` nella parte dell'host: `158.110.0.0` --> rappresenta semplicemente la rete
- Tutti `1` nella parte host: 158.110.255.255 --> broadcast within the network

### IP Datagram Forwarding
Unlike level 2 switches, cannot use destination addresses: tables would take too much memory, order or $10^{9}$ ...
Instead, forwarding is by *destination network* where the destination address belongs to.
The forwarding table maps network number into next  hop. 

### Subnetting

![[Pasted image 20241108102749.png#invert|left|300]]
Class A and B networks can be too large for a single physical network, so we add another level to address / routing hierarchy: **subnet**.
Subnet **mask** define variable partition of host part of class A and B addresses, according to physical nets. 
Subnet are only visible within the network. (AS)
ES: network `158.110.1.0` allows addresses from `158.110.1.1` to `158.110.1.254`. Broadcast is now `158.110.1.255`. 

Notazione per la netmask:
`192.168.0.0/16 = 255.255.0.0` --> primi 16 bit sono `1`, i rimanenti sono `0`. (=CIDR)

Esercizio: 
rete`192.168.0.0/16`, si vogliono definire tre sottoreti contigue, a partire dall'indirizo 192.168.0.0. 
Le tre sottoreti devono essere le più piccole necessarie per contenere rispettivamente 50, 60, 70 indirizzi. Si diano gli indirizzi di tali sottoreti, completi di CIDR

| Network | Indirizzi | Bit necessari | IP range                        | CIDR               |
| ------- | --------- | ------------- | ------------------------------- | ------------------ |
| N1      | 50        | 6             | `192.168.0.1 ~ 192.168.0.62`    | `192.168.0.0/26`   |
| N2      | 60        | 6             | `192.168.0.65 ~ 192.168.0.126`  | `192.168.0.64/26`  |
| N3      | 70        | 7             | `192.168.0.129 ~ 192.168.0.254` | `192.168.0.128/25` |
|         |           |               |                                 |                    |

#### Classless Inter-Domain Routing

 
## Host Configuration
Indirizzi IP devono essere unici in ogni rete e devono rispecchiare la struttura della rete stessa. 
è possibile assegnarli manualmente, ma: 1) tanto lavoro manuale per reti grandi. 2) facile commettere errori. 

Processo automatico: 
### Dynamic Host Configuration Protocol (DHCP)

> Responsible for providing configuration info to hosts. 

il server DHCP mantiene una pool con gli indirizzi IP disponibili, che verranno assegnati agli host.
Due metodi di assegnazione: 
- Statically (based on MAC)
- Dynamically (time-limited "leases")
![[Pasted image 20241115095424.png#invert|left|500]]
1. Newly booted host sends `DHCPDISCOVER` message (to broadcast). Ignored by routers. The source IP is irrelevant, could be all 0s. could also include MAC address. 
2. DHCP Servers'a answer contains the offered IP address for the host. This is also broadcasted or delivered using its MAC. 
3. The client asks the server for confirmation 
4. If confirmed, the DHCP client sets the local IP address, gateway, DNS...

A DHCP Server can serve multiple networks at once, even remotely. DHCP relay agent needed for each network in order to listen for DHCP requests. 

## Private IP Networks and NAT

Typical private IP ranges: 
![[Pasted image 20241115101024.png#invert|left|500]]
**NAT** (Network Address Translation) allows hosts on a private network to communicate with the internet. Connectivity is not seamless 

![[Pasted image 20241115101505.png#invert|center|400]]

> [!done]+ Vantaggi NAT
> Un vantaggio del NAT è che permette a un indirizzo IP pubblico di essere usato da più indirizzi IP privati. 
> Facilita la migrazione tra ISP. Solo l'IP pubblico del router cambia. 
> Load Balancing: inoltra il traffico da un singolo IP pubblico a diversi host privati. 

#### Natural FIREWALL

Le porte del router NAT vanno esplicitamente configurate per accettare pacchetti dall'esterno, altrimenti bloccano tutte le richieste di collegamento.

#### Hole punching 
Problema: come permettere la connessione tra due NAT che si bloccano a vicenda?
Soluzione: STUN, TURN

**STUN**: Session Traversal Utilities for NAT
Il client con IP privato usa un servizio di terze parti per scoprire il suo indirizzo IP pubblico.
Problema: spesso i NAT Sono annidati, quindi l'indirizzo ricevuto dal provider STUN è sempre un indirizzo privato. 

**TURN**: Traversal Using Relays around NAT

Router NAT apre una porta. Con STUN scopre l'IP pubblico associato. Con TURN 

## Routing

> [!example]+  **Forwarding** 
 > - To select an output port for each packet, based on destination address and forwarding table. 
 > - Must be simple and fast
 > - Can be implemented in Hardware
 > 
 > Forwarding table: 
 > - used when a packet is being forwarder and must contain enough information to accomplish the forwarding function
 > - Each row in the f.t. contains the mapping from a network number to an outgoing interface and some MAC information (ETH address of the next hop)
 
> [!example]+  **Routing** 
 > - Process by which routing table is built
 > - Routing table = precursor of forwarding table
 > - Process run in the background
 > - Can be complex
 > 
 > Routing Table
 > - Built by the routing algorithm as a precursor to build the forwarding table. 
 > - Generally contains mapping from network numbers to next hops
 

Per una semplice rete si calcolano gli shortest paths e si salvano in ogni nodo. Problemi: non resistente a problemi o aggiunte di nodi e non è possibile aggiornare le distanze dei percorsi nel tempo. 

Soluzione: protocollo distribuito e dinamico per costruire tabelle di routing in ogni nodo. 
Tre classi principali di protocolli:
- **Distance Vector** (protocolli come RIP)
- **Link State** (OSPF and IS-IS)
	- **Path Vector** (BGP)

### Distance Vector
Assunzione: non serve conoscere la rete, ma ogni nodo conosce la distanza del link ai suoi vicini diretti. 
Ogni nodo costruisce un array con i costi a tutti i suoi vicini e distribuisce questo vettore ai suoi vicini. 

Routing table iniziale:
![[Pasted image 20241119094504.png#invert|center|700]]
Routing table finale: 
![[Pasted image 20241119095642.png#invert|center|700]]

#### Procedimento

Bellman-Ford algorithm: 

Ogni T secondo ogni router invia il suo vettore ai suoi vicini. 
Quando un router riceve il vettore, aggiorna la sua tabella con le nuove informazioni: 
- Per ogni entry, se c'è una strata migliore di quella corrente, viene aggiornata
- Se la strada migliore passa comunque per il router vicino, il costo viene aggiornato. 


Non deterministico: Ad es. da B a G può stabilizzarsi il percorso per A in un verso e per C nell'altro verso. 

Split horizon technique to improve time to stabilize routing 


### Link State Routing 
Approccio diverso: ogni nodo ha una visione completa e possibilmente aggiornata (non è detto) di tutti i collegamenti della rete (grafo).
Avendo il grafo completo in memoria si possono usare gli algoritmi di ricerca del path minore per costruire l'albero di copertura minimo.

### Shortest Path Routing


[...] 

### Open Shortest Path First (OSPF)

Priorità: QoS (Quality of Service). Alcuni router distinguono automaticamente il tipo di contenuto da trasmettere e instradano su percorsi con maggiore throughput ad es per file grandi, con latenza minore per altri dati. 
wn
[...] 


# Advanced Internetworking - 4

## Border Gateway Protocol  (BGP)
Assumes that: 
> internet is an arbitrarily interconnected set of AS. Today's internet = interconnection of multiple backbone networks. 

Traffico BGP è globale --> alta responsabilità 

Local Traffic = originates at or terminates on nodes within an AS. 
Transit Traffic = passes through an AS. 

AS can be classified into: 
- Stub AS: Ha solo una connessione in entrata e uscita. 
- Multihomed AS: Collegato a più di un AS ma non fa da provider.
- Transit AS:  collegato a più di un AS e permette il collegamento tra AS


#### BGP Speakers 
Ogni AS ne ha almeno uno. Annuncia ai suoi peers: 
- Local networks
- Altre reti raggiungibili tramite **transit AS**.
- Path information 

#### Border gateways
not the same as the speakers. Are the routers through which packets enter and leave the AS. 

![[Pasted image 20241121105830.png#invert|center|500]]
iBGP = Internal BGP, usato tra router dello stesso AS; eBGP = external BGP, tra router di AS diversi. 

BGP uses a different protocol than distance vectors or link state protocols. It stores (advertises) complete paths as an enumerated list of ASs to reach a particular network. 

ES: 
```
 7.7.0.0/16   300 100 700 
```
è il path per arrivare all'AS 700 con rete `7.7.0.0/16` passando per gli AS 300 e 100. 

#### BGP loop prevention and polity routing 
path ignored by BGP if: 
- its AS appears in it (avoids loops)
- it violates some policy of the AS 

