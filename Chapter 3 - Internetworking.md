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

![[Pasted image 20241025112618.png#invert|left|450]]
![[Pasted image 20241025112640.png#invert|right|150]]
(forwarding table for switch 2)
