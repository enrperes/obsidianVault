---
tags:
  - materia
---
[[info - Ingegneria del software]]

---
##  Software
> Termine che indica l'insieme dei programmi per computer e la relativa documentazione. Non solo programmi ma anche documentazione (modelli di progetto, manuali...)

> Insieme di programmi, procedure, regole, e ogni altra documentazione relativa al funzionamento di un sistema di elaborazione dati

> [!attention]  **Software Generico** 
 > Prodotto autonomamente da un'organizzazione per incontrare le necessità di vari clienti 
 > il produttore ha il controllo sulle specifiche del software
 
 > [!attention]  **Software su richiesta** 
 > sviluppato da un'organizzazione su commissione di uno specifico cliente 
 > Il produttore deve attenersi alle specifiche indicate dal cliente
 
> [!attention]  **Software personalizzabile e/o configurabile** 
 > Sistema generico che può essere adattato alle richieste di un particolare cliente 
 > Esempio: SAP è un ERP (Enterprise resource Planning), sistema generico utile a più aziende. 

## Qualità del Software
- Accettabilità
	- Deve essere accettato dagli utenti. Comprensibile, usabile e compatibile con i sistemi usati
- Fidatezza e protezione
	- Non deve causare danni fisici o economici in caso di malfunzionamento. 
- Efficienza
	- Non deve sprecare risorse del sistema
- Mantenibilità 
	- Deve poter evolvere per soddisfare le nuove richieste dei clienti 

---
03/10/2024 13:38

## Processo Software
> Insieme di attività che porta alla creazione o evoluzione di un prodotto software
> - Acquisizione, analisi e specifica dei requisiti
> 	- Funzionalità e vincoli operativi definiti da cliente e ingegneri
> - Progettazione e sviluppo
> 	- Progettazione e programmazione ()
> - Verifica e validazione
> 	- Si verifica che il software sia come il cliente richiede
> - Evoluzione
> 	- Software modificato per soddisfare cambiamenti nei requisiti


### Metodi e strumenti 
- **Metodi**
	- Approcci strutturati per sviluppare software, rispettando tempi di consegna e costi
	- Forniscono una guida alle attività dei processi e all'organizzazione
- **Strumenti**
	- Sistemi software usati per aiutare le attività dei processi sw
	- (Analisi, modellazione, debugging, testing)

### Obiettivi di produzione
- **Diversità**
	- Produrre sw eseguibile su piattaforme e dispositivi diversi
- **Consegna**
	- Consentire la consegna in tempi rapidi, rispondendo velocemente ai cambiamenti tecnologici
- **Fiducia**
	- Garantire la privacy delle informazioni 
- **Scala**
	- Sw distribuito su larga scala

## Processo Software: Definizione
> Insieme strutturato di attività tecniche, collaborative e manageriali che porta alla creazione (o evoluzione) di un prodotto software. 

#### No Free Lunch: 
Non esiste un processo software applicabile universalmente

# Attività dei processi software 

4+1 Attività fondamentali dei processi software: 
1. Acquisizione, analisi e specifica dei requisiti 
2. Progettazione e sviluppo 
3. Verifica e validazione
4. Evoluzione
1. Studio di fattibilità
	- Stabilisce se lo sviluppo debba essere avviato
		- Se esiste un mercato per il software
		- Se il software è tecnicamente e economicamente realistico 
	- Fornisce un report di fattibilità: 
		- Definizione del problema
		- Valutazione costi/benefici
		- Risorse finanziarie e umane
		- Soluzioni alternative
		- Tempi di consegna e modalità di sviluppo

## Acquisizione, analisi e specifica dei requisiti 
> Specificare **cosa** il software dovrà fare (non come) e le funzionalità e qualità che deve possedere. 
> Definisce funzioni, vincoli, prestazioni, interfacce che il sistema deve soddisfare. 

1. **Deduzione e analisi dei requisiti**: comprensione di cosa richiedono o si aspettano dal software gli stakeholders. 
	1. Richiede spirito critico. Include osservazione di sistemi già esistenti e discussione con possibili utenti
	2. Durante l'analisi viene sviluppato un prototipo di modello 
2. **Specifica dei requisiti**: Traduzione delle info acquisite in specifiche che descrivono più in dettaglio i requisiti
	3. Requisiti di sistema: descrizione dettagliata delle funzioni  caratteristiche fornite (per i dev)
	4. Requisiti **utente**: proposizioni astratte dei requisiti per i clienti e utenti finali
3. **Convalida dei requisiti**: verifica che i requisiti siano realistici, coerenti e completi. 
![[Pasted image 20241003143032.png#invert|500]]
## Progettazione e sviluppo software

### Progettazione
> Progettare una struttura del software che realizzi le specifiche 

Le attività della fase di progettazione sono intrecciate. Non si ottiene immediatamente un risultato completo, si sviluppa in varie fasi aggiungendo gradualmente dettagli 

![[Pasted image 20241003144728.png#invert|500]]

L'output della progettazione è un progetto del software che descrive: 
- La struttura del software che si deve implementare
- I modelli e le strutture di dati usati dal sistema
- Le interfacce tra i componenti del sistema

### Sviluppo
https://www.12types.dev/quiz

La programmazione è un'attività dipendente dalle caratteristiche dei singoli programmatori, non ci sono processi rigidi da seguire
L'attività può essere soggetta a standard aziendali e convenzioni condivise

##  Verifica e Validazione
> Mostrare che un sistema è conforme alle sue specifiche. 

1. Test dei componenti 
	1. Componente = unità fondamentale del software
	2. Ciascun componente viene testato indipendentemente.
2. Test del sistema
	1. Testa il sistema completo. Malfunzionamenti possono essere causati da interazioni impreviste tra componenti
	2. Verifica la conformità ai requisiti del sistema
3. Test del cliente
	1. Il sistema viene testato con i dati **reali** di un cliente. 
	2. = Beta testing per alcuni utenti selezionati 
4. Testing iterativo 
	1. La fase di testing è iterativa perché i difetti scoperti possono portare la ripetizione di altri stadi del processo di test

##  Evoluzione
> Sempre meno sistemi software sono totalmente nuovi. Sistemi esistenti sono continuamente riusati / evoluti / mantenuti 

è la fase più lunga nel ciclo di vita del software. 
- Correggere difetti non rilevati prima
- migliorare la qualità del software (prestazioni)
- Adattare il software a cambiamenti del Sistema Operativo

# Modelli di processi software 
![[Pasted image 20241007110002.png#invert|500]]

> Un modello del ciclo di vita del software è una caratterizzazione descrittiva o prescrittiva di come un sistema software viene o dovrebbe essere sviluppato. 

> software Life Cycle:  a framework containing the process, activities and tasks in the development, operation and maintenance of a software product, spanning the life of the system from the definition of its requirements to the termination of its use. 

### Descrizione di processi
- Architetturale
	- Descrive la sequenza di attività senza fornire dettagli sulle specifiche attività (★)
- Data-Flow
	- Evidenzia le trasformazioni dei dati operate dalle attività del processo
- Role/Action
	- I ruoli delle persone coinvolte nel processo e le relative responsabilità 
La descrizione deve includere
- Attività 
- Prodotto 
- Ruoli 
- Pre / Post condizioni

## Modelli Plan-Driven
### Modelli a cascata
 ![[Pasted image 20241007110148.png#invert|500]]
 Ciascuna fase segue quella successiva
 Bisogna pianificare tutte le attività di processo prima di iniziare lo sviluppo software
 Gli **output** di una fase sono gli **input** della fase successiva
 Le fasi riflettono direttamente le attività di sviluppo fondamentali del software. 

$\color{orange}\large\text{Document Centric}$: guidato dalla produzione di documentazione
$\color{orange}\large\text{Rigido}$: I prodotti di una fase non sono più modificabili se non con processi formali e sistematici di modifica. 
La fine di ogni fase è una milestone.
$\color{orange}\large\text{Monolitico:}$ Il cliente vede il software solo al completamento di tutte le fasi. Un errore nei requisiti viene rilevato solo alla fine, dopo il rilascio --> costi elevati 

> [!done]  **Vantaggi** 
 > Fasi ben definite
 > Output di ciascuna fase sono precisamente individuati 

> [!fail]  **Svantaggi** 
 > Richiede conoscenza immediata e stabilità dei requisiti. Difficile avere requisiti congelati dall'inizio del progetto. Spesso poco chiari anche al cliente. 
 > Sviluppo di eccessiva documentazione non richiesta
 > Poco flessibile, difficile gestire necessità di modifiche che emergono durante l'esecuzione (nuove richieste)
 > 

Estensione del modello: $\color{orange}\large\text{Modello a V}$ 
### Modelli evolutivi
Adatti a contesti in cui i requisiti **non** sono chiari fin dall'inizio. 
Due modelli fondamentali: 

- Modello prototipale
	- Finalizzato a comprendere i requisiti del sistema. Si parte da requisiti poco chiari e si realizzano prototipi per esplorare i requisiti e chiarirli. 

#### Modello a sviluppo/consegna incrementale
> Lavorare con il cliente per esaminare i requisiti iniziali e farli evolvere fino al sistema finale

![[Pasted image 20241007114218.png#invert|400]]

##### Modello a consegna incrementale
Sistema non consegnato direttamente nella sua forma finale. Alcuni degli incrementi sono consegnati ai clienti e installati nel loro ambiente operativo
Vantaggio: il cliente usa l'incremento nell'ambiente operativo reale, feedback più realistico 
Svantaggio: Gli utenti / clienti devono avere tempo sufficiente per sperimentare ciascun incremento. 

![[Pasted image 20241007114904.png#invert|450]]


| Sviluppo incrementale                                                                                                                                                                                        | Consegna incrementale                                                                                                                                                                                    |
| :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Valutazione della prima versione effettuata da <br>un proxy degli utenti finali in un ambiente operativo <br>diverso da quello target. Le versioni intermedie <br>non sono solitamente rilasciate al cliente | Permette una valutazione più realistica e <br>rappresentativa dell'utilizzo reale del software. <br>Ciascun incremento può essere rilasciato agli utenti finali nell'ambiente <br>operativo del sistema. |



#### Modello prototipale
>Finalizzato a comprendere i requisiti del sistema. Si parte da requisiti poco chiari e si realizzano prototipi per esplorare i requisiti e chiarirli. 

Il prototipo è usa e getta, deve essere scartato dopo la sua validazione. Non è una buona base per sviluppare il sistema finale. 
Le funzionalità richieste hanno la priorità su prestazioni e documentazione completa. 


La prototipazione può essere combinata con altri cicli di vita classici. Ad esempio durante la fase di progettazione in un modello a cascata, la prototipazione può essere usata per valutare opzioni alternative nella progettazione. 
### Modelli orientati al riuso 
### Modelli trasformazionali 
## Modelli Agili

