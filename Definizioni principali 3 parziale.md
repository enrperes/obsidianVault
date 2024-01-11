In aggiunta alle [[Statistica inferenziale in R| funzioni relative in R]]

- La **Stima puntuale** è l'assegnazione di valori plausibili a $\theta$, parametro ignoto 
- la **stima intervallare** è l'assegnazione di un intervallo di valori possibili a $\theta$ (misura di accuratezza)
- **Stima** = valore assunto 
- **Stimatore** = variabile casuale associata
Le procedure inferenziali per la stima puntuale prevedono: 
- Definizione di metodi per definire stimatori in riferimento al parametro di interesse
- Analisi delle proprietà di uno stimatore e valutazione efficacia 
Tra i metodi di stima: 
- Metodo dell'analogia: il parametro viene stimato usando la corrispondente quantità campionaria
- Metodo dei momenti
- Metodo massima verosimiglianza
- Metodo minimi quadrati 
- Metodo di sostituzione

Lo standard error è una misura di precisione di uno stimatore. 

#### Proprietà stimatori 
- Correttezza
	- Se valore atteso = valore del parametro
- Distorsione
	- è la media del parametro stimato meno il parametro 
- Consistenza
	- se la precisione aumenta all'aumentare di n
La media troncata è più robusta della media standard. 

### Verifica delle ipotesi
> verificare se un'ipotesi sulla popolazione sia accettabile o meno 

- Ipotesi semplice se si specifica in modo completo 
- Ipotesi composta se non si specifica in modo completo la popolazione 
Un **test statistico** è un test che consente di valutare l'ipotesi, confrontando il valore atteso dell'ipotesi e l'osservazione del campione

L'ipotesi è sottoposta a verifica con l'ipotesi nulla: $H_{0}: \theta= \theta_{0}$ dove $\theta_{0}$ è un valore fissato 

1. Alternativa unilaterale destra $\Large >$
2. Alternativa unilaterale sinistra $\Large <$
3. Alternativa bilaterale $\Large \neq$

Due tipi di errore: 
- Primo tipo 
	- Rifiutare erroneamente $H_{0}$, con probabilità $\alpha$
	- $1-\alpha$ = livello di protezione del test
- Secondo tipo 
	- Accettare erroneamente $H_{0}$ con probabilità $\beta$
	- $1-\beta$ = livello di potenza del test
$\alpha \text{  e  } \beta$ sono indipendenti, non si minimizzano contemporaneamente.  

**P-value** è una quantifica del grado di conformità tra i dati campionari e l'ipotesi nulla. 
Se p-value < $\alpha$ si rifiuta ipotesi nulla. 

Nel test per il confronto tra **medie** di popolazioni **normali** si identificano due proprietà: 
- **Omoschedasticità**
	- Quando le varianze sono ignote e uguali
- **Eteroschedasticità**
	- quando le varianze sono ignote e diverse -> Test di Welch

## Modello di regressione lineare semplice $\Large y=a+bx$

> Per studiare eventuale dipendenza tra variabili quantitative

### Correlazione
> misura la forza e direzione di una relazione lineare tra due variabili. indica *quanto le variabili* si muovano insieme. 

Studia quindi l'eventuale dipendenza lineare tra fenomeni aleatori

### Regressione
> Va oltre la regressione e cerca di predire il valore di una variabile dipendente basandosi sui valori di variabili indipendenti. 

è un modello statistico parametrico, si assume che la v.c. di interesse dipenda dai valori osservati di una o più variabili esplicative. 
Per capire se le variazioni di Y sono in risposta alle variazioni di X. 

Sulla base delle osservazioni si possono stimare i parametri non noti, $a, b, \sigma^{2}$, che avranno distribuzione normale. Si identificano intervalli di confidenza e si effettuano procedure di verifica delle ipotesi su a e b

Il modello può essere valutato con l'indice di determinazione $R^{2}$

Le **diagnostiche** sono procedure di tipo grafico per verificare ipotesi di linearità 
