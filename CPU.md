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


