e2022-11-14
[[06_processore_221115_104717.pdf]]

# Schema base di un calcolatore 
## Clock 
Un circuito di temporizzazione (clock) invia pulsi elettrici alla CPU a velocità costante (qualche miliardo di cicli al secondo). Questi impulsi guidano l'attività all'interno della CPU e altri componenti. 

## Istruzioni
Tutte le CPU hanno un set di istruzioni semplici predefinite: 
### ALU  (Arithmetic Logic Unit)
![[6B1D0292-8837-4805-BC94-8BD5CD2802C7.png|150]] (ALU)
Processore digitale preposto all'esecuzione di operazioni **aritmetiche** (somma, moltiplicazione) e **logiche** (and, or..) 
Un singolo processore moderno può contenere anche più di un'ALU. 

### Control Unit
Circuito sequenziale che coordina le attività tra le parti di lavoro del processore. Suddivide ogni istruzione in una serie di azioni. Ordina ai vari sottosistemi della CPU di eseguire le azioni. (es. Ordina all ALU di moltiplicare due numeri.)
Viene configurata dall'istruzione in esecuzione una volta caricata nell' **Instruction Register** (IR) 

### Memoria
ALU agisce direttamente sui registri. La quantità di memoria è molto limitata. Le istruzioni e i dati utilizzati di recente / spesso vengono conservati nella cache, che migliora l'efficienza. 

## Fetch-Decode-Execute
Schema di un processore: 
![[C73F1410-9AF6-4857-987A-909691773973.png|300]]
Il compito del processore è di eseguire il ciclo **Fetch-decode-execute** il più velocemente possibile. 
In generale, un processore: 
- *Fetcha* l'istruzione dalla memoria primaria
- *decodifica* l'istruzione
- *executes* l'istruzione
In questo modo il processore esegue sequenzialmente istruzioni che creeranno **thread** e **processi**, sotto la supervisione del **sistema operativo** e dello **scheduler**. 

### Fetch
L'indirizzo della prima cella di memoria (contenente l'istruzione per l'esecuzione delle fasi successive del programma (lanciato dal sistema operativo)) viene inserito nel [[CPU#PC|PC]] (Program Counter). 
La CPU carica l'istruzione dalla memoria principale (mediante *data bus*) nella [[CPU#MDR|MDR]] (Memory Data Register). Dalla MDR viene depositato nell' IR (Instruction Register), dove rimane in attesa di essere decodificata e eseguita. 

### Decode
CPU carica i dati richiesti dalla memoria principale per essere processati e depositati nei registri. Dall' IR l'istruzione viene decodificata dal [[CPU#Control Unit| Control Unit]]. Al termine, Program Counter aumenta di 1 l'indirizzo contenuto in memoria per indicare che la prossima istruzione è contenuta in una nuova cella di memoria. 

### Execute
Carica gli argomenti, svolge le operazioni necessarie a eseguire le istruzioni, memorizza i risultati e si predispone per il ciclo successivo. 

> Il ciclo si ripete fino quando non si incontra un'istruzione di arresto. 


## Data path nel processore
Il percorso fisico dei dati comprende: 
- **registri** (memoria interna della CPU)
- Unità aritmetica e logica ([[CPU#ALU (Arithmetic Logic Unit)|ALU]])
- **BUS** che collegano ALU e registri. 

#### Micro-Operazioni
(Raramente un'istruzione macchina si compone di una sola micro-operazione)
> Eseguita nei data path in un **singolo ciclo di clock** 

Esempi: 
- calcolo di operazione aritmetica o logica con accesso limitato ai registri della CPU
- Singolo accesso alla memoria in lettura o scrittura

Il funzionamento dei data-path viene regolato da segnali dell'**unità di controllo.**

>[!hint]-  Unità di controllo 
>![[CPU#Control Unit]]

Le micro-operazioni possono essere realizzate in due modi: 
- **Logica cablata**: si realizza l'hardware di un circuito sequenziale tradizionale con cavi e diodi. Si possono realizzare porte AND e OR ma non NOT. più complicato e costos oda realizzzare, meno flessibile ma più **veloce**. 
- **Logica programmata** l'unità di controllo è a sua volta una *micro-architettura* capace di eseguire micro-programmi. Più semplice, economico ma più lento. 

## RISC E CISC
### Reduced Instruction Set Computer 
Il numero ridotto di istruzioni memorizzate nel microprocessore accelera notevolmente i tempi di elaborazione dati. Sfruttano il fatto che la maggior parte delle istruzioni per i processi sono semplici e di conseguenza veloci da eseguire. Rendendo l'architettura del processore più semplice si fa più utilizzo del software. 
I processori ARM si basano su architetture RISC. 
Sono più economici, efficienti del 30%, e veloci. 

### Complex Instruction Set Computer 
Architettura CISC contiene un ampio set di istruzioni (semplici e complesse).
x86 IA-32 Intel, motivati da compatibilità di hardware preesistente. 
Tra i vantaggi: 
- più facile scrivere codice assembly CISC che RISC 
- Avendo numerose istruzioni ben definite, i linguaggi di alto livello sono più facili da programmare e implementare. 


## Istruzioni macchina
Il programmatore sfrutta la compilazione di un programma scritto in linguaggio di alto livello (Java, C++)
- Il **compilatore** traduce il programma sorgente ad alto livello in codice macchina che realizza la procedura da eseguire
- L'**interprete** traduce una sequenza di istruzioni di alto livello nella corrispondente sequenza di istruzioni macchina -> *bytecode*

==MIC==: esegue le istruzioni macchina generate dal compilatore (bytecode)
MIc è implementato dall'architettura ARM. Più frequentemente il bytecode è interpretato dalla **Java Virtual Machine** --> ==JVM==  
La porzione di memoria principale dedicata a un programma eseguito da MIC si compone di tre parti: 
1. Area del codice 
	1. Istruzioni macchina
2. Area dell'elba costanti 
	1. Dati costanti usati nel programma 
3. Area Stack 
	1. Dati variabili usati nel programma 

---

2022-11-15

# Mic-1 
Appunti sul file 06 - Notability + File Mic-1 Zotero 


**Mic-1** è un micro-codice. 

## Circuito di Controlllo 
Invia più tipi di segnali: 
- Ai registri l'accesso in lettura e scrittura
- All'area Stack della memoria l'accesso in lettura e scrittura 
- All'area codice della memoria l'accesso in lettura per il fetch 
- Alla ALU la micro-istruzione da eseguire 
L'istruzione successiva nel registro MBR viene determinata via: 
- L'istruzione corrente nel registro MBR
- La micro-istruzione, se l'istruzione corrente prevede un **salto** altrove nell'area codice, in base all'esito di una condizione *if*
- L'uscita della ALU, se l'istruzione corrente prevede un salto condizionato dal risultato. 

## Utilizzo del ciclo di clock 

2022-11-21
## Parallelizzazione micro-operazioni (Pipelining)
- Esecuzione istruzione macchina divisa in più **stati**, ciascuno realizzato da una micro operazione. 
- Le micro-operazioni di ogni stadio possono essere eseguite in **parallelo** a quelle di altri stadi.
- A ogni ciclo di clock sono eseguiti contemporaneamente più stadi. 
> **Pipelining** velocizza il flusso di calcolo ma non i tempi di risposta. 

Lunghezza tipica di una pipeline: 7-14 stadi. 

1. INstruction Fetch Unit
2. Decoder 
	1. decodifica delle istruzioni macchina
3. Queue 
	1. Accodamento: riordina le istruzioni macchina diversamente (con il decoding possono venire spostate)
4. Operands
	1. Acquisizione di dati
5. Exec
	1. Segue le istruzioni macchina 
6. Write back
7. Memory

i **Processori superscalare** eseguono più istruzioni macchina **contemporaneamente**. Quindi possiedono più pipeline operanti in  **parallelo.** La **superscalarità** migliora ulteriormente il rapporto istruzioni / cicli di clock. 
![[Pasted image 20221121095511.png|600]]
- Il primo stadio preleva più istruzioni dalla memoria e le instrada su più pipeline. 
- Le istruzioni sono eseguite lungo stadi **identici** che operano in parallelo. 
- ==***Dipendenza tra istruzioni***==  (in relazione alla dipendenza tra i dati) impedisce la conclusione di una istruzione se uno stadio finale singolo (o un sistema di controllo) termini in modo **ordinato** le istruzioni. 
	- In un programma le istruzioni devono essere logicamente eseguite nell'ordine in cui sono state scritte. 
	- Esecuzioni parallele non controllate portano a errori. 
- **RAW**
	- Read after Write
	- `R0 = R1`
	- `R2 = R0 + 1`
- **WAR**
	- Write after Read
	- `R1 = R0 + 1`
	- `R0 = R2`
- **WAW**
	- Write after Write
	- `R0 = R1`
	- `R0 = R2 + 1`

Le dipendenze vengono rilevate mediante una **Tabella delle dipendenze** (Scoreboard). realizzata in una memoria riservata a tale scopo. Per ogni registro il processore conta gli accessi in lettura e scrittura rimasti in sospeso, dipendenti da istruzioni non terminate. 
Le istruzioni dipendenti da istruzioni non terminate devono essere tenute in sospeso. 
Si creano **bolle**: stadi (in una pipeline) bloccati dal completamento di stadi in altre pipeline. Bolle portano a una perdita di prestazioni. Soluzioni: 
1. **Esecuzione fuori ordine**: si eseguono istruzioni non dipendenti
2. **Registri ombra**: si memorizzano dati dipendenti (che fanno coda) su copie dei registri (specificati dall'istruzione) 
3. **register renaming**: il processore alloca registri diversi da quelli specificati dall'istruzione (simile ai registri ombra)
4. **Multi-threading**: si eseguono più programmi contemporaneamente, necessario duplicare i registri. 
	1. **Hyper threading** ulteriore evoluzione. 

### Esecuzione di salti condizionati
Il processore impiega alcuni cicli di clock per valutare una condizione. Nel frattempo non sa se eseguire o saltare le istruzioni successive: 
- **Stall**: La CPU non prosegue fino al completamento della valutazione della condizione. Logicamente corretto ma lento 
- **Predizione e speculazione**: La CPU esegue istruzioni sotto condizione. L'esecuzione è annullata se la previsione si rivela errata. 
	- **Predizione statica**: 
		- **Semplice:** le istruzioni che seguono un salto all'indietro (dopo una condizione, si torna indietro nella pipeline) sono sempre eseguite sotto condizione. 
		- Ogni salto condizionato è accompagnato da un suggerimento generato da un **profiler** durante la compilazione o dal programmatore.
	- **Predizione dinamica:** tramite accesso a una history table mantenuta aggiornata con gli esiti dei precedenti salti condizionati. 


### Accesso alla memoria e caching 
L'accesso alla memoria resta un'operazione troppo lenta. Il processore deve attendere la conclusione del servizio anche per più di una decina di cicli di clock. Si fa uso di uno o più livelli di memoria più veloce (e costosa) = **memoria cache**. L'efficacia di tale memoria è legata a come sono selezionati dati e istruzioni che la occupano. Trattenere troppe info non in uso in cache è peggio che non averla. 
Tipicamente si ha qualche MB di cache. 

### Architettura Sandy bridge 

Intel's 32nm microarchitecture used in second generation of Intel Core (i7, i5, i3). Intel released the first Sandy Bridge processors in 2011 under the *Core* brand. 

### ARM architecture 
#### SoC:
**System on Chip**: Ram, GPU, CPU sono integrati in un unico chip. 
#### ARM Cortex A9
- Progetto Acorn realizzato messo su chip da vari costruttori 
- Core integrato in SoC
- Implementa istruzioni macchina ARM v7
- Strutturalamente simile al Core i7
	- Manca lo stadio iniziale di traduzione (nasce infatti come macchina [[CPU#RISC E CISC|RISC]]) 

