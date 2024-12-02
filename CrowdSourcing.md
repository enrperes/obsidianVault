 
### Tesi di Surowiecki 
> A volte decisioni prese da una folla / gruppo sono più corrette di quelle di singoli esperti

> [!example]+  **The Widsom of Crowds** 
 > - Fiera di bestiame
 > - Indovinare il peso di un bue
 > - Stime individuali con premio per la stima migliore
 > - Fatto interessante: la media delle stime era quasi corretta e più vicina al valore esatto delle stime di morti esperti. 
 
Non sempre funziona:
9/11: c'erano tutte le info, ma sparse.

###  Elementi necessari affinché **funzioni**: 

- Diversità di opinioni
	- Ognuno dovrebbe avere le proprie info private (o comunque interpretazione originale dei fatti)
- Indipendenza
	- Le opinioni personali non sono determinate dalle opinioni degli altri (no *herd behavior*, cascade)
- Decentralizzazione
	- Le persone sono capaci di specializzare e basarsi su conoscenze locali 
- Aggregazione
	- Esiste un modo per trasformare giudizi privati in una decisione collettiva

> [!tip]+  **Wisdom of Crowds --->  Crowdsourcing** 

### Motivi per cui non sempre funziona: 

- Omogeneità 
	- Ci deve essere diversità in una folla, per avere abbastanza varietà di approcci, processi di ragionamento e informazioni private
- Centralizzazione
	- Gestione gerarchica / burocratica delle informazioni può ostacolare
- Divisione
	- Quando le informazioni sono separate e non accessibili dalle altre
- Imitazione
	- Quando le scelte sono visibili si forma un *information cascade* in cui solo le prime vengono fatte in modo genuino, poi si tende a copiare. 
- Emotività 


## Crowdsourcing

> Social Media + Crowdsourcing = Social computing

Termine coniato da Howe, 2006. Crowd + Outsourcing: un compito, tipicamente svolto da pochi esperti, viene dato in *outsourcing* alla folla. 

> [!abstract]+  **Definizione** 
 > The practice of obtaining needed services, ideas, or content by soliciting contributions from a large group of people and especially from the online community rather than from traditional employees or suppliers. 
 

### Human computation
Processo computazionale che dà in outsourcing alcuni compiti a gruppi di umani. 

Es: ESP game: 
- 2 giocatori vedono la stessa immagine e devono trovare due termini che meglio descrivono l'immagine
- I termini vengono usati per etichettare l'immagine. 
- **Image labeling**

ReCAPTCHA: 
- Include due stringhe: la prima è nota dal sistema, la seconda no. Usato come training. 

### Amazon Mechanical Turk 
https://www.mturk.com/get-started

- Requester: chi commissiona il lavoro
- Worker: Utente che vuole svolgere il lavoro 
- HIT: Human Intelligence Task: unità di lavoro da svolgere
- Batch: insieme di HIT caricato da un requester. 
- Turk: deriva da un antico strumento che giocava a scacchi, ma in realtà era pilotato da un umano. 

Esempi di HIT: 
- Etichettatura immagini
- Valutazione motori di ricerca 
- Estrazione dati da immagini 
- Valutazione similitudine di immagini

Paga: pochi centesimi, Mturk trattiene il 20%)

#### RisultatI: 
![[Pasted image 20241202112752.png#invert|left|200]]
Matrice Worker / Task. Ogni colonna rappresenta una HIT. Non tutti i worker fanno tutti i task, non tutti i task sono fatti da tutti i worker. 


I 4 principi di Surowiecki vengono rispettati: 
- Diveristà di opinioni
- Indipendenza
- Decentralizzazione
- Aggregazione

La progettazione del task spesso non è banale --> framework 

#### Critiche: 
- Attività amatoriale invece che esperti $\Large \longrightarrow$ bassa qualità 
- Difficile verificare che il lavoro svolto dai worker sia di buona qualità 

![[Pasted image 20241202113216.png]]