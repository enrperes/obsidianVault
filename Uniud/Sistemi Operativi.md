---
aliases:
  - sistemi
  - os
  - operativi
tags:
  - materia
---


[[Sistemi operativi - info]]
# [[Sistemi Operativi lab]]

## [[Linux-commands]]

---

> Un sistema operativo è un insieme di programmi che operano sull'hardware di un sistema di calcolo. 
> Per l'utente è un'interfaccia verso l'hardware che renda facile risolvere problemi. Per il sistema di calcolo, è il "programma" più strettamente correlato ai dispositivi fisici. Funge da assegnatole di risorse e controllore del loro utilizzo. 
> - Permette di realizzare un sistema di calcolo che supporti l'esecuzione dei programmi utente in modo efficace e controllato 
> - Permette di realizzare le funzionalità per gestire e assegnare risorse agli utilizzatori mentre supervisiona le attività 

Gli **obiettivi principali** di un Sistema Operativo sono: 
- Semplificare all'utente l'uso e lo sviluppo di programmi
- Rendere efficiente l'utilizzo delle risorse hardware 
- Realizzare un sistema di calcolo che supporti l'esecuzione di programmi utente in modo utile, efficace, efficiente...
- Realizzare le funzionalità necessarie a gestire e assegnare le risorse agli utenti, supervisionando le attività 

Un sistema di calcolo è composto da: 
![[Pasted image 20240307145602.png|500]]
- dispositivi fisici 
	- CPU, RAM, periferiche 
- sistema operativo
	- Gestisce e controlla l'utilizzo di hardware da parte dei programmi
- Programmi di sistema
	- Forniscono interfaccia verso le risorse dal S.O. semplificando lo sviluppo e esecuzione di programmi applicativi (gestione file, config sistema, editor, compilatori)
- Programmi applicativi 
	- Applicazioni che risolvono problemi specifici (DBSM, Word processor, Browser...)
- Utenti
	- Qualsiasi agente che usi il sistema di calcolo per risolvere un problema (può essere umano o altro sistema operativo)


### Kernel
Programma che ha il completo controllo su tutti i componenti del sistema, responsabile per prevenire e mitigare conflitti tra processi. 
![[Pasted image 20240307150019.png|200]]
Solitamente si definisce il sistema operativo come quel programma sempre in esecuzione nel sistema di calcolo: si usa il termine **Kernel**. Tutto il "resto" è costituito da programmi di sistema o applicativi. 


##  Gestione delle **interrupt** 
- CPU e device operano concorrentemente. 
	- Un **controller** gestisce uno specifico device e usa un **buffer** locale (spazio in RAM) per interagire con la CPU 
- Il controller legge e scrive i dati nel suo buffer locale
- La CPU legge e scrive nel buffer locale del controller 
- La sincronizzazione tra controller e CPU avviene tramite le **interrupt**

1. Il segnale di interruzione viene inviato dal controller 
2. il processore intercetta il segnale e determina di quale interruzione si tratti
3. Il processore invoca l'esecuzione di una appropriata procedura di servizio per gestire l'interruzione 
4. Lo stato della CPU viene salvato e ripristinato al termine della gestione 
5. La tecnica più usata sfrutta l'interrupt vector

![[Pasted image 20240307150915.png|400]]
##  Gerarchia di memoria 
1. Registers
2. Cache
3. Main Memory (RAM)
4. SSD
5. HDD
6. Optical disk 
7. Magnetic tapes
### Direct Memory Access
Tecnica che permette ai dispositivi I/O di accedere direttamente alla RAM senza coinvolgere la CPU. Quindi il trasferimento di dati da dispositivi I/O a RAM può avvenire senza interrupt dei processi in esecuzione. 
Causa possibili conflitti di accesso alla memoria 
Si usa quando è necessario trasferire grandi quantità di dati tra RAM e dispositivi I/O e quando è importante ridurre il trasferimento di dati o quando la CPU è già impegnata con altri processi. 
![[Pasted image 20240307151845.png#invert|400]]



## Sistemi mono e multi programmati 

Mono-programmato: 
- In memoria risiede al più un applicativo, oltre all'OS. 
- Il sistema esegue un lavoro alla volta 
Multi-programmato: 
- In memoria sono caricati molti processi allo stesso tempo, eventualmente anche solo parti di essi = **multiprogrammazione**
### Time Sharing in Multiprogramming
- Ad ogni processo viene assegnato un breve quantum di tempo CPU 
- I processi vengono eseguiti in modo alternato, sfruttando al meglio le risorse di sistema
- Richiede un algoritmo di Scheduling per gestire la concorrenza tra processi 
L'esecuzione sequenziale, invece: 
- I processi vengono eseguiti uno alla volta
- Un processo termina prima che il successivo possa iniziare
- Risorse non sfruttate a pieno 

![[Pasted image 20240307153240.png|500]]

# Processi / Job / Task

> Attività unitaria di elaborazione, caratterizzata da un singolo flusso sequenziale di esecuzione, uno stato corrente ed una collezione di risorse assegnate dal sistema. 

> [!example]- Altre definizioni 
> > Un programma caricato in memoria e predisposto per l'esecuzione 
> 
> > Un'istanza di un programma in esecuzione su un computer
> 
> > Un'attività controllata da un programma che può essere assegnata ad un processore e da questo eseguita

- Per ogni utente possono esistere uno o più processi allo stesso tempo in memoria centrale(RAM)
- La memoria centrale può non essere abbastanza per contenerli tutti: si richiede memoria di massa in una zona detta *job pool*
- L'OS decide quali processi caricare in RAM (**job scheduling**) e quali eseguire tra quelli in RAM (**CPU scheduling**)
- L'OS può anche decidere di spostare dei processi (parzialmente eseguiti) dalla RAM alla ROM (**Swap-out**) per liberare RAM. Ovviamente viene congelato e la sua esecuzione viene congelata. 

Tutti i processi non possono essere caricati nella RAM allo stesso tempo: vengono spostati nella ROM > ==Job Pool== tramite lo **swap-out**
Tramite il **job scheduling** l'OS determina come smistare i processi
Tramite la **cpu scheduling** l'OS determina quali processi eseguire tra quelli in RAM 

##  Tecniche a supporto della multiprogrammazione 
### Swapping
 migrazione di processi tra memoria principale e secondaria 
### Memoria Virtuale
Introduce uno spazio di indirizzamento logico svincolando i processi dalla memoria fisica e dai suoi limiti. (si può eseguire un processo NON completamente caricato su RAM)


# Principali funzionalità di un Sistema Operativo

> [!attention] in presenza di più processi che condividono risorse è necessario garantire che ogni processo non danneggi gli altri
> Due modalità di funzionamento per l'OS: 
> - Utente (modalità solita)
> 	- più limitato nelle risorse disponibili e privilegi
> - Kernel (abilità l'esecuzione di istruzioni privilegiate) 
> 	- Non ha limiti a quello che può fare
> Nel caso più semplice consiste in un bit di modalità della CPU 

 > [!question]  Gestione di risorse = istruzioni privilegiate. Come fa un processo utente a ottenere risorse?
 > ==System Calls==
 > - Il processo richiede un servizio tramite una system call
 > - La chiamata genera una ==trap== (interruzione). Il controllo passa alla routine di gestione interna all'OS. 
 > - La richiesta viene analizzata (permessi, disponibilità risorsa...) e il servizio richiesto viene fornito
 > - Si torna in modalità utente e viene restituito il controllo al programma utente.
 > - ![[Pasted image 20240306172404.png|500]]

##  Tipi di funzionalità offerte dall'OS: 
- Gestione processi
	- Creazione e cancellazione 
	- Sospensione e ripristino
	- Comunicazione e sincronizzazione tra processi
	- Gestione stallo 
- Gestione RAM
	- Tenere traccia delle porzioni utilizzate 
	- Decidere quali processi caricare in memoria 
	- Assegnare / revocare spazio ai processi in base alle necessità 
- Gestione ROM 
	- Informazioni organizzate in file, organizzati in file system. 
	- Creazione / cancellazione, accesso
	- Gestione affidabilità (backup)
	- Gestione / assegnazione di spazio libero
	- Scheduling del disco 
- Gestione I/O
	- L'OS deve nascondere le caratteristiche dei dispositivi hardware 
	- Gestire i ==buffer== = zone di memoria dove scambiare i dati con i dispositivi 
	- Gestire il ==caching== = spostamento temporaneo di dati nella cache 
	- Gestire lo ==spooling== = esecuzione asincrona di operazioni I/O (lente) e esecuzione di processi in contemporanea
- Protezione e sicurezza
	- Protezione = controllo dell'accesso alle risorse di sistema da parte di processi o utenti 
	- Sicurezza = difesa da accessi / operazioni dannose
	- Si impiegano **user IDs**, **Grop IDs** assegnati a utenti e processi. 


---

# Struttura e servizi dei sistemi operativi 

## Servizi di base
- Interfaccia utente (CLI, GUI)
- Esecuzione di programmi e caricamento in memoria 
- Operazioni I/O
- Gestione File system
- Comunicazioni
- Rilevamento + gestione errori 
- Assegnazione risorse ai processi
- Contabilizzazione uso risorse 
- Protezione e sicurezza
##  System call
> interfaccia tra i processi e l'OS

Ad ogni SC è associcato un numero usato come indice in una tabella per determinare il codice (del kernel) da eseguire. 
L'interfaccia invoca la system call nel kernel e al termine restituisce il **return status** e **return values**. 
![[Pasted image 20251119111731.png#invert|center|500]]
Sono normalmente eseguite in ==modalità kernel==. 

#### Passaggio parametri ad una system call
in tre modi: 
1. registri
2. blocco di memoria e passando l'indirizzo tramite registri 
3. stack (push, pop)

## Tipi di system call
- *Controllo dei processi* 
	- Creazione, terminazione processi 
	- Esecuzione programmi
	- Allocazione / deallocazione memoria 
- *Gestione dei file* 
	- Creazione, rimozione, apertura, chiusura, lettura, scrittura
- *Gestione dispositivi*
	- Allocazione / rilascio dispositivi 
- *Accesso a infirmazioni sul sistema*
	- info su hardware e software installato
- *Comunicazione*
	- Creazione e chiusura di connessioni, invio messaggi, gestione mem condivisa...

 > [!abstract]+  Programmi di sistema 
 > Ambiente per lo sviluppo e esecuzione di programmi utente 
 > Es: gestione e manipolazione file, info su stato del sistema, compilatori...

# Struttura di un sistema operativo 
- Struttura *monolitica*
- Struttura *stratificata*
- Struttura a *micro-kernel*
- Struttura *modulare*

## Struttura monolitica semplice
- L'OS è costituito da un **unico programma**, composto da un insieme di procedure che realizzano i vari componenti. 
- Presente nei primi (semplici) sistemi operativi 
- Il Kernel contiene tutte le componenti dell'OS che interagiscono tra loro tramite chiamate a procedure / funzioni 
- Progettazione, realizzazione, debugging, manutenzione sono operazioni complesse
- Le componenti del kernel operano in modalità privilegiata -> sistema più vulnerabile a errori SW.
Un esempio di OS monolitico è **MS-DOS**
![[Pasted image 20240311154423.png|400]]
Anche i primi sistemi UNIX possono essere considerati quasi monolitici, essendoci solo due livelli: programmi di sistema e kernel 
il kernel implementa  tutto: file system, scheduling, gestione memoria...

![[Pasted image 20251111083744.png#invert|center|500]]
## Struttura stratificata

- l'OS viene partizionato in una ==gerarchia di livelli ==
- Ogni livello raggruppa funzionalità omogenee
- Ogni livello può invocare solo funzioni di livelli inferiori 
- Maggiore modularità (implementazione, debugging, sono indipendenti dal resto dell'OS)
- Minore efficienza: a causa del forzato utilizzo di interfacce tra i livelli 
![[Pasted image 20240311155142.png|400]]

###  Struttura  MicroKernel
L'idea è di mantenere il kernel più ==essenziale possibile==. 
Il MicroKernel include Memory management di basso livello, primitive di sincronizzazione e comunicazione inter-processo. 
Le altre funzionalità sono esterne al kernel: 
- Gestione processi
- file system
- networking 
- gestione dispositivi 
Vantaggi: 
- *Modularità*: non necessita di tutte le funzionalità esterne per funzionare 
- *Portabilità*: supporto per nuovo HW si ottiene con poche modifiche
- *Sicurezza*: meno codice viene eseguito in modalità privilegiata
![[Pasted image 20240311155902.png|400]]

###  Struttura modulare 
Combina i vantaggi della struttura a livelli con l'approccio del microkernel 
- Si adottano i principi di OOP
- Il kernel implementa e fornisce solo le funzioni essenziali 
- Le altre funzioni vengono aggiunte dinamicamente caricando moduli opportuni 
- Ogni modulo è interfacciabile con gli altri 
- Le funzionalità essenziali sono accessibili in modo protetto e controllato
- Flessibilità, portabilità, efficienza: i moduli comunicano tra loro senza il kernel 
![[Pasted image 20240311160158.png|300]] ![[Pasted image 20240311160213.png|300]]

### Struttura Ibrida
I sistemi operativi reali solitamente usano una struttura ibrida, prevalentemente *monolitica* ma arricchita da possibilità di caricare moduli (Linux, Solaris, Windows)
Obiettivo: migliorare efficienza e efficacia 
Mac OS X, iOS, iPadOS combinano caratteristiche da microkernel, stratificata, modulare... (kernel derivato da UNIX)
Android: il kernel è derivato da Linux, applicazioni Java girano su macchina virtuale Linux 

##  Macchine Virtuali 
> Applicazione che emula le funzionalità di un sistema di elaborazione

![[Pasted image 20240311160945.png|400]]
Efficienza? Dipende: 
- Per task che usano pesantemente la CPU -> non emulato è più efficiente 
- Per operazioni su I/O e su disco, i dispositivi emulati sono più veloci. 

---

# 3. Processi

Importante distinguere tra *processo* e *programma*. 
- *programma* = entità statita
- *processo* = entità dinamica, unità di elaborazione che viene eseguita sequenzialmente. 
Ad un processo corrisponde UN solo programma 
Ad un programma possono corrispondere più processi. 


Proprietà che lo caratterizzano: 
- Programma (=code region, che rimane invariata)
- Program counter
- Contenuto dei registri
- Data region
- Stack region
- Attributi vari (PID (Process Id), privilegi, limiti...)

## Ciclo di vita di un processo

 In ogni istante si trova in un determinato stato: 
- **New**
	- Appena creato
- **Ready**
	- Pronto per essere eseguito
- **Running**
	- In esecuzione
- **Waiting / Blocked / Sleeping** 
	- In attesa di qualche evento (terminazione di I/O...)
- **Terminated / zombie** 
	- Esecuzione finita, processo non ancora "eliminabile"

![[Pasted image 20251120110444.png#invert|center|500]]

> [!attention]  Dispatching 
> Assegnamento di un processore ad un processo (ready -> Running)
> Viene eseguito da un particolare modulo nel SO detto *Dispatcher*


> [!attention]  **PCB: Process Control Block** 
 > Struttura con cui il sistema operativo rappresenta un processo. Contiene informazioni come: 
 > - PID (= identificatore del processo, un numero intero)
 > - Lo stato (running, ready, waiting...)
 > - Il valore del program counter
 > - IL contenuto dei registri della CPU
 > - Info utili allo scheduling CPU
 > - Info su gestione memoria
 > - Info su accounting 
 > - Info su stato I/O
 > Descrive l'*execution context* del processo. Tutti i PCB sono raccolti in una process table. 

I PCB sono raccolti in una process table che assegna il PID al PCB:
![[Pasted image 20251120111312.png#invert|center|500]]

Nell'execution context si distinguono due porzioni di memoria: 
- User stack 
- Kernel stack 
Corrispondono alle due modalità di esecuzione.

#### Context Switch
Operazione con cui la CPU passa dall'esecuzione di un processo A a un processo B. 
1. Salva nel PCB di A tutti i valori essenziali 
2. Carica dal PCB di B i valori utili 
3. Imposta lo stato di B da *ready* a *running*

## Code di processi 
I processi competono per utilizzare le risorse. il SO gestisce le richieste con 
- Code di scheduling 
- Politiche di scheduling

L'inserimento in coda è correlato a un qualche evento, si applica il diagramma di accodamento: 
![[Pasted image 20251120115233.png#invert|center|500]]

Esistono diverse code: 
- Job Queue, la coda dei processi, che raccoglie i PCB dei processi presenti nel sistema
- Ready Queue, raccoglie i PCB dei processi ready
- Device Queue, raccoglie i PCB dei processi in attesa di un dispositivo I/O

Quando una risorsa è disponibile, l'OS sceglie uno dei processi in attesa nella corrispondente coda (FIFO). I due scheduler principali sono: 
- *Job Scheduler* (Long Term) che decide quali processi non ancora iniziati devono essere caricati in RAM e inseriti nella Ready Queue. 
- *Scheduler CPU* (Short Term): sceglie quale processo tra quelli nella ready queue assegnare alla CPU. 

Spesso esiste anche lo Scheduler *Medium Term* che modula il carico a cui è soggetto il sistema: sposta i processi dalla memoria principale alla memoria secondaria. (Swap IN / Swap OUT)

## Operazioni sui processi
- Creazione
- Terminazione 
- Sospensione, riattivazione (swap in / out)
- modifiche attributi 
- Scheduling / dispatch
- Comunicazione 

###  Creazione di processi
Ogni processo può creare altri processi, con apposite sys calls.
Il processo creatore è **parent** di quello creato, **child**, che avrà un proprio PID e PCB -> si formano *gerarchie* di processi

In UNIX tutti i processi discendono dal processi `init` che ha PID = 1. 
Solitamente in UNIX il processo figlio è una copia identica del padre con le stesse risorse assegnate.
Un esempio di system call per creazione di processi è `fork()` di UNIX. 
Ogni nuovo processo avrà nuovo PID e nuovo PCB. 

Ogni processo ha un padre: è sempre possibile trasmettere lo status di uscita di un processo che termina al processo padre, tramite la sys call `wait()`
La disallocazione completa delle risorse avviene solo se il padre esegue `wait()`, altrimenti i processi rimangono nello stato *zombie*. 
Se il padre termina prima del figlio, questo viene *adottato* dal processo `init`

![[Pasted image 20251120115959.png#invert|center|500]]
Schema comune in UNIX: il processo figlio è una copia identica del padre, stesse risorse assegnate. Il figlio eredita l'*execution context* del padre ma cambia il PID. 

#### Terminazione di un processo
In condizioni normali, avviene in seguito all'esecuzione dell'ultima istruzione del suo programma e richiedendo la sua eliminazione tramite la syscall `exit()`. 
il SO: diaslloca le risorse concesse al processo terminato e trasmette al processo padre eventuali info relative alla terminazione del figlio. 

In casi anormali: errori o violazioni compiute dal processo $\Large \to$ il SO lo uccide

Es. in Android (risorse più limitate) alcuni processi vengono terminati dal SO, dividendoli in classi: 
- primo piano
	- visibile sullo schermo usato dall'utente
- visibile 
	- non visibile in primo piano ma funzionale ai processi sopra
- di servizio
	- Esegue in background funzioni evidenti all'utente 
- background
	- attività non visibile all'utente 
- vuoto 
	- non contiene componenti attive associate ad app. 


###  Comunicazione tra processi concorrenti (IPC)
Due processi in esecuzione possono influenzarsi: detti concorrenti. 
La riproducibilità non è garantita e l'esito dipende dalla velocità reciproca dei due processi. 

Meccanismo per lo scambio di informazioni e dati: 
**Inter-Process Communication** 
implementa due modelli: 

- *Shared Memory*
	- Prevede l'esistenza di un ambiente globale accessibile dai processi. Alcune risorse sono condivise. 
	- Il blocco di memoria condiviso viene concesso dall'OS come risposta ad un'invocazione da parte di un processo 
- *Message Passing* 
	- Non prevede l'esistenza di un ambiente globale, ma scambio di messaggi. 
	- Un canale di comunicazione e due operazioni di base: 
		- Send
		- Receive 
	- Caratteristiche della comunicazione
		- Naming
			- diretto: si indica il nome del processo partner 
			- indiretto: si mandano i messaggi nelle mailbox, usate da più processi
		- Sincronizzazione
			- Sincrone: il processo che invia si blocca in attesa che il messaggio venga ricevuto
		- Buffering
			- I messaggi spediti sono accodati in attesa della loro ricezione. 
			- Coda gestita dal SO. 

Esempio in UNIX: 
```c
int pipe(int pipefd[2])
```

definisce un canale monodirezionale, una pipe anonima. 
pipefd è un array di 2 interi, [0] = lettura, [1] = scrittura. 

```c
int fd[2];
pipe(fd);
write(fd[1], "hello", 5);

char buf[10];
read(fd[0], buf, 5); 
```

5= numero di byte 
char buf[10] è un array di 10 byte usato come buffer di lettura. 




# Threads

Unità che detiene le risorse = *process*
Untià soggetta a dispatching = *task* 

## Multithreading 
> capacità di un SO di supportare più flussi di esecuzione (=thread) all'interno di un singolo processo. 

Sistemi single-threaded supportano un solo thread per processo. Es: MS-DOS

Nel Multithreading il processo viene definito come unità che raccoglie allocazione di risorse e meccanismi d iprotezione. 
Un *processo* può comporsi di *più thread*, ognuno dei quali possiede un *TCB*, Thread Control Block, che descrive: 
- Lo stato del thread (Running, ready, blocked, waiting, terminated) 
- Il thread context 
- lo stack  
- Eventuale zona di memoria per variabili locali (accessibili solo al thread) 

![[Pasted image 20251125115922.png#invert|center|500]]


- Ogni thread ha accesso alla memoria e alle risorse alocate al suo processo 
- Queste risorese sono condivise da tutti i thread del processo 
- Necessario usare meccanismi per controllare l'interferenza tra thread

> [!done]+  Vantaggi Thread 
 > - maggior parallelismo 
 > - Creazione di un thread in un processo costa meno che creare un processo intero
 > - Terminare un thread costa meno che terminare un processo
 > - Switch di contesto tra thread dello stesso processo è più veloce di quello tra processi
 > - Comunicazioni tra thread sono più efficienti, senza system call e mediazione del kernel
 
 > [!fail]+  Svantaggi Thread
 > - Maggiore difficoltà e complessità di progettazione e implementazione delle applicazioni 
 > - Vanno pensate fin da subito in modo parallelo 
 > - Facendo in modo che non interferiscano in modo incontrollato 
 > - Che l'acesso ai dati condivisi sia protetto
 

#### Scheduler 
1. guarda i thread
2. valuta la priorità 
3. decide quale thread deve essere il prossimo ad ottenere la CPU

#### Dispatcher
1. Carica il contesto del thread 
2. Aggiorna le strutture OS
3. Passa il controllo alla CPU 
Viene gestito dal dispatcher nel kernel 


Solitamente scheduling e dispatching avvengono al livello del thread quindi le info sono mantenute nel TCB. 

### Thread states
- Running (uno solo può essere running allo stesso tempo)
- Ready
- Blocked

### Thread Operations
- *Spawn*: creazione di un thread. Solitamente alla creazione di un processo viene creato un singolo thread, che poi crea thread fratelli. 
- *Block*: quando si mette in attesa di un evento 
- *Unblock*: l'evento atteso si verifica e il thread viene sbloccato 
- *Finish*: il thread termina e il suo contesto viene deallocato


## Sincronizzazione tra Thread 
I thread condividono lo stesso spazio di indirizzamento e le risorse allocate dal processo. 
Per evitare interferenze $\Large \to$ meccanismi di sincronizzazione 
Tecniche simili adottate a livello dei processi 


### ULT vs KLT
*User Level Thread*: la gestione avviene a livello di applicazione e il kernel ignora l'esistenza dei thread.
Un'applicazione di questo tipo può essere sviluppata con librerie che implementano le primitive per la gestione dei thread. 
Tutti i thread sono allocati ad un singolo processo gestito dal kernel. 
La libreria gestisce lo scheduling dei thread internamente al processo. 

Vantaggi: 
- Switching dei thread non richiede intervento del kernel o passaggio da User Mode a Kernel Mode. 
- Lo scheduling può essere progettato per la specifica applicazione indipendente dalle politiche utilizzate dla kernel. 
- Poratbilità (grazie alle librerie) 
Svantaggi: 
- Molte sys call sono bloccanti quindi se un ULT ne invoca una tutto il processo passa in **waiting**. (soluzione = jacketing)

*Kernel Level Thread*: tutta la gestione avviene a livello del kernel: execution context del processo e di tutti i thread. 
- Lo scheduling avviene sui thread e la competizione può essere ristretta ai thread dello stesso processo. 
- Il blocco di un thread non implica il blocco dei thread fratelli. 
- Un approccio KLT permette di realizzare il kernel stesso usando i thread. 

Principale svantaggio: maggior costo dello switch tra KLT; anche uno switch tra thread fratelli comporta un passaggio alla modaltià kernel. 

ULT e KLT possono anche essere combinati. Avviene in Solaris. 

# CPU Scheduling

> Mappare un certo numero di compiti su un diverso numero di esecutori

*Scheduler* sceglie quale processo eseguire 
*Dispatcher* effettua il context switch, inizializza il program counter alla prossima istruzione da eseguire, passa a modalità utente. 
Tempo impiegato = latenza di dispatch

POV Utente: 
- Minimizzare tempo di risposta, di completamento e rispettare deadline
POV Sistema: 
- Massimizzare utiilzzo CPU, throughput
- Garantire fairness 
- Rispettare priorità 

Solitamente i *processi* alternano fasi di **CPU Burst** (calcoli, istruzioni...) a **I/O Burst** (scritture / letture su disco, interazioni con dispositivi)
Nelle fasi di I/O burst il processo non usa la CPU che può essere assegnata ad altri processi. 

### Prelazione (preemption)
indica la possibilità dello scheduler di interrompere un processo in esecuzione per assegnare la CPU a un altro processo con priorità più alta. 
> Se esiste diritto di prelazione, un processo puà essere interrotto anche se non ha finito. 
> Quindi da *running* passa a *ready* 


## Esempio 

![[Pasted image 20251202142504.png#invert|center|500]]

Politiche di scheduling: 
- FCFS (First Come First Served)
- SJF (Shortest Job First)
- SRTF (Shortest Remaining Time First)
- HRRF (Highest Response Ratio First)
- RR (Round Robin)
- FSS (Fair Share Scheduling)


### FCFS
First Come First Served
Si seleziona il processo che è nella ready-queue da più tempo, quindi i processi vengono serviti nell'ordine in cui sono entrati. 
*Nonpreemptive.* 
![[Pasted image 20251202142745.png#invert|center|500]]

**Vantaggi**
- Semplice da implementare, no overhead di gestione 
- Non c'è problema starvation. Tutti i processi in ready prima o poi ottengono la CPU. 

**Svantaggi**
- Tempo di attesa medio legato all'ordine di arrivo dei burst 
- Tempo di risposta di risposta di un processo anche molto alto. 
- Un processo CPU-bount (che non usa I/O) monopolizza il processore. 
==Convoy effect== Un processo molto lento rallenta tutti gli altri creando una coda lunga.


### SJF
Shortest Job First 
Assegna la CPU al processo con il CPU burst più corto tra quelli ready. 
![[Pasted image 20251202143606.png#invert|center|500]]
*Nonpreemptive*, non viene interrotto.
Svantaggi: processi lunghi penalizzati (starvation possibile) necessità di stimare i CPU-burst. 
Vantaggio: Tempo di attesa medio migliore. 


### SRTF
Shortest Remaining Time First
Variante *con preemption* di SJF. 
1. Si seleziona il processo con CPU-burst più breve ma se $P_{1}$ è running e $P_{2}$ è in ready queue con durata minore al tempo restante di $P_{1}$ allora $P_{2}$ sottrae la CPU a $P_{1}$. 
![[Pasted image 20251202145322.png#invert|center|500]]


#### Stima durata CPU-Burst 
Stima compiuta basandosi sui suoi CPU-burst del passato, usando la media esponenziale: 
$$
\Large \tau_{n+1}=\alpha t_{n} + (1-\alpha)\tau_{n}
$$

### HRRF 
Highest Response Ratio First 
Si seleziona il processo che ha il Response Ratio R maggiore. 
Dove: 
$$
\Large R = \frac{t_{\alpha}+t_{s}}{t_{s}}
$$
Con $t_{\alpha}$ il tempo speso dal processo in attesa di ottenere la CPU
$t_{s}$ la durata prevista del CPU-burst del processo. 

Rimane *Nonpreemptive*. 

![[Pasted image 20251202150344.png#invert|center|500]]

Favorisce processi CPU-burst previ ma si tiene conto dell'età del processo, quindi processi vecchi guadagnano priorità $\Large \to$ evita starvation.
Richiede stime sul tempo di servizio richiesto dai processi. 


## Scheduling con priorità 
Ad ogni processo viene assegnata una priorità: la CPU viene allocata al processo ready con priorità superiore (Priorità indicate con interi positivi, numero minore = priorità maggiore)

Possono essere *statiche* o *dinamiche*, che sono reattive rispetto a mutazioni del carico del sistema 

#### Starvation
> Si verifica quando un processo P, pur essendo in ready, non ottiene mai l'uso della CPU. 

### RR
Round Robin
Si serve il processo che attende da più tempo. 
*Preemptive*. 
Usa un timer (quanto di tempo): allo scadere, il processo in running viene rimosso dalla ready queue. 
![[Pasted image 20251202151032.png#invert|center|500]]

La durata di un quanto deve essere superiore al tempo necessario per gestire interruzioni e switch di contesto. 
Ideale: se ha durata maggiore di più dell'80% dei CPU-burst.
Se è troppo lungo i processi I/O-bound vengono penalizzati. 

Principale difetto: 
I processi CPU-Bound con burst più lungo del quanto tendono a venire interrotti e ad essere inseriti nella ready-queue $\Large \to$ passano davanti a tutti i processi waiting, in particolare gli I/O bound. 
Però evita starvation. 


## Scheduling con Code Multiple
Si introducono più code di processi, che vengono partizionati in gruppi distinti, seguendo opportuni criteri. Ogni processo viene assegnato permamentemente ad una coda. 
Code diverse possono avere politiche di scheduling diverse. 


### Code Multiple con Retroazione
Miglioria dell'algoritmo con code multiple che evita la starvation, permette ai processi di *migrare* tra le code a seconda dei criteri di aging. 
- *preemptive*
- processi che usano per molto tempo la CPU spostati in code con priorità più bassa
- Processi I/O-bound tendono ad ottenere alta priorità 
- Processi che attendono da tanto in code a bassa priorità possono essere spostati in code ad alta priorità 
- Overhead del sistema maggiore ma compensato dalla sua maggior sensibilità 

#### Parametri possibili
- Numero di code
- Algoritmi di scheduling da usare per ogni coda
- Come spostare un processo da una coda all'altra
- In quale coda inserire un processo nuovo 

![[Pasted image 20251202154136.png#invert|center|500]]

w = tempo speso in ready queue
e = tempo speso in esecuzione
s = tempo richiesto incluso e

### FSS
Fair Share Scheduling
Prevede che i processi siano partizionati in gruppi (es: processi dello stesso utente) 
E lo scheduling avvenga mirando all'equità di trattamento rispetto ai gruppi.
- Adatto a sistemi multi utente e a applicazioni multi-thread
- può trattare diversamente processi di diversi tipi di utente. 

La schedulizzazione avviene a livello di thread e non di processo nei sistemi multithread. 
Nei sistemi ULT viene tutto gestito dalla libreria 
Solo i KLT sono schedulati direttamente dal Kernel di sistema: *system contention scope*
Si usano algoritmi simili a quelli usati per i processi. 

## Scheduling per Multiprocessori
Possono essere adatte le tecniche di scheduling usate per il caso single-processor. 
Ma bisogna distribuire il carico in modo bilanciato. 

> [!abstract]+  Multiprocessore 
 > Si intendono più cose, un sistema con CPU multicore, un Code Multithread, un NUMA, 
 > un sistema multiprocessore eterogeneo. 
 
### Multielaborazione
#### Asimmetrica (AMP)
 Le attività di sistema (scheduling, interrupt...) sono tutet affidate a un processore, il *master server*. 
 Il codice degli utenti è eseguito da altri processori. 
Il master server essendo solo può fungere da bottleneck. 

#### Simmetrica (SMP) (Linux, Windows, MacOS)
Ogni processore ha uno scheduler che può essere di sistema o per processor. 
Quindi tutti i processori hanno uguale accesso alla memoria e alle risorse. 
Tutti possono eseguire sia kernel che user mode. 

### Multiprocessori multicore
Ogni core (fisico) è visto come un processore logico separato
A livello hardware ogni core esegue più thread hardware. 

Quindi si verifica un doppio livello di scheduling: 
- hardware
	- dei thread hardware sui Core della CPU 
- software 
	- dei thread / processi sulle CPU (quelli visti prima)

I thread software sono entità gestite dal SO usate per il multithreading. 
I thread hardware sono creati dalla CPU dentro un singolo core per migliorare la pipeline. 


### Bilanciamento del carico 
Come distribuire in modo equo i processi / thread da eseguire tra i core del sistema? 
#### Push Migration
Esiste un processo dedicato a monitorare periodicamente il carico di lavoro assegnato ai processori. 
Sottrae e riassegna task dalle CPU in overload a quelle meno cariche. 
#### Pull Migration 
Ogni processore quanto è inattivo preleva un task da uno dei processori overloaded. 


### NUMA 
Non Uniform Mem Access
> Architettura multiprocessore in cui il tempo di accesso alla memoria varia in base a quale processore effettua l'accesso e dove si trova fisicamente la memoria. 

Quindi ogni CPU ha accesso veloce alla propria memoria locale e accesso più lento alla memoria delle altre CPU. 
In questa architettura ci possono essere diversi processori con caratteristiche non omogenee: 
- Diverso tipo (grafico, NPU)
- Con diverso set di istruzioni
- Con diversa potenza di calcolo.
Es: ARM big-little combina core con alte prestazioni a core efficienti più lenti. 


## Real-time systems
Le funzionalità devono rispettare vincoli di tempo (scadenze, durate, t. di reazione)
Servono algoritmi di scheduling specifici. 

#### Real Time Soft
I task critici hanno precedenza ma si possono violare le deadline
#### Real Time Hard
deadline vanno rispettate 


### Algoritmi di scheduling Real-time
#### Priorità 
Con prelazione. Per garantire deadline hard e gestire task periodici. 
#### Priorità proporzionale a frequenza
Le priorità sono assegnate staticamente in base alla frequenza del task periodico. 
#### EDF (Earliest Deadline First)
Priorità assegnate dinamicamente. Prima il task con la scadenza più vicina. 
#### A quote proporzionali 
Tot di tempo di CPU ad ogni app


## Scheduling in UNIX
- Scheduling con code multiple e priorità dinamiche
- Per ogni coda si applica Round Robin 
- *Preemption* dopo 1s di utilizzo continuato della CPU 
- Il sistema assegna a ogni processo una priorità di base 
- Tutte le priorità sono poi ricalcolate ogni secondo.
- 



---




### Scheduling in sistemi multiprocessore

Multiprocessore può indicare: 
- CPU Multicore
- Core MultiThread
- Architetture NUMA (Non Uniform Memory Access)
- Sistemi operativi eterogenei
....

####  Scheduling Real time (cenni)


da file scheduling_new.pdf
E1) Si consideri uno scheduler che riceve 4 cpu-burst con le seguenti caratteristiche: 


| JOB | Durata stimata | Tempo di inizio | Priorità |
| --- | -------------- | --------------- | -------- |
| p1  | 15             | 0               | 2        |
| p2  | 21             | 5               | 1        |
| p3  | 4              | 9               | 3        |
| p4  | 8              | 10              | 1        |

Calcolare il tempo di completamento, tempo di risposta, tempo di attesa, di ogni job a seconda che lo scheduling impiegato sia: 
1. FCFS con latenza di dispatch nulla (ok)
2. Round Robin con quanto di tempo pari a 8 e latenza di dispatch nulla
3. FCFS con latenza di dispatch pari a 1 (ok, qualsiasi job prima di partire deve aspettare 1ms)
4. Round robin con quanto di tempo pari a 8 e latenza di dispatch pari a 1
5. Round Robin con quanto di tempo pari a 4 e latenza di dispatch pari a 1
6. SJF con latenza di dispatch nulla
7. SRTF con latenza di dispatch nulla
8. HRRF

---

# Sincronizzazione

## Processi concorrenti 
In un OS moderno vengono gestiti più processi in contemporanea. Possono essere indipendenti o cooperanti. 
In generale si avranno processi che compiono le loro azioni inframezzandole e usando risorse condivise (**interleaving e overlapping**). 
Si necessita di: 
- Sincronizzazione
- comunicazione 
- accesso a dati e informazioni condivise

### Esecuzione concorrente 
Accesso contemporaneo da parte di processi a dati condivisi può portare a problemi: 
- modifiche di dati in modo incoerente (lo switch di contesto può avvenire prima che il processo abbia completato tutte le modifiche)
- Non si devono verificare attese infinite 

#### Concetti essenziali 
> [!attention]  **Sezione Critica** 
> una sezione di codice che legge / scrive dati condivisi

> [!attention]  **Race Condition** 
 > Una situazione in cui l'esecuzione concorrente di una sezione critica da parte di più processi porta a risultati dipendenti dall'ordine in cui i processi alternano l'esecuzione delle loro istruzioni -> potenziale inconsistenze dei dati 
 
 > [!attention]  **Mutua Esclusione** 
 > Meccanismo con cui si evitano le race condition assicurando l'accesso esclusivo ai dati: i processi vanno autorizzati ad entrare in una sezione critica. 
 
 > [!attention]  **Deadlock** 
 > Situazione in cui dei processi sono permanentemente bloccati perchè in attesa del rilascio di risorse
 
 > [!attention]  **Starvation** 
 > Situazione in cui ad un processo che ha richiesto l'accesso ad una sezione critica NON viene permesso di evolvere perchè vengono servite le richieste di altri processi 
 
#### Esempio
Due processi collaborano nello svolgere un compito: un processo **produttore** produce dei dati che vengono utilizzati dal processo **consumatore**. Lo scambio dei dati avviene tramite un buffer condiviso. 

Anche se il codice dei due processi preso singolarmente è corretto, non funzionano in contemporanea: 
- Si possono generare inconsistenze nei dati
	- La gestione della variabile condivisa `counter` non è adeguata; possono essere eseguite `counter++` e `counter--` allo stesso tempo. 
- Le due istruzioni sono **sezioni critiche**
- Siamo in presenza di **race condition**. 

##### Soluzione: 

---

Un'istruzione **atomica** fa più cose ma è un'unica istruzione e non può essere interrotta. 

Uso di TestAndSet

