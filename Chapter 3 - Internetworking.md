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

