---
tags:
  - materia
---
[[info - Basi di dati]]
[[Lab - Basi di dati]]

---
## Argomenti del corso
1. Introduzione
2. Modelli dei dati 
3. Progettazione basi di dati 
4. Linguaggi
5. Transazioni
6. Strutture di indicizzazione

---

# Introduzione
Caratteristiche distintive di una base di dati: 
- **Persistenza**: 
	- Dati che persistono nel tempo (nella memoria secondaria)
	- Esiste indipendentemente dai programmi che interagiscono con essa. 
- **Mole**:
	- Grande quantità di dati (> della capacità della memoria primaria disponibile)
	- Il sistema deve decidere quali dati caricare e mantenere nella memoria primaria, eseguendo in modo efficiente le frequenti operazioni di trasferimento dei dati dalla secondaria alla primaria e viceversa. 
	- Minimizzare il numero di trasferimenti è essenziale 
- **Globalità**:
	- spesso i dati devono essere reperibili da diversi utenti / programmi -> Necessario disciplinarne l'utilizzo. 
	- Devono essere specificati e gestiti i diritti di accesso ai dati e garantita la privacy dei dati sensibili. 
	- I possibili conflitti fra utenti diversi che vogliono operare sugli stessi dati vanno risolti 

Caratteristiche generali di un sistema informatico:
- Facilità d'uso (indipendenza dei dati)
- Efficienza delle operazioni di accesso ai dati (strutture di indicizzazione e ottimizzazione delle interrogazioni);
- Efficacia, convenienza

###  DB vs FileSystem
 
 Insieme di file + insieme di programmi per gestire questi file

1. Sistemi di basi di dati vs programmi
2. Sistemi di basi di dati vs sistemi operativi 

Esempio: applicazione in ambito bancario: 
- **Ridondanza e inconsistenza dei dati** 
	- impossibile non creare ridondanza usando file "normali"
	- Ridondanza introduce inconsistenza ⚠️
- Difficoltà di accesso ai dati 
- Disomogeneità dei dati 
- Problemi di integrità dei dati 

## Rappresentazione dei dati 
Due modi: 
- [[Modello Entità-Relazioni]]
	- Grafico, basato sui valori 
	- Rappresentato con [[schemi concettuali]] 
- [[Modello relazionale]] 

Progettazione DB = passaggio da modello ER a modello relazionale 

NB: Nella descrizione non compare mai il contesto (es: filiale di una banca) ma solo le entità ⚠️ 

Per ogni entità introdotta ci dev'essere almeno una **chiave**: 

> [!attention]  **Chiave** 
 > Sottoinsieme minimale di attributi che identifica univocamente le istanze di una data entità. 
 > Negli schemi concettuali si indicano annerendo l'attributo. 
 > 

# Base di dati 
> Collezione di dati usata per rappresentare informazione di interesse per un dato sistema informativo 

Supportano **astrazione sui file**
- Livello fisico 
- Livello logico / concettuale
- Livello delle viste

### DBMS
> DataBase Management System
> Collezione di file interconnessi e insieme di programmi che consentono di accedere e modificare tali file 

# Modelli dei dati 

> Modello dei dati = collezione di strumenti concettuali per descrivere i dati, le loro relazioni e i vincoli di consistenza sui dati. 

In ordine cronologico: 
1. Modelli reticolare e gerarchico
2. Modelli relazionale ed entità/relazioni
3. Modello orientato agli oggetti
4. Modelli basati sulla programmazione logica
5. Modelli ibridi relazionali e orientati agli oggetti
6. Modelli dei dati basati su XML

Esistono due possibili $\color{orange}\large\text{classificazioni}$: 

- Modelli basati sull'**identità degli oggetti** (reticolare, gerarchico, orientato agli oggetti) vs modelli basati sui **valori** (entità / relazioni, relazionale, XML)
- Modelli basati sugli **oggetti** vs basati sui **record**  

$\color{orange}\large\text{Schema:}$ Descrizione formale della struttura di un database, è la chiave di lettura dei dati
$\color{orange}\large\text{Istanza:}$ insieme dei valori
L'istanza varia nel tempo, lo schema rimane solitamente invariato. 

 Scegliere gli attributi di ogni tabella in modo che vi sia **almeno** una chiave: non ci devono essere due istanze concrete che sono diverse ma non distinguibili in base agli attributi scelti. 

$\color{orange}\large\text{Database Manager}$ supporta le seguenti funzionalità: (il software)
- Interazione con file system
- Gestione dei vincoli di integrità 
- Gestione della sicurezza
- Backup e recovery 
- Controllo della concorrenza

Il $\color{orange}\large\text{Database administrator}$ è il responsabile dei dati e delle relative procedure di accesso (figura umana responsabile di:)
Svolge le seguenti funzioni: 
- Definizione dello schema
- Definizione strutture di memorizzazione e dei relativi metodi di accesso 
- Modifica schema logico e organizzazione fisica
- Assegnazione autorizzazioni di accesso 
- Specifica vincoli di integrità 

$\color{orange}\large\text{Utenti base di dati:}$ 
Esistono più classi di utenti in base alle modalità di interazione: 
- Naïve: interazione trasparente tramite interfacce (non consapevoli di stare interagendo con un database)
- Sviluppatori: Usano linguaggi di alto livello per sviluppare applicativi, usano DML all'interno di linguaggi host
- Sofisticati: usano DML come SQL

## Linguaggi per basi di dati: 
#### DDL 
Linguaggi per la Definizione dei Dati. 
Creazione del dizionario dei dati e eventuale definizione delle strutture di memorizzazione e dei metodi di accesso ai dati 

#### DML
Linguaggio per la manipolazione dei dati 
Fanno riferimento alle istanze. 
- Di interrogazione ★
	- Linguaggi procedurali
	- Linguaggi non procedurali
		- SQL
		- Ma poi l'ottimizzatore traduce in linguaggio procedurale, le distinzioni non sono ben definite. 
- Di aggiornamento 

![[Pasted image 20241008131544.png#invert|600]]

Storage Manager si interfaccia con i dati 
Query processor interagisce con gli utenti 

## Struttura di un DBMS
### Componenti funzionali: 
#### Storage Manager: 
Costituisce l'interfaccia tra i dati memorizzati e i comandi / programmi dell'utente
Gestisce l'interazione con il gestore del file traducendo i comandi in un linguaggio per la manipolazione in comandi per il file system
è responsabile della memorizzazione, recupero e aggiornamento dati. 
Componenti: 
- Gestore autorizzazioni e integrità 
- Gestore delle transazioni
- Gestore dei buffer
- Gestore dei file
#### Query processor:
Interprete dei comandi DDL, compilatore di quelli DML e il query evaluation engine sono i suoi componenti. 
### Strutture dati 
File e indici 
Dizionario dei dati 
Dati statici 

## Architetture Client / Server
$\color{orange}\large\text{A due strati:}$  Applicazione suddivisa in due componenti, una risiede sul client e invoca le funzionalità dell'altra che risiede nel server. Interazione tramite interfaccia. 
$\color{orange}\large\text{A tre strati}$: Client agisce come front-end e non effettua chiamate dirette al DMBS. Comunica con il server, responsabile dell'interazione con il DMBS, tramite form. 

---

### - [[Modello relazionale]]

### - [[Modello Entità-Relazioni ]]

![[Pasted image 20241018160048.png#invert|400]]

## [[Logical Design]]

---

# Normalization

### Normal form and normalization 
La forma normale è una proprietà di un DB relazionale. Quando non è in forma normale sono presenti ridondanze che creano inconsistenze in fase di aggiornamento 

La **Normalizzazione** è una procedura che trasforma tabelle di un DB in forma normale (evoluta) --> *Decomposizione*. 
Meno si decompone, meglio è := meno tabelle si hanno, meglio è. 

Esempio: 
![[Pasted image 20241024164419.png#invert|left|450]]
- Ogni `impiegato` ha sempre lo stesso stipendio. Non serve ripeterlo ogni istanza
- Ogni `progetto` ha sempre lo stesso budget. 
- Non è detto che fissato il progetto, tutti gli impiegati vi partecipino con lo stesso ruolo 
La chiave della tabella è la coppia `impiegato - progetto`. 

Attributi che non fanno parte della chiave ma dipendono da una parte della chiave: ⚠️


## Dipendenza Funzionale 
(formalizzazione)
Funzioni che legano attributi ad attributi. 

`employee` $\Large \to$ `salary` 
`project` $\Large \to$ `budget` 
`employee_project` $\Large \to$ `function` 

$$
\begin{align}
\Large Y \to Z \text{ con } Y, Z \subseteq X  \\
\Large \forall r \in , \forall t_{1}, t_{2} \in r \\ 
\text{se }  t_{1}[Y]=t_{2}[Y]  \;\;  \text{allora}  \;\; t_{1}[Z] = t_{2}[Z]
\end{align}
$$

Una dipendenza funzionale tra Y e Z è indicata da: 
$$
\Large Y \to Z
$$
Y è superchiave. 

### Assiomi di Armstrong

[assioma di riflessività e transitività]
[regola dell'aumento]

Da usare per ragionare sulle dipendenze funzionali. 
 
#todo 


## [[Algebra Relazionale]]

## [[Database Server]]

## [[Buffer]]

## [[Concorrenza]]
