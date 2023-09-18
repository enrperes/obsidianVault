---
tags:
  - uniud
---


# [[Blockchain]]

1. Intro
2. Blockchain architecture
3. Smart contracts
4. Blockchain components
5. How it works
6. Advantages, characteristics, limitations
7. Classification
8. Use cases

## Introduction

> **Blockchain** is a peer-to-peer, distributed ledger that is cryptographically secure, append only, immutable, and updateable via agreement among peers. 

> Una **Blockchain** è una struttura dati **decentralizzata** e distribuita che consente di registrare e condividere transazioni in modo sicuro e trasparente, attraverso una rete di *peer*. 
> Quindi è un registro digitale, condiviso, pubblico che contiene un registro delle transazioni in modo crittografato. Questo la rende immutabile e resistente alla manipolazione. 

- Decentralizzazione
	- è distribuita tra nodi (*peer*), non esiste un'autorità che la controlla. 
- Trasparenza
	- tutte le transazioni registrate sono visibili a tutti. Aiuta a prevenire attività fraudolente
- Sicurezza
	- Tutti i dati sono crittografati. Ogni blocco (registro) contiene un riferimento al blocco precedente, rendendo quasi impossibile alterare i dati. 
- Consenso
	- I partecipanti della rete devono accordarsi sulla validità delle transazioni e sulla registrazione dei nuovi blocchi. 

## Blockchain architecture

1. Applications
	- Smart contracts, DAOs, dApps. Dove avviene l'interazione tra utenti e blockchain. 
2. Execution
	- Virtual machines, bocks, transactions. Applica funzioni come trasferimenti, creazione di blocchi...
3. Consensus
	- Assicura il consenso mutuo tra i diversi membri della blockchain
4. Cryptography
	- Contiene protocolli di crittografia 
5. P2P
	- Peer to peer network 
6. Network
	- Internet, base di comunicazione 

## Smart contracts
> Accordi autonomi e auto-eseguibili, pubblici e trasparenti.
> Sono programmi che eseguono codice quando si verificano certe condizioni: 

- Automation
- Trustless
- Security
- Cost-Effective
- Interoperability

## Blockchain components 

- **Address**
	- Identificatori unici usati nella blockchain per indicare sender e receiver. 
- **Transaction**
	- Unità fondamentale della blockchain. Transazione = trasferimento di valore da un indirizzo a un altro 

### Hash Functions
Un hash è un valore ottenuto da una funzione di hash, ovvero una procedura che trasforma dati in una sequenza di caratteri di lunghezza fissa. 
- Determinismo: Lo stesso input produrrà lo stesso output. 
- Lunghezza fissa
- Un cambiamento anche piccolo nell'input produce un hash completamente diverso
- Da un hash è praticamente impossibile risalire all'input originale

#### Public & Private keys
Il mittente firma la transazione con la chiave privata. Il destinatario usa la chiave pubblica del mittente per verificare la firma. Se è verificato, la transazione viene aggiunta alla blockchain. 

### Crypto Wallet
> tool che permette di interagire con la rete blockchain

- **Software wallets**
	- Browser interface
	- more risk: private keys are managed by third parties
- **Hardware wallets**
	- dispositivi fisici per conservare le chiavi private offline 
- **Paper wallets**
	- pezzo di carta con l'indirizzo e chiave privata. 

### Proof of Work (PoW)

Algoritmo usato nella blockchain per validare le transazioni e creare nuovi blocchi. Sono richiesti **miners** che risolvono funzioni hash per validare le transizioni e aggiungerle alla blockchain. 


## Blocks

![[Pasted image 20230910180521.png|500]]

- **Nonce** = unique number generated and used only once. 
- **Timestamp** = creation time of the block
- **Merkle root** = [...]


### Blockchain PROS
- Decentralization
	- no need for trusted third party to validate transactions. 
- Transparency and trust
	- Everyone can see what is on the B. so Trust is established. 
- Immutability
	- once data is on the blockchain, it's hard to change it back. 
- High availability
	- The system is based on thousands of nodes in a P2P network. Each node has a replica of the data. Even if some nodes become offline, the network continues to work 
- Security
	- Advanced cryptographic algorithms 
- Simplified
	- Multiple entities maintain their own database -> data sharing can be difficult. The blockchain is one single shared register. 
- Fast
	- quick trades
- Cost efficient
	- no third party gains money. 

### Blockchain CONS
- Scalability
- Adoption
	- Perceived as an emerging tech and not user friendly
- Regulation
	- no sense of security as no one regulates
- Privacy
	- Public blockchain (Bitcoins) allow anyone to view transactions. Undesirable for many industries. 

## Blockchain trilemma

Can't have these three together: 
- **Decentralization**
	- PRO
		- Open to everyone
		- You own the data 
	- CONS
		- Reaching *consensus* takes time and limits TPS (Transactions per second). 
- **Scalability**
	- PRO
		- Cryptgraphy-protected data cannot be compromised 
	- CONS
		- Energy /  work intensive, low TPS
		- Fewer validations with more efficient consensus make the network more vulnerable
- **Security**
	- PRO
		- More TPS, allowing increase in adoption
	- CONS
		- Less nodes would mean weaker blockchain security

---

# Decentralized Autonomous Organization [[DAO]]

> Forma di organizzazione basata su **blockchain** che opera in modo autonomo senza bisogno di un'organizzazione centralizzata. 

- PRO
	- Easy access
	- Speed
	- Smart contracts 
- CONS
	- Legal uncertainty
	- Security vulnerabilities 

le **DAO** sono un quindi un modo innovativo per gestire organizzazione decentralizzate autonome. 

# DeFi
> Blockchain based decentralized applications (Dapps) for **financial** services. 

### Decentralized finance vs centralized finance

CeFI:
![[Pasted image 20230911125110.png]]
DeFi:
![[Pasted image 20230911125140.png|500]]

I pagamenti possono essere ricevuti in pochi secondi, invece di giorni. Non ci sono banche intermediarie quindi non ci sono costi. 
Il sistema è operabile 24/7, basta che la rete blockchain sia online. 

Alcuni esempi: 
- Ethereum
- Solana

 ![[Pasted image 20230911161347.png|500]]

### DeFi components

- **Transactions and smart contracts**
	- Elementi alla base delle operazioni DeFi
- **Keepers**
	- External Owned Accounts (EOAs), account o bot che ricevono ricompense per incentivare attività DeFi e svolgere task
- **Tokens**
	- Forma digitale di una rappresentazione di un asset o di un valore du una blockchain. 
- **Custody**
- **Incentive**
	- Can be negative or positive rewards 
- **Oracle**
	- Importa dati esterni del mondo reale nella blockchain, ad esempio per avere info in tempo reale. 
- **Governance**
	- Often [[Santoro#Decentralized Autonomous Organization|DAOs]]. 
- **Bridge**
	- Connessione attraverso due reti blockchain diverse. Servono a garantire interoperabilità attraverso DeFi diverse. 

## DEX
> Decentralized Cryptocurrency Exchange in a Blockchain 

- Direct P2P Crypto exchange 
- Transparency
- No need for centralized custody of assets, unlike CEX

In caso un Dex venga compromesso non c'è nessuna tutela per i clienti. 

### Yield Farming

> Metodo per generare passive income tramite interessi e ricompense. 

## Benefits of DeFi
- **Reduction in risk**
- **Decentralized**
- **Open and inclusive**
	- Non ci sono limiti minimi di capitale. 
- **Transparent**
- **Interoperable**
- **Self-Custodial**
- **Low cost**
- **Programmability**
	- Smart contracts allow automation

Il futuro della finanza dovrebbe vedere cooperare DeFi e CeFi. 

---

# NFT

> Non Fungible Tokens

Ovvero tokens non "copiabili", che non possono essere sostituiti da altro. Una criptovaluta può essere scambiata con un'altra, ma un NFT è unico. 
Ogni NFT contiene i dati del creatore originale e dell'acquirente, quindi è facile risalire alle sue origini. Creare NFT contraffatti è pertanto impossibile. 

Il valore degli NFT deriva dalla loro scarsa quantità. 

### Indestructability 
Gli NFT sono salvati nella blockchain con gli smart contracts, quindi contengono un riferimento al blocco precedente, rendendoli immuni a modifiche o eliminazioni. 

### Ethereum 
> Multi Token Network 

A differenza di Bitcoin, ha la capacità di creare altri token diversi. (ERC-721, ERC-1155...)
**ERC-721** è lo standard più usato per NFT nella rete Ethereum

NFT are not stored on the Blockchain: a reference link is. 

## PROS
- assicurano la proprietà dei lavori, evitando plagio 
- Offre un controllo assoluto ai content creators
## CONS
- Il loro valore è speculativo, volatile e non prevedibile
- Investitori poco esperti potrebbero rischiare di fare investimenti sbagliati
