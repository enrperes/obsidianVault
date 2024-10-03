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
