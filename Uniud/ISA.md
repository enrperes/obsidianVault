2022-11-22
# Instruction Set Architecture level
> insieme delle istruzioni macchina a bordo di un processore. 
> ISA definisce l'interfaccia tra **software e hardware** sfruttando la CPU al meglio delle possibilità 

- CISC - linguaggio macchina più simile a un linguaggio di alto livello
- RISC - poche semplici istruzioni macchina
- VLIW - (Very Long Instruction Word) - estensioni necessarie alle funzionalità più avanzate del processore

### Le istruzioni macchina devono: 
- Sfruttare hardware veloce e a basso costo con poche funzionalità 
- Essere robuste e bug-free
Di conseguenza la loro espressività è limitata: 
- Semplici operazioni aritmetico-logiche 
- Poca memoria accessibile durante l'esecuzione
- Valutazione di semplici condizioni

### Problema retrocompatibilità 
Contunuare a eseguire codice compilato per ISA obsoleto rispetto a un hardware evoluto nel tempo? 
Gli ISA vengono progettati per adattarsi allo sviluppo tecnologico. 

### Caratteristiche di un ISA
ISA interfaccia dal livello 1 al livello 3. Specifica: 
- funzioni del processore
- istruzioni eseguibili
- tipi di dati comprensibili dal processore
- modello di memoria prinipale
- formato di ogni istruzione
- modalità di indirizzamento 
- modalità di funzionamento 
- gestione ingressi I/O

### Funzioni del processore
Definiscono il comportamento del processore. 
- Ogni comportamento è specificato in modo normativo, attraverso una descrizione delle operazioni in cui si tralasciano quelle lasciate a specifiche customizzazioni del processore. 
### Categorie di istruzioni
Quasi tutte le ISA specificano le seguenti categorie di istruzioni: 
- **movimento dati** con i registri e la memoria: `LOAD, STORE, MOVE...` 
- **Operazioni** aritmetiche, logiche, traslazioni, rotazioni... `ADD, AND, SHIFT_LEFT, ROT` 
- **Salti** incondizionati e condizionati: ` JUMP, GOTO, BRANCH...`
- **Chiamate a procedura di sistema operativo**: `INVOKE, SYSCALL, SWI`

#### TIpi di dati hardware
Quasi tutti i processiono sono in grado di operare su alcuni dei seguenti tipi di dato. 
- **Numerici** 
	- Naturali
	- interi
	- virgola mobile 
	- BCD (binary  code decimal format 8 bit)
- **Non numerici**
	- booleani (1 bit)
	- caratteri (8, 16 bit)
	- riferimento a indirizzi di memoria (32, 64 bit)
	- Dati vettoriali 

### Modello di memoria principale 
La memoria principale può essere logicamente unica oppure suddivisa in **area istruzioni** e **area dati**. 
#### Registri 
- PC
	- Program Counter: memorizza l'indirizzo dell'istruzione successiva a quella in esecuzione
- IR
	- Instruction Register: memorizza l'istruzione in esecuzione
- PSW
	- Program Status Word: descrive lo stato del programma. 

##### Registri della famiglia Intel x86 
##### Registri nella famiglia ARM 


### Istruzione a 16 bit per la somma
L'istruzione macchina è poco comprensibile. Si usa una sua versione in stile **assembly**. 
ES: depositare in `Ra` la somma del contenuto di `Rb + Rc` : 
```assembly
ADD Ra, Ab, Rc
```

La CPu che esegue un'istruzione di questo tipo, quanti registri al massimo può contenere? 
	4 bit per il primo argomento, 4 per il secondo, 4 per il terzo: 16. 


### Modalità di indirizzamento 
#todo (slides
 )