 
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


## Crowdsourcing - Definizione

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


## Tipi di task 

![[Pasted image 20241202114540.png#invert|center|500]]

![[Pasted image 20241202134031.png#invert|right|150]]
**CROWDSOURCING - Brabham** 
Ne propone 4: 
### Knowledge discovery and management
- Scoprire e organizzare le conoscenze già disponibili ma disorganizzate
- Simile a wikipedia con un organizzazione che sponsorizza

### Broadcast search
- Trovare uno specialista che svolga il compito, trovi la risposta e dia la soluzione. 
- Spesso al di fuori del settore --> mente fresca
Utile per problemi tecnico scientifici con soluzioni misurabili. 

### Peer-vetted creative production
- Il crowd produce e seleziona idee creative (contest design..)
Utile per problemi in cui la soluzione dipende dai gusti o dal mercato 

### Distributed Human Intelligence task
- Large Data processing divided into small tasks, requires human intelligence. 
(Mturk, reCAPTCHA)
Utile per analisi di dati su larga scala in cui intelligenza umana > computer 

![[Pasted image 20241202134140.png#invert|right|150]]
 **Crowdsourcing for Dummies - Grier** 
Propone una classificazione più articolata con 5 categorie: 

### Crowdcontest
Dare in outsourcing un compito, senza scomporlo.
Contest: si seleziona (e paga) la risposta migliore
Es: logo design

### Macrotasking
Dare in outsourcing a un consulete / libero professionista, pagato con tariffa oraria
es: creare app, tradurre capitoli

### Microtasking
Compito viene suddiviso in piccole parti poi unite
il "vero" CS

### Self-Organised crowds
Crowdcontest: richiesta di svolgimento di un lavoro, il crowd coopera invece di competere. 

### Crowdfunding
No lavoro, solo soldi (kickstarter, indiegogo..)

Classificazione finale in base al tipo di pagamento e di mercato:
![[Pasted image 20241202134754.png#invert|center|500]]
## Motivazioni & incentivi

### Estrinseche
- Se un compito è noioso, pericoloso, inutile....
- Serve una ricompensa estrinseca aggiuntiva al compito (€, fama...)
### Intrinseche
- Se l'attività può essere interessante o divertente la ricompensa è intrinseca
- GWAP (Game With A Purpose)

![[Pasted image 20241202141018.png#invert|center|500]]
