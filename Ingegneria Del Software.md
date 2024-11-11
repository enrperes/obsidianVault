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

1. **Deduzione e analisi dei requisiti**: comprensione di cosa richiedono o si aspettano dal software gli [[stakeholders]]. 
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
Adatto solo se i requisiti sono ben chiari fin dall'inizio ed è difficile che cambino durante lo sviluppo. Ciascuna fase segue quella successiva. Bisogna pianificare tutte le attività di processo prima di iniziare lo sviluppo software. 
Gli output di una fase sono gli input della fase successiva. 
Le fasi riflettono in modo diretto le attività di sviluppo fondamentali del software. 
 
 ![[Pasted image 20241007110148.png#invert|500]]


$\color{orange}\large\text{Document Centric}$: guidato dalla produzione di documentazione
$\color{orange}\large\text{Rigido}$: I prodotti di una fase non sono più modificabili se non con processi formali e sistematici di modifica. 
La fine di ogni fase è una milestone.
$\color{orange}\large\text{Monolitico:}$ Il cliente vede il software solo al completamento di tutte le fasi. Un errore nei requisiti viene rilevato solo alla fine, dopo il rilascio --> costi elevati 

> [!done]  **Vantaggi** 
 > Fasi ben definite
 > Output di ciascuna fase sono precisamente individuati 
 > Documentazione ben dettagliata per sistemi critici o grossi sistemi sviluppati da più società

> [!fail]  **Svantaggi** 
 > Richiede conoscenza immediata e stabilità dei requisiti. Difficile avere requisiti congelati dall'inizio del progetto. Spesso poco chiari anche al cliente. 
 > Sviluppo di eccessiva documentazione non richiesta
 > Poco flessibile, difficile gestire necessità di modifiche che emergono durante l'esecuzione (nuove richieste)
 > Non adatto quando i requisiti cambiano velocemente o in piccoli team con comunicazione informale 
 > 

#### Estensione del modello: V
Il progetto si divide in due rami collegati (sup e inf).
In ogni fase del progetto il team definisce il corrispondente piano di test della fase di V&V
![[Pasted image 20241007154642.png#invert|450]]

Un esempio di modello a V in ambito automotive: 
![[Pasted image 20241007154741.png#invert|450]]

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

# Modelli Agili

> [!fail]  **Problema** 
 > Molti progetti hanno requisiti non chiari, instabili, variabili
 > Numerose prescrizioni, eccessiva documentazione, eccessiva rigidità, rendono "pesante" il processo di sviluppo plan-driven.
 > è richiesto un approccio più flessibile. 
 > I modelli plan-driven si adattano poco al contesto dinamico e alla rapidità di consegna. 
 
## Sviluppo rapido del software
il software:
- deve evolvere rapidamente per riflettere i cambiamenti nelle necessità dei committenti e utenti finali. 
- deve essere consegnato presto per essere competitivo sul mercato. 

> [!tip]  **Rapidità** 
 > La rapidità dello sviluppo e consegna è spesso il requisito più critico per i sistemi software. 
 
 Alla fine degli anni 90 sono emersi i metodi agili per lo sviluppo software. Obiettivo = ridurre il tempo di consegna del prodotto. 

> [!quote]  **Agilemanifesto.org** 
 > Individuals and interactions over processes and tools
 > Working software over comprehensive documentation
 > Customer collaboration over contract negotiation
 > Responding to change over following a plan.
 
 
## Caratteristiche principali dei metodi agili

1. Documentazione minima
	- focus sul codice invece che progettazione
	- Non vi sono specifiche dettagliate
	- Overhead di documentazione limitati 
2. Consegna rapida e incrementale
	- Sistema sviluppato in incrementi frequenti
	- Stakeholder coinvolti nella specifica e valutazione di ogni incremento. 
		- valutano e validano l'interazione
		- Forniscono nuovi requisiti del sistema o propongono modifiche alle iterazioni
3. Strumenti di supporto 
	- Utilizzo di strumenti al supporto del processo di sviluppo (automatizzazione dei test)
4. Accettare i cambiamenti
	- Non si deve pianificare rigidamente
	- Prevedere che i requisiti cambieranno
5. Mantenere la semplicità 
	- Sia il prodotto che il processo di sviluppo devono essere più semplici possibili
	- Lavorare attivamente per semplificare il sistema

> [!done]  **Vantaggi** 
 > Consegne rapide, prevedibili
 > Rapidità di risposta ai cambiamenti 
 > Rischi attenuati (cicli di consegna brevi)
 > Alta produttività 
 



| Plan Driven                                                                                                                                                                                                                                                   | Agili                                                                                                                                                                                                                                                         |
| :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Processi dove tutte le attività sono pianificate in anticipo e il loro avanzamento è misurato rispetto a quanto previsto dal piano. Le fasi del processo software sono distinte tra loro e gli output di ciascuna fase sono necessari per la fase successiva. | La pianificazione è incrementale e continua durante lo sviluppo del software. Quindi è più facile modificare il processo per adeguarsi alle modifiche dei requisiti del cliente o del prodotto. Requisiti, progettazione e implementazione avvengono insieme. |

Plan Driven e agili possono coesistere nello stesso processo: 
- Processi agili producono documentazione di progettazione quando necessario, possono includere attività pianificate. Lo scopo dei documenti è supportare comunicazione e comprensione. 
- Processi plan-driven possono essere incrementali 

### Applicabilità dei metodi agili
- Prodotti di piccole / medie dimensioni
- Prodotti personalizzati --> chiaro impegno del cliente nell'essere coinvolto
- Prodotti con pochi stakeholder --> non bisogna rispettare rigidi regolamenti
- Team fisicamente vicini (per facilitare comunicazioni)


## Extreme Programming (XP)
Il metodo agile più conosciuto. 
![[Pasted image 20241010145642.png#invert|450]]
Approccio iterativo *estremo*. Piccoli e frequenti incrementi rilasciati al cliente. I requisiti sono espressi come storie utente (?)

Storie utente = semplici scenari utilizzati come base per decidere quale funzionalità deve essere inclusa in un incremento del sistma

Scenari divisi in **task** di sviluppo più semplici. Implementati direttamente senza progettazione e documentazione

Non vuol dire assenza di progettazione, ma flessibile e con poca documentazione essenziale. 
I programmatori lavorano in coppie e sviluppano test per ogni task prima di scrivere il codice. Tutti i test devono essere superati prima di integrare il codice.

Il cliente è coinvolto nello sviluppo. Convalida la release corrente, fornisce requisiti nuovi.....

### Storie utente + esempio di story card

pro e contro 

##  Refactoring 
> Processo di miglioramento del codice che viene riorganizzato e riscritto per renderlo più efficiente e comprensibile senza cambiare le funzionalità

Il team di sviluppo cerca aspetti del software da migliorare e implementa i miglioramenti immediatamente. 
Il miglioramento può riguardare anche situazioni in cui non ci sono immediate necessità. 
Un codice di alta qualità riduce la necessità di documentazione e facilita le modifiche future. 

#### PRO
Lo sviluppo incrementale e rapido tende a portare al deterioramento del codice. Il Refactoring continuo mitiga il deterioramento, migliora la struttura e leggibilità del codice. 
Esistono tool per automatizzare alcune operazioni di refactoring

#### CONTRO
Talvolta non basta per supportare un cambiamento, è necessaria una modifica dell'intera architettura che è più costosa. 
Bisogna trovare un compromesso tra tempo dedicato allo sviluppo e refactoring 

## Test Driven Development 

in XP il testing è fondamentale. il software è testato dopo ciascun cambiamento. 
- Sviluppo Test Driven. i casi di test da soddisfare sono scritti prima del codice e quindi guidano lo sviluppo 
- Automatizzazione dei test - strumenti degli IDE eseguono automaticamente tutti i test quando viene rilasciata una nuova versione.
- Coinvolgimento del cliente

Scrivere i test prima del codice chiarisce i requisiti da implementare. 
I test sono scritti come programmi, per essere eseguiti automaticamente. Ogni test simula l'invio degli input e controlla l'output. è possibile eseguire i test mentre si programma in modo da scoprire subito eventuali problemi del codice. 
Lo sviluppo non può procedere finché tutti i test non sono stati superati. 

### Automazione dei test 
Vengono scritti come programmi eseguibili, invece che essere forniti come un insieme di dati. Il programma di test simula gli input  e valuta l'output. Framework come JUnit facilitano la scrittura e esecuzione dei test automatica. 

#### PRO
Implicano la definizione di un'interfaccia e di una specifica comportamentale della funzionalità da sviluppare, riducendo le possibili incomprensioni, ambiguità e omissioni. 

#### CONTRO
Pratica onerosa/costosa per il cliente 
Sforzo per tenere aggiornati i test interessati dalle modifiche del codice
I test potrebbero essere incompleti, non verificando tutti i possibili scenari

## Pair Programming
#### PRO
Aiuta a sviluppare il senso di proprietà del codice nel team e a diffondere la conoscenza nel team. Permette un processo di revisione informale. Riduce i rischi di fallimento dovuti al turn-over.

#### CONTRO
Può essere meno efficiente per programmatori esperti o quando c'è troppa differenza di esperienza. 


# Gestione agile della progrmmazione

## SCRUM
> Metodo agile che offre un framework per organizzare agilmente progetti e fornire una visibilità *esterna* su ciò che accade dentro il team di sviluppo del prodotto software. 

![[Pasted image 20241021104247.png#invert|right|700]]
Ogni sprint parte dal product backlog: lista degli elementi, requisiti e miglioramento dell'ingegnerizzazione. La versione iniziale è derivata da un documento dei requisiti. 
All'inizio di ogni ciclo, il *product owner* stabilisce le priorità del product backlog per definire gli elementi più importanti da sviluppare. Product Owner può essere un cliente, product manager o altro stakeholder. Tutti i membri del team sono coinvolti nella scelta degli elementi con priorità più alta che dovranno essere completati. Il tempo richiesto per completare questi elementi è in base alla **velocità**, una stima basata sul backlog di quanto lavoro può essere svolto in uno sprint. 
Il team deve avere un dialogo continuo e un numero di componenti tra 5-7
Lo ScrumMaster guida il team nell'uso efficiente di Scrum. Interfaccia con il resto della società, diverso da un project manager classico. Una riunione giornaliera esamina l'avanzamento del lavoro e stabilisce le priorità. Si usano whiteboard (digitali come Trello, Slack...)
Al termine di uno sprint, il software dovrebbe essere rilasciabile, almeno per il testing. Nella pratica non succede. 
Alla fine di ogni sprint c'è una riunione di verifica: migliorare il processo e input sullo stato per la revisione del product backlog. 

# Requisiti 
> Descrizione di qualcosa che il sistema dovrà fare oppure una proprietà o vincolo operativo che si desidera per il sistema. 

![[Pasted image 20241024133737.png#invert|left|300]]
Può essere una formulazione astratta, di alto livello, in linguaggio naturale oppure una specifica dettagliata, in linguaggio formale matematico. 
L'ingegneria dei requisiti è il processo di ricerca, analisi, documentazione e verifica dei requisiti. 

.

### Requisiti utente
- Frasi in *linguaggio naturale* (+eventuali diagrammi) relative alle funzionalità che il sistema deve fornire + vincoli operativi. 
- dovrebbero specificare solo il comportamento del sistema visto dall'*esterno*. 
- Alto livello, comprensibile a tutti gli utenti, anche stupidi. 
### Requisiti di sistema
- Documento strutturato con descrizione dettagliata delle funzionalità + vincoli operativi. 
	- Possono essere scritti nel linguaggio naturale, ma anche altre  notazioni basate su moduli, grafici o modelli matematici. Solitamente espansione dei requisiti utente. 
- Definisce cosa va sviluppato 
- Può essere parte del contratto fra cliente e sviluppatore


### Requisiti funzionali 
> Descrizione di ciò che il sistema dovrebbe fare, come reagisce agli input (le *funzionalità*)

Anche questi espressi in due livelli di astrazione:  utente e di sistema. 
Le specifiche dei requisiti devono essere complete e consistenti: 
- Tutti i requisiti richiesti devono essere presenti
- Non devono esserci definizioni contradditorie o in conflitto. 

### Requisiti non funzionali 
> Vincoli sulle funzionalità offerte dal sistema o vincoli sul processo di sviluppo 
> Includono i requisiti di qualità 

Non riguardano le funzionalità offerte dal sistema, definiscono le proprietà e i vincoli del sistema
- Proprietà del sistema (affidabilità, tempi di risposta, uso memoria...)
- Vincoli del sistema (capacità dispositivi I/O)
- Vincoli processo di sviluppo (Uso di particolari standard per la documentazione, linguaggi di prog. specifici...)
Possono essere difficili da definire precisamente, quindi da verificare. Dovrebbero essere verificabili in modo oggettivo. 

Misure per verificare requisiti non funzionali: 

![[Pasted image 20241021115018.png#invert|700]]

### Requisiti di dominio
Possono essere funzionali o non funzionali, derivano dal dominio applicativo del sistema. (norme e standard del dominio medico, ferroviario...)
Talvolta sono informazioni ovvie per gli esperti ma non per gli sviluppatori. 

---

L'ingegneria dei requisiti è formata quindi da tre attività chiave: 
1. **Deduzione e analisi dei requisiti** (comprensione con interazione con stakeholder)
2. **Specifica dei requisiti** (traduzione in specifiche in un formato coerente)
3. **Convalida dei requisiti** (controllo che corrispondano alle richieste del cliente)



## Processo di deduzione e analisi dei requisiti

![[Pasted image 20241024134847.png#invert|left|400]]
è un processo **iterativo** che termina quando il documento dei requisiti è completo. 
La comprensione dei requisiti parte dall'ingegnere del software, migliora con ogni iterazione. 
(di solito né committente né fornitore sono in grado di estrarre in maniera efficace i requisiti di un sistema.)

1. **Scoperta e comprensione**
	1. interazione analisti - stakeholder per scoprire i requisiti 
	2. Tra le tecniche usate: Interviste, [[Etnografia]], Storie Utente e scenari. 
2. **Classificazione e organizzazione**
	1. i requisiti raccolti vengono raggruppati in modo coerente, eliminando i duplicati 
3. **Negoziazione e priorità**
	1. Dare una priorità ai requisiti 
4. **Documentazione**
	1. I requisiti vengono documentati e diventano l'input della successiva iterazione. 

### Linguaggi per la specifica

#### Linguaggio naturale (NL)

> [!done]+  **Pro** 
 > Espressivo, intuitivo, universale. Compreso da clienti e utenti. 
 
> [!failure]+  **Contro** 
 > Mancanza di chiarezza, precisione e incline a ambiguità 
 > Difficile distinguere le varie tipologie di requisiti. Diversi requisiti potrebbero essere espressi in una singola frase. 
 
Linee guida: 
- Formato standard coerente e conciso 
- Uso coerente del linguaggio. 
- Formattazione coerente del testo 
- No linguaggio troppo tecnico 
- Spiegare perché un requisito è necessario (logica del requisito) 

Esempio: 

> [!NOTE]- Esempio
> Req 3.2: Il sistema deve misurare il livello degli zuccheri nel sangue e
> rilasciare lʼinsulina, ogni 10 minuti (variazioni degli zuccheri nel sangue
> sono relativamente lente, quindi non sono necessarie misure più
> frequenti; misure meno frequenti potrebbero portare a livelli di
> zuccheri inutilmente elevati).


#### Specifiche Strutturate in Template
> utilizzo di NL con una struttura predefinita, per garantire maggiore uniformità. 

![[Pasted image 20241024142748.png#invert|400]]

## Documento di Specifica dei Requisiti (SRS)

[...]

### Standard IEEE/ANSI 830-1998

## convalida

- Correzione
- Completezza
- Realistico 
- Consistente / non ambiguo
- Verificabile
- Tracciabilità

[[Esercitazione su ingegneria dei requisiti]]

---

28/10/2024 - Lezione 7
# UML

![[Pasted image 20241028105325.png#invert|right|200]]
> Unified Modeling Language (rappresentazione grafica tramite diagrammi)



### Modellazione di un sistema: 
> Processo che sviluppa modelli astratti di un sistema. Mantiene tutte le informazioni. Un'astrazione semplifica un sistema evidenziando alcune caratteristiche, tralasciandone altre. 

> [!abstract]+  **Modello** 
 > Astrazione che descrive un sistema o sottosistema
 
 > [!abstract]+  **Vista o prospettiva** 
 > Descrizione di aspetti specifici di un sistema in cui si omettono dettagli non rilevanti 
 
 > [!abstract]+  **Notazione** 
 > Insieme di elementi grafici o testuali e regole per rappresentare le viste
 
 **UML** si sta affermando come linguaggio unificato standard, ma non è l'unico. SysML è una variante spesso usata per sistemi IoT. 
Nasce come linguaggio grafico standard per modellare software OOP. 

è una famiglia di *notazioni grafiche* basate su un singolo *meta modello*: modello che definisce i concetti stessi del linguaggio di modellazione. 

#### Regole: 
- **Prescrittive**
	- stabilite da organismi standardizzati. Lessico, sintassi, semantica sono definiti. 
- **Descrittive**
	- Stabilite per convenzione comune. 

#### Usi: 
- **Sketch**
	- Modello informale per un sistema da realizzare (*forward engineering*)
	- Descrivere un sistema esistente: *reverse engineering*
- **Progetto dettagliato**
	- Modello completo della soluzione architetturale del sistema
- **Linguaggio di programmazione** (modellazione)
	- Modella in maniera completa e precisa il sistema software. 
	- MDA = Model Driven Architecture. Vantaggio = generare codice per diverse piattaforme. 
	- 

### Tipi di diagrammi UML: 

> [!abstract]+  **Diagrammi Strutturali** 
 > Modellano l'organizzazione del sistema 
 
 > [!abstract]+  **Diagrammi comportamentali** 
 > Modellano le interazioni tra entità del sistema. (use-case diagrams, activity diagrams, state machine diagrams)
 
 #### Integrazione di UML nel processo di sviluppo
- Analisi dei requisiti
	- Facilita la deduzione dei requisiti
- Progettazione
	- Modelli più tecnici e dettagliati descrivono il sistema agli ingegneri
- Documentazione 
	- più semplice descrivere parti complesse 
- Comprensione di software pre esistente
	- Evoluzione o reverse engineering 


## Diagrammi dei casi d'uso

*Diagramma comportamentale* 
- Modella il comportamento esterno del sistema, senza specificare come viene realizzato. 
- Modella interazione tra sistema e agenti esterni 
- può essere usato nella fase di definizione dei requisiti 
- Identifica i requisiti funzionali del sistema
- Descrive in modo grafico le interazioni tra utenti e sistema 
- Comportamento del sistema analizzato dal punto di vista dei possibili utenti. 
### Costruzione
1. Definire i confini del sistema
	1. Quali responsabilità rientrano nei confini del sistema che stiamo modellando? 
2. Identificare gli attori
	1. Coloro che interagiscono con il sistema per eseguire qualche compito 
3. Identificare i casi d'uso
	1. Per ogni attore, identificare compiti e funzioni, poi raggruppare compiti e funzioni in casi d'uso. 
4. Definire il diagramma
	1. il diagramma contiene le relazioni tra attori e casi d'uso, 
5. Descrivere i casi d'uso 
6. Strutturare i casi d'uso

**[[Ingegneria Del Software#Scenari|Scenari]]** = sequenza di azioni che caratterizzano un'interazione tra utente e sistema
**caso d'uso** = sequenza di azioni che un sistema può eseguire interagendo con attori esterni. 
**attori** = possibili utenti nello scenario 


### Diagramma dei casi d'uso

![[Pasted image 20241028115036.png#invert|500]]
> [!example]-  **Esempio** 
 > Un cliente arriva alla cassa con alcuni articoli da acquistare. Il cassiere
usa un POS per registrare ogni articolo acquistato. Il sistema mostra il
totale e i dettagli per ogni articolo. Il cliente inserisce i dati della propria
carta di credito, che il sistema convalida e registra. Il sistema aggiorna
l’inventario. Il cliente ottiene una ricevuta e se ne va

**Subject** rappresenta il limite tra ciò che è interno al sistema da sviluppare e ciò che è esterno ad esso. Il rettangolo è il perimetro che delimita il sistema. Quello che è dentro dovrà essere progettato, realizzato, verificato, validato. 

**Attore** definisce un ruolo che l'utente del caso d'uso svolge. Tutti gli attori sono esterni al sistema. 
- Una classe di persone fisiche (es. cassiere)
- Un altro sistema software (contabilità)
- Dispositivo hardware esterno (sensore)
Può essere : 
- Primario ha come obiettivo quello che il caso d'uso cerca di soddisfare (cliente)
- Secondario: il sistema ci interagisce per svolgere il caso d'uso (cassiere)
è possibile generalizzare gli attori, in *specializzato* e *generale*. Lo specializzato conserva le proprietà del generale oltre a possedere nuove caratteristiche. 
La freccia va da utente specializzato $\Large \to$ utente generale. 

**Caso d'uso**: unità di lavoro utile che il sistema esegue. Stimolato dall'attore primario per eseguire un compito che l'attore deve eseguire. (Acquista prodotti). Astrazione massima. 

Un attire può partecipare a più casi d'uso: ovvero una persona fisica può ricoprire più ruoli. 
Uno stesso attore rappresenta più istanze di utenti e sistemi. 
Esistono relazioni tra i casi d'uso, usate per strutturare ulteriormente il diagramma dei casi d'uso tra generalizzazioni e specializzazioni.
- Generalizzazione 
- Inclusione
- Estensione

![[Pasted image 20241031140708.png#invert|center|400]]
Nel caso d'uso esteso (base) si agganciano a uni o più punti di estensione (eXtension Points - XP), le condizioni che fanno scattare l'estensione. 
### Scenari 
[...]

#### Stili di descrizione: 
- Testuali, con un flusso chiaro di eventi da seguire
- Diagrammatici, diagrammi UML di stato, di sequenza, di interazione. 

(esempio di effettua ordine, pre condizioni, flusso di eventi, post condizioni )

`WHILE, FOR, IF` possono essere usati per racchiudere gruppi di azioni che devono essere ripetute 

#### Linee guida per la descrizione degli scenari
- Stile essenziale, no riferimenti a implementazione
- Descrizione di casi d'uso concisi e completi
- Descrivere casi d'uso a scatola nera (NO riferimenti all'implementazione)
- Nella descrizione del caso d'uso non devono essere indicati dettagli che rivelano scelte del progetto software. 

### Esempio completo di caso d'uso: 

![[Pasted image 20241031141028.png#invert|center|600]]
### Errori tipici con i casi d'uso 
- Diagrammi troppo complessi (troppi casi d'uso: rappresentano sequenza di azioni, non azioni singole) 
- Ripetere il nome dello stesso caso d'uso più volte nello stesso diagramma 
- Le frecce delle relazioni di estensione o inclusione non sono tratteggiate, etichettate con `<<extend>>` o `<<include>>`, o verso sbagliato: 
	- `<<extend>>` : la freccia va dal caso che descrive l'evento alternativo al caso base
	- `<<include>>` : la freccia va dal caso base al caso che descrive le azioni incluse. 

## Tracciabilità Requisiti / Casi d'uso
Si crea la **matrice di tracciabilità**: 
![[Pasted image 20241031141526.png#invert|left|400]]
Importante incrociare i requisiti funzionali e i casi d'uso per verificare la reciproca copertura: ogni requisito deve essere coperto da almeno un caso e viceversa
Ogni requisito funzionale può dare origine a più casi d'uso. Ogni caso d'uso può soddisfare più requisiti funzionali. A ogni caso d'uso possono essere associati più requisiti non funzionali. 

## Output finale
**L'analisi dei casi d'uso produce:** 
1. Diagramma dei casi d'uso
	1. Dove è contenuto solo un piccolo sottoinsieme delle info contenute nelle descrizioni degli scenari. 
2. **Descrizione di tutti gli scenari di tutti i casi d'uso.** 
	1. Contiene tutte le informazioni contenute nel diagramma dei casi d'uso. 



[[Diagramma UML delle classi]]

07/11/2024

## Associazioni riflessive e classi associative

Le *associazioni riflessive* collegano una classe con sé stessa. 
![[Pasted image 20241107134902.png#invert|center|400]]
- Una cartella può contenere 0 o più sottocartelle, indicato da:`[0...*]` 
- Una cartella può essere contenuta al massimo in una sola altra cartella. 

 Le **Classi associative** sono attributi che caratterizzano un'associazione: (collegata con linea tratteggiata)
 ![[Pasted image 20241107135102.png#invert|center|400]]
 - Può avere attributi, metodi, altre associazioni. Utilizzate in genere per associazioni molti a molti 
 - La classe associativa connette due classi e definisce un insieme di caratteristiche proprie dell'associazione stessa. 
 - Ciascuna istanza di classe associativa rappresenta un'associazione tra due istanze delle classi. Contiene valori degli attributi 


[...] 

## Generalizzazione

concetti Generalizzazione - Specializzazione analoghi a OOP. 
![[Pasted image 20241107135941.png#invert|center|500]]
Indica legami di tipo *is-a* tra le **sottoclassi** e la **superclassse**. (cliente is a persona)
Freccia va dalla classe specializzata alla classe generale. Buona pratica: info comuni stanno nella classe più generale (no ridondanza.). Classi del livello più basso hanno tutti gli attributi e operazioni delle classi generali, aggiungono operazioni e attributi più specifici. 
 
 
 
A livello di dettaglio può essere interpretato come relazione di ereditarietà tra due classi concrete, o come relazione di realizzazione tra una classe astratta e una classe concreta. 

## Contenimento

Tipo di associazione tra classi: rappresenta il legame tra un insieme ("tutto") e le sue parti: Ad esempio legame tra stato, regioni, province. 
Contenimento può essere:
- **Aggregazione**
	- La parte mantiene la sua identità quando entra a far parte del tutto (auto - motore)
	- ![[Pasted image 20241107140741.png#invert||200]]
	- A è detto *aggregato.* Le parti possono esistere indipendentemente da esso. 
	- possibile che più aggregati condividano la stessa parte. 
- **Composizione**
	- La parte perde la sua entità quando entra a far parte del tutto (pane - farina )
	- ![[Pasted image 20241107140808.png#invert|200]]
	- Le parti non esistono senza il tutto. 
Quando il confine tra i due concetti non è chiaro -> rombo vuoto, aggregazione. 

![[Pasted image 20241107141854.png#invert|center|500]]

11/11/2024 - 11 esima lezione

#### System Domain Model vs System Model
Il primo modella le **entità** del dominio del problema, presenti nel sistema. Il secondo include anche le classi usate per **costruire** il sistema completo. Classi per UI, classi associate alla parte di architettura (client, server, file, database..), classi di utilità...
Contiene metodi e informazioni sulla navigabilità. 

### System Domain Model - costruzione
> [!example]+  **Processo di astrazione** 
 > 1. Identificare un primo insieme di **classi** candidate
 > 2. Aggiungere associazioni e attributi a queste classi
 > 3. Trovare **generalizzazioni**
 > 4. Trovare le principali **responsabilità** di ogni classe
 > 5. Iterare il processo 
 
#### Identificare le CLASSI
Una buona classe: 
- ha un nome sensato 
- è un'astrazione. modella un elemento del dominio del problema. 
	- Occhio alle ridondanze: Es: un utente può iscriversi al sistema e creare un profilo per accedere al carrello. Profilo e utente sono due classi ridondanti. Meglio creare una classe **ProfiloUtente**. 
- Ha un insieme di responsabilità, ridotto e ben definito. 

> [!example]+  **Esempio libri** 
 > Il **sistema** consente agli utenti di cercare libri per titolo, autore e genere. Gli utenti possono prendere in prestito e restituire i **libri**. Gli **amministratori** del sistema possono aggiungere, modificare e rimuovere libri dal **catalogo**. Il **sistema** traccia lo strato di disponibilità di ciascun **libro**. Gli utenti possono iscriversi al sistema, creare un **profilo** e accedere alla **lista** dei **libri** in prestito.
 
![[Pasted image 20241111105932.png#invert|center|500]]

Bisogna includere classi solo se occorre salvare o manipolare informazioni (Profilo Utente). Altrimenti sono esterni al sistema (Amministratore)
Errore comune: considerare il sistema e tutti gli utenti del sistema come se fossero classi. 

#### Identificare ATTRIBUTI



[...] 

##### Esempio di System Domain Model di Azienda Alimentare: 


