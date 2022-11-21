2022-11-14
# Schema base di un calcolatore 
## Fetch-Decode-Execute

Il compito del processore è di eseguire il ciclo **Fetch-decode-execute** il più velocemente possibile. 

### Fetch
Cpu carica una determinata istruzione macchina dalla memoria. 
### Decode
Determina il tipo di istruzione e i suoi argomenti
### Execute
Carica gli argomenti, svolge le operazioni necessarie a eseguire le istruzioni, memorizza i risultati e si predispone per il ciclo successivo. 

Il ciclo si ripete fino quando non si incontra un'istruzione di arresto. 

## Data path nel processore
Il percorso fisico dei dati comprende: 
- **registri** (memoria interna della CPU)
- Unità aritmetica e logica (**ALU**)
- **BUS** che collegano ALU e registri. 

La **ALU** esegue le sequenze di **micro operazioni** necessarie al completamento delle istruzioni.  (Aritmetica (+, -..) o logiche (AND, OR)

#### Micro-Operazioni
(Raramente un'istruzione macchina si compone di una sola micro-operazione)
> Eseguita nei data path in un **singolo ciclo di clock** 

Esempi: 
- calcolo di operazione aritmetica o logica con accesso limitato ai registri della CPU
- Singolo accesso alla memoria in lettura o scrittura

Il funzionamento dei data-path viene regolato da segnali dell'**unità di controllo.**

>[!hint]-  Unità di controllo 
> circuito sequenziale che coordina più in generale il funzionamento dell'intero processore. 
   Viene configurata dall'istruzione in esecuzione una volta caricata nell' **Instruction Register** (IR) 

Le micro-operazioni possono essere realizzate in due modi: 
- **Logica cablata**: si realizza l'hardware di un circuito sequenziale tradizionale. più complicato e costos oda realizzzare, meno flessibile ma più veloce. 
- **Logica programmata** l'unità di controllo è a sua volta una *micro-architettura* capace di eseguire micro-programmi. Più semplice, economico ma più lento. 

## RISC E CISC
### Reduced Instruction Set Computer 
ARM, torna ad essere competitiva negli ultimi anni. Più efficiente del 20-30%. 
### Complex Instruction Set Computer 
x86 IA-32 Intel, motivati da compatibilità di hardware preesistente. 


## Istruzioni macchina

Il programmatore sfrutta la compilazione di un programma scritto in linguaggio di alto livello (Java, C++)
- Il **compilatore** traduce il programma sorgente ad alto livello in codice macchina che realizza la procedura da eseguire
- L'**interprete** traduce una sequenza di istruzioni di alto livello nella corrispondente sequenza di istruzioni macchina -> *bytecode*
==MIC== esegue le istruzioni macchina generate dal compilatore (bytecode)
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
