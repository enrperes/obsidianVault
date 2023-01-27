---
cssclass: list-indent-color
---


[[Architettura degli elaboratori-info]]

2022-09-30 10:37

#### Architettura di calcolo: 
Macchina capace di eseguire una sequenza di istruzioni semplici = **Istruzioni Macchina**
**Programma**= Sequenza di istruzioni macchina. 
I Programmi e i dati risiedono nella memoria principale (RAM). In caso di inattività la memoria principale si svuota e i programmi vengono salvati come *File* nella memoria di massa. 

#### Sistema operativo 
> Particolare programma che permette un razionale utilizzo del processore, della memoria e delle periferiche. è permanentemente in esecuzione e distribuisce le risorse del computer a tutti i programmmi. 

I *programmi applicativi* sono sotto il controllo del sistema operativo durante la loro esecuzione, per garantire un utilizzo delle risorse efficiente. 

#### Macchine virtuali 
Il computer viene visto come un astratificazione di *livelli*. Ciascun livello fornisce delle funzionalità di calcolo. Le *macchine virtuali*  forniscono una serie di funzionalità ulteriori. 
![[Pasted image 20220930112436.png|300]]

### Storia dei sistemi di calcolo
(...)

### ***Circuiti logici (Booleani)***
2022-10-03 09:35

Mappano *k* segnali binari in ingresso (input) a *m* segnali binari in uscita (output). 
La **Tabella di verità** fornisce una descrizione esaustiva del circuito: per ogni combinazione di valori in input specifica il valore di output. 
> Con *k* ingressi le possibili combinazioni sono **$2^k$**

## Algebra booleana
= *Espressioni algebriche* che descrivono le porte logiche. 
Permettono di:
- Verificare l'*equivalenza* tra due circuiti senza la tabella di verità. 
- Minimizzare il numero di porte e il costo delle porte. (Ottimizzare il circuito)

![[Pasted image 20221003110458.png|500]]

**OR = +
AND = * **
- Il segno del prodotto può essere omesso: $AB = A \cdot B$
- Il prodotto ha precedenza sulla somma
- Raramente la negazione è rappresentata con ' : $(A+B)' = a$

#### Proprietà algebra booleana
- ![[Pasted image 20221003111405.png|400]]

Assorbimento: $A+(A \cdot B) = A(1 \cdot B) = A \cdot 1 = A$
2022-10-07
#### Dualità e complementarietà 
Data un'espressione booleana, la sua negata si ottiene negando le variabili, scambiando le operazioni + e * e scambiando le costanti 0 e 1. 
$E = A+\not{A} \cdot (B+0)$ -> $\not{E} = \not{A} \;\; \cdot (A+\not{B} \cdot 1)$
- Negazione variabili (gli ingressi della tabella di verità)
- Scambiare + con * e viceversa
- Scambiare 0 con 1 e viceversa

---

2022-10-11
#### Propagazione del ritardo
- I circuiti logici rispondono con un ritardo di $10^{-10}$s, perchè il valore di tensione non cambia istantaneamente. 
- Il ritardo viene sommato in presenza di porte logiche a cascata. [[Sommatore|Il sommatore è lento]].

#### Circuiti con memoria
Il comportamento passato ha effetti sull'uscita all'istante presente. 
**Retroazione**: riutilizzo dell'uscita nell'ingresso -> Il circuito non può essere tradotto in espressione booleana.  (ricorsione)
[Latch set-reset (wiki)](https://en.wikibooks.org/wiki/Digital_Circuits/Latches) => circuito con memoria. 

![[Latch Set Reset]]

#### Clock
Il segnale periodico che scandisce il funzionamento dei circuiti sequenziali. (*onda quadra*)
Un segnale è periodico se esiste un intervallo di tempo detto *periodo* in cui il segnale si ripete identici. 
**Frequenza di clock [Hz]** = 1 / periodo di clock. 
![[Pasted image 20221011110529.png|400]]

###### Periodo di clock: 
Per avere prestazioni più elevate il periodo di clock dovrebbe essere più breve possibile. 
Ogni circuito ha un tempo di commutazione che **non** può essere superiore al periodo di clock. 
Periodo di clock: da 1 a 10ns -> Frequenza: da 1GHz a 100MHz. 


2022-10-17 - 09:52 
## Circuiti integrati (IC, Chip)
Unità contententi circuiti logici
- Piastrina di silicio di qualche cm^2 
- Transistors, resistors, capacitors + relativi collegamenti vengono formati sulla superficie. (formati esponendo il cristallo a vapori di altre sostanze (boro, arsenico, fosforo))
- I collegamenti vengono ottenuti depositando uno strato di materiale conduttore (rame, alluminio)
- Gli Isolamenti elettrici sono ottenuti 
- Fotolitografia 
	- Silicio selettivamente coperto e poi illuminato
		- Parte illuminata solidifica e forma il circuito
		- Parte al buio rimossa 


Ogni chip è impacchettato in un *package*. 
- Chip di memoria e semplici processori: due fili di piedini (*dual in line package*)
- Chip per computer, schede video: centinaia di connessioni 

Le **Locazioni** di memoria sono accessibili individualmente tramite il loro indirizzo. 
Per operare su un dato in memoria: 
- Si seleziona la locazione contenente il dato specificando il suo indirizzo
- Si definisce l'operazione da eseguire: Lettura o scrittura

Una memoria deve assicurare l'accesso ai seguenti segnali **I/O**
- Indirizzo 
	- Specifica la locazione su cui si opera 
- Dato in ingresso 
	- da scrivere nella locazione
- Dato in uscita 
	- da leggere nella locazione
- Segnali di controllo 
	- Chip Select (CS)
		- Attiva il chip
	- Read, Write (RW) 
		- Speficia se l'operazione è di scrittura o lettura
	- Output enable (OE) abilita l'uscita
Ingresso e uscita avvengono sugli stessi piedini

10:41 2022-10-17
## Memorie RAM

Costituiscono la **Memoria principale** dei calcolatori. 
- *Statica* (SRAM): I singoli bit vengono memorizzati con latch (Flip-Flop). Veloce e costosa, utilizzata nella memoria di basso livello. 
- *Dinamica* (DRAM): Usa altre tecnologie di memorizzazione. Lenta e capiente. Utilizzata nella memoria di alto livello. 

### DRAM 
Un singolo transistor più un condensatore per memorizzare un bit. 
![[Pasted image 20221017104219.png|300]]
Il condensatore è controllato dal transistor, aperto o chiuso in base alla *word line*.
- Transistor aperto 
	- Condensatore assume la tensione sulla bit line. 
- Transistor chiuso
	- Il condensatore per un po' conserva il livello di tensione. 

#### Lettura DRAM 
Avviene in due fasi: 
- RAS
	- Row Access Strobe
- CAS 
	- Column Access Strobe


#### Pregi e difetti: 
- Più economiche e compatte delle SRAM. 
- Più lente delle SRAM
- Complessità della conservazione dello stato. I condensatori si scaricano in 1ms, 

Le DRAM hanno migliorato più la banda passante rispetto al tempo di accesso: 
- Banda passante: quantitaà di dati trasmessi per unità di tempo
- Tempo di adesso: tempo necessario per completare una singola operazione in memoria. 

*Random Access Memory*: Non si accede a ogni dato nello stesso tempo. 

La crescita della capacità segue la legge di Moore. 

**CAPACITA' (in bit, della memoria) = 2^{linee di indirizzo} X Linee dati**

19 linee di indirizzo x 8 linee di dati -> 2^19 x 8 = 4Mbit 
11 linee indirizzo, RAS e CAS -> 11 * 2 linee. --> 2^22 * 1 = 4Mbit 

### Tipi di memorie permanenti 
- **ROM** 
	- Read Only Memory
		- scritte nel momento in cui sono prodotte
- **PROM** 
	- Programmable ROM 
		- Scrivibili in un'unica volta 
- **EPROM**
	- Erasable PROM
		- Cancellabili mediante esposizione a UV
- **EEPROM**
	- Electrically EPROM 
		- Cancellabili tramite bit (carica elettrica)
- **Flash**
	- Particolari EEPROM cancellabili a banchi (SSD: dischi a stato solido)
	- Come RAM che mantengono i dati senza corrente. 

---


## Codifica dei dati
2022-10-18 10:53

La base di un numero è indicata con un pedice: $2_{10}$; $001001_2$
Nel caso di base non decimale la base è specificata da un prefisso: per la base 16: *0xABCD*

### Conversione da base B a 10

Applicare la definizione di notazione posizionale (sommare le singole cifre ciascuna con il suo peso) è un modo **inefficiente** per convertire. 

[registrazione 11:02] [procedimento su GN]

`` 	"risultato" <-- "risultato" * B + "nuova cifra" (0 o 1) ``



è come eseguire una traslazione verso destra. [TRASLATORE] #todo 

Nelle conversioni frazionarie da base B a base 10 è più efficiente **accumulare** progressivamente il peso delle cifre nella sequenza. 

`` 	"risultato" <-- "risultato" / B + "nuova cifra" (0 o 1) ``
Il risultato è ancora frazionario, eventualmente costituito da un numero *infinitamente* grande di cifre: $1_3 \; / \; 3 \; parti = 0.1_3$ - In base 10 $\dfrac 1 3$ = $0.\bar3$

### Conversione da base 10 a B
Si applica direttamente la definizione di notazione posizionale. **scomporre** in termini potenze di 2 per approssimazioni successive sulla parte intera e su quella frazionaria. 
#todo 

**Domanda per esame**: Da base 10 a base 2: 

![[Pasted image 20221018112111.png|300]] (Isolamento della parte intera)

Isolamento della parte frazionaria: 
Nelle conversioni frazionarie da base 10 a base B è più efficiente isolare progressivamente le cifre nella nuova base. 
Moltiplicando un numero frazionario per B ottengo la cifra frazionaria più a sinistra nella nuova base come parte intera della moltiplicazione. 

### Conversione esadecimamle <- -> ottale

11:43 

Non passare attraverso base 10 per conversioni di base che sono potenze tra di loro (8 e 16)

### Aritmetica del calcolatore

- *Signed*: numeri interi
- *Unsigned*: numeri naturali
- *Float*: numeri reali

Sono rappresentati in ogni caso con un numero fissato di cifre. 
- Naturali e interi: **16** o **32** bit. (fixed point)
- Reali: **32** o **64** o **128** bit. (floating point)

L'insieme dei valori rappresentabili è quindi limitato a $2^{16,32,64,128}$ codifiche. 
#### Codifiche di interi
I valori sono memorizzati con diverse codifiche.

- **Segno e valore assoluto**: 
	- (Cambio di segno: si nega il bit più significativo)
	- $9_{10} = 0 0001001$ -> $-9_{10} = 1 0001001$
- **Complemento a uno**: 
	- (cambio di segno: si nega ogni bit)
	- $9_{10} = 0 0001001$ -> $-9_{10} = 1 1110110$
- **Complemento a due** ⚠️
	- (cambio di segno: si nega ogni bit e si incrementa di 1)
	- $9_{10} = 0 0001001$ -> $-9_{10} = 1 1110111$
- **Eccesso N**
	- Zero va su N: se N = 2^7 = 128, #todo 


##### Cofica complemento a due
Codice per ottenere un numero in **complemento a due a N bit: **
- I valori tra 0 1 2^{N-1} -1 sono normalmente codificati in notazione binaria. 
- I valori tra -1 e -2^{N-1} sono codificati *negando ogni bit del rispettivo valore assoluto in notazione binaria e poi sommando 1*

Es: (N=8)

- $- 1_{10}$ -> $11111110_2$ + $1_2$ = $11111111_2$

**Quindi:** usando N bit, la codifica del numero *-i* equivale al numero *2^N -i* espresso in base 2. 

Si possono sommare numeri negativi con negativi e positivi con positivi. Per sommare positivi con negativi bisogna fare il cambio di segno. 

###### Vantaggi del complemento a due: 
- è immediato il riconoscimento del segno in quanto *il numero è negativo se e solo se* il bit più significativo è **uguale a zero**
- La somma algebrica non necessita di complicare il sommatore 
- La sottrazione si calcola sommando il secondo termine dopo averlo cambiato di segno
- L'estensione a una codifica di M > N bit si ottiene immediatamente aggiungendo M-N cifre uguali al segno alla codifica di N bit. 

###### Operazioni in complemento a due
- Somma
- Opposto
	- nego e poi incremento
- Sottrazione
	- sommo l'opposto del secondo termine
- Prodotto
	- sommo per un numero di volte uguale al termine positivo
- Divisione
	- sottraggo il divisore fino ad annullare il dividendo, contando le sottrazioni. 

### OverFlow

Quando il risultato di un'operazionee non è rappresentabile, l'Hardware segnala un **overflow**
Somma di numeri grandi in assoluto, con lo stesso segno. 
Nella codifica complemento a due c'è overflow solo se sommo due numeri con lo stesso segno. 

---

2022-10-24 

## Mantissa ed esponente

![[Pasted image 20221024094211.png|400]]

Mantissa: numero frazionario 
Esponente: numero intero

--- 

# Codifica di carattere
**Carattere** = simbolo appartenente a stringa testuale 
- cifre 
- simboli speciali (#, @, %, &, $)
- Caratteri speciali (enter, esc, tab)

![[Tecnologie Web#ASCII|ASCII]]


2022-10-25 10:39

## Codici di carattere

- **Compatto**: limitare il numero di bit necessari
- **Pratico**: ottenere le codifiche con calcoli semplici
- **Accurato**: conservare tutte le informazioni con errori trascurabili. 
	- Nella trasmissione dei dati si verificano errori causati da disturbi, imperfezioni, radioattività.

**Codici di correzione degli errori**
Per rilevare e correggere errori: si introduce **==ridondanza==** nelle informazioni.
- Il trasmettitore aggiunge informazioni di controllo
- Il canale/supporto trasmette più bit del necessario 
- Il ricevitore controlla la presenza di errori sfruttando le info ridondanti. 
Gli errori sono resi **rari** ma non impossibili. 

Esempio di ridondanza: trasmettere ogni carattere due o tre volte: *ccaassaa*
Non ci sono codici a prova di errore.

### Codici di parità 
> introduce 1 bit di controllo per ogni 7 bit 

Hanno un singolo bit ridondante, sono molto usati nella pratica. 
- DAti suddivisi in parole id N bit. 
- Ad ogni parola viene aggiunto un **bit di controllo**, in modo che N+1 totale di bit uguali a 1 della codifica sia sempre pari o sempre dispari.  (il numero di uni nel byte deve essere sempre pari o sempre dispari)
- Il ricevitore: 
	- Verifica la parità o disparità
	- Non può correggere eventuali errori
	- Non può rilevare errori che modificano un numero pari di bit in una codifica. 


### Codice di correzione di Hamming 
> Introduce 3 bit di controllo per ogni parola di 4 bit. 

- Divide la sequenza binaria di bit informativi in sottoinsiemi non disgiunti 
- Associa ogni bit ai sottoinsiemi a cui appartiene 
- Aggiunge un bit di parità per ogni sottinsieme
- **Il ricevitore:**
- Valuta la parità su ogni sottoinsieme
- Se rileva un errore elenca i sottoinsiemi contenenti l'errore
- Se possibile corregge l'errore negando il bit che appartiene a tutti i sottoinsiemi errati. 

I bit di parità sono quelli la cui posizione è una potenza di due: 1, 2, 4, 8... e controllano i bit la cui posizione contiene la cif ra 1 nella stessa posizione. 
es: 
	
010 controlla: #todo 
	- 011
	- 110 
	- 111

#### Costo di un codice
Rapporto tra: Simboli ridondanti / simboli utili 
- Ripetizione doppia del carattere: costo 1 (100% dei simboli aggiuntivi)
- Ripetizione tripla del carattere: costo 2 (200%)
- Parità: 1/N con N = dimensione del dato binario. 

Codifiche **valide**: pacchetti di bit ottenibili da un dato applicando un codice. 
Codifiche **non valide**: tutti gli altri pacchetti
Il trasmettitore genera solo codifiche valide. Il ricevitore controlla se è valida. 

### Distanza di Hamming (≠ Codifica di Hamming! )
> Fornisce una misura di "differenza" tra coppie di codifiche valide. 

Nei codici binari a lunghezza fissa è il *numero di coppie di bit allineati **non** coincidenti*
Più le codifiche sono lontane più il codice è ridondante #todo 

Distanza minima tra le coppie di codifiche valide distinte #todo ?????????????

# [[CPU]]

# [[ISA]]

# [[Motherboard]]

# [[Memoria fisica]]

#[[Arduino]]