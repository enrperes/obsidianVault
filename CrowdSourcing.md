 
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

---

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

---

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

---

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
> [!example]+  **Altri esempi** 
 > - **ImageNet** usa crowdsourcing per image labeling. Viene prima costruito un dataset di "etichette", poi il crowd viene usato per assegnarle alle immagini. 
 > - **ESP Game:** Usa gli utenti per identificare oggetti da immagini. Foldit similarmente usa gli utenti per identificare strutture delle proteine. 
 > - **reCAPTCHA:** "nasconde" le task dagli utenti, ma usa il crowdsourcing per addestrare un modello di digitalizzazione giornali. 
 

## Tipi di risposte

### Single choice
- sì/no 
- Positivo / Neutro / Negativo
### Multiple choice
Una o più risposte *fra alcune opzioni*
- *Scegliere* etichetta per un'immagine
- Categorie di un testo 
### Fill-in-the-blank
- Numerico
	- Peso della mucca
	- numero abitanti città 
- Testuale
	- mail di qualcuno
	- Proporre etichetta per un'immagine
### Collection
Raccolta di dati: 
- Top n giocatori di tennis in italia
- Traduzione di un brano...

## Real world tasks 
- Sentiment analysis (opinioni) $\Large \longrightarrow$ single choice
- Search Relevance (data una domanda, dire se un documento è pertinente) $\Large \longrightarrow$ Single choice
- Moderazione dei contenuti (immagini, siti web) $\Large \longrightarrow$ Single choice
- Raccolta dati (coordinate geo) $\Large \longrightarrow$ Collection
- Categorizzazione (attore vs cantante) $\Large \longrightarrow$ multiple choice
- Trascrizione di audio / immagini (digitalizzazione) $\Large \longrightarrow$ Fill-in-the-blank


## Progettazione Task - *Mturk*

### Notazione

`()` Radio button
`[]` Scelta multipla
`[InputBox]` input Text
`$VARIABLE$` Variabile

> [!question]+  **Es** 
 > How do you feel about `$TOPIC$`?
 > `()` Love it
 > `()` Hate it 
 

## Qualità 

**Scaletta:**
- Metodologiche
	- Design dei task
- In itinere
	- Qualification tests
		- Se un worker vuole svolgere il task deve prima superare dei test (espliciti)
		- Da piattaforma o interno al task 
	- Controlli sintattici
		- Parsing dell'input, scartando risposte non date o controllo plagio / copia incolla
	- Test nascosti
		- "gold questions", "honey pots", "gold nuggets"
		- Domande facili a cui si sa già la risposta
		- Confronto di cui si sa la risposta 
		- Domande ripetute dopo un po' per verificare coerenza
		- Se l qualità del lavoro è troppo bassa il worker viene scartato o pesato meno. 
	- Monitoraggio del comportamento
		- Tempo
			- Per leggere le istruzioni e completare il task 
			- Se troppo veloce o troppo lento $\Large \to$ scartato 
		- Azioni
			- Spostamenti del mouse, scrolling, ordine di inserimento dati 
- Ridondanza
- Ex-post
	- Pulizia dei dati 
	- Aggregazione sofisticata
	- Sfruttare l'accordo 


## Teoria della misurazione

*Stevens*, Scale di misurazione (1946) **N.O.I.R.**
1. **Nominal**
	1. Qualitativa. Assegna oggetti a categorie. 
	2. Gender, Nationality, color...
	3. Trasformazioni: $f(x)$ deve essere iniettiva. 
2. **Ordinal**
	1. La misura non è un ammontare ma un rank 
	2. Trasformazioni: $y=f(x)$ $\Large \to$ funzione monotona crescente che preserva l'ordinamento ($\Large \log$) 
3. **Interval**
	1. Intervalli (temperatura, date): non ha senso dire oggi fa il doppio più caldo di ieri.
	2. Si ragiona sugli intervalli, differenze: 
	3. Trasformazioni permesse: $y=f(x)$ dove $f(x) = ax+b$ = moltiplicazione per costante (a) + aggiunta di valore (b)
4. **Ratio**
	1. Scala rapporti.
	2. Indipendente dall'unità di misura (doppio di...)
	3. Valori discreti e continui
	4. Trasformazioni permesse: $y=f(x)$ dove $f(x) = a \cdot x$ 

![[Pasted image 20241210150334.png#invert|center|500]]

### Differenziale Semantico
Tipologia di sondaggio. 
![[Pasted image 20241216083800.png#invert|center|500]]
Per analizzare i dati: 
1. Media dei valori associati (1, 2, 3...) $\Large \to$ funziona, anche se è preferibile la mediana. 

Esempio di scala nominale a 6 categorie (*politifact*)
![[Pasted image 20241216085034.png#invert|center|500]]
Calcolando la moda: 
P, P, F $\Large \longrightarrow$ P
P, P, T $\Large \longrightarrow$ P 

Una soluzione può essere assegnare un valore ad ogni misura e calcolare la media. 
Il problema è quali valori assegnare: l'unico vincolo è che venga rispettato l'ordine. La distanza tra intervalli non è importante. (trasformazioni monotone permissibili)

#### Le etichette 
![[Pasted image 20241216090248.png#invert|center|500]]
Giocano un ruolo importante nell'influenzare chi vota.

## Aggregazione

![[Pasted image 20241216091601.png#invert|center|500]]

In molti casi la media geometrica è equivalente alla media aritmetica dei logaritmi 

![[Pasted image 20241216092048.png#invert|left|400]]
AM considera i due casi uguali. GM premia il caso *A*. $| \log(0.2) - \log(0.1)| > |\log(0.9) - \log(0.8)|$ 

GM è utile per i problemi "difficili": Appiattisce lo spazio sui valori più bassi. 
Miglioramenti vicino alla perfezione sono più difficili. 

### Media Armonica (HM)



[...] 


---


![[23.Q3-Accordo.pdf]] ^^ Fino pag ~34

