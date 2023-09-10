# Data Mining
> Processo analiti co che consiste nell'estrarre informazioni significative, modelli e conoscenze utili da grandi basi di dati. 
> L'obiettivo principale è di scoprire pattern, relazioni e tendenze nascoste nei dati. 

- Estrazione di pattern
- Classificazione
- Clustering
- Previsione
- Anomalie
- Associazioni

### DIKW Hierarchy  
- **Data** -> DBMS, information, raw data
- **Information** -> Ontologies
- **Knowledge** -> DATA MINING = reasoning
- **Wisdom** -> Decision process 

### How to data mining
#### CRISP-DM 
> Cross Industry Standard Process for Data Mining

##### Fasi: 
1. Business understanding 
	1. collaborazione con il business per comprendere obiettivi e requisiti del progetto, stabilendo priorità 
2. Data Understanding 
	1. Raccolta e esplorazione del dataset, valutandone qualità e completezza. 
3. Data preparation
	1. Pulizia dei dati e trasformazione dei dati per l'analisi
4. Modeling
	1. Si selezionano e si applicano gli algoritmi di Data Mining per generare modelli. 
	2. Si suddivide il dataset in set di addestramento e set di test per valutare la prestazione dei modelli
5. Evaluation
	1. Valutazione delle prestazioni dei modelli
6. Deployment
	1. I modelli vengono integrati nell'ambiente operativo  dell'azienda. 


## Regressione lineare
> Metodo statistico per estimare le relazioni tra **una variabile dipendente** e **una o più variabili indipendenti.** 

Cerca di capire la relazione tra una variabile di output e una o più variabili di input tramite una linea retta che approssima i dati. 
è utile per trovare *trends* nei dati. 

**variabile dipendente:** è quella che cerchiamo di predire o spiegare. è il risultato dell'analisi e il suo valore dipende dalle variazioni della variabili indipendenti. Es: reddito di una persona 
**Variabili indipendenti:** variabili usate per spiegare o predire la variabile dipendente. Una regressione con più variabili indipendenti si dice lineare multipla.
Es: istruzione e carriera lavorativa di una persona





##### Regressione $\neq$ interpolazione
L'interpolazione è un metodo per stimare i valori mancanti o non osservati in una serie di dati nota. -> riempie i vuoti da una serie di dati noti. Assume una relazione continua tra i dati noti. 
La regressione cerca di stabilire una relazione funzionale tra variabile dipendente e indipendente. 
![[Pasted image 20230804185645.png|400]]

##### Esempi
Usata per predirre l'andamento di una variabile continua. Aiuta a trovare i trends nei dati. 
Utile per analizzare l'andamento del **valore di un mercato**, ma anche analisi ambientali, health care e sport. 
Ad esempio il prezzo di un immobile (variabile dipendente) che dipende da: 
- Ubicazione
- Metratura
- Stato di conservazione
- Anno di costruzione
- Caratteristiche ambientali
- Sicurezza

##### Formula
$$\Huge Y_i = \beta_0 + \beta_1 X_i + u_i$$
dove: 

|                  |                                             |
|:----------------:|:------------------------------------------- |
|    $\Large i$    | varia tra le osservazioni.. $i = 1, ..., n$ |
|   $\Large Y_i$   | è la variabile dipendente                   |
|   $\Large X_i$   | è la variabile indipendente                 |
| $\Large \beta_0$ | è il punto di intersezione con l'asse       |
| $\Large \beta_1$ | coefficiente angolare della retta           |
|   $\Large u_i$   | è l'errore statistico                       |

##### Code

`modello <- lm(Dependent_var ~ Independent_var1 + Independent_var2, data = dataframe)`
Calcola i coefficienti di regressione che definiscono la relazione lineare tra variabile dipendente e variabile indipendente. I coefficienti rappresentano $m$ e $q$ della retta di regressione. 

Per determinare se un modello è affidabile o meno, si guarda il coefficiente $R^2$, definito da:  $$\Large R^2 = 1- \frac{\sum^n_{i=1} e_i}{\sum^n_{i=1}(y_i - \bar{y})}$$

Più il coefficiente $R^2$ si avvicina a 1,  più il modello è affidabile. 

---

# Classification

> processo di assegnazione di certi elementi a dei gruppi predefiniti in base a delle loro caratteristiche. 

L'obiettivo è creare un modello che possa apprendere automaticamente e distinguere le diverse classi da dati di addestramento 



Tre principali algoritmi di classificazione: 
- ### Decision tree
	composto da un *root node*, *decision nodes* (splitting points) e *terminal nodes* (prediction points)
	Il root node è l'attributo che meglio separa i dati. 
	![[Pasted image 20230910011120.png|500]]
- ### Naïve Bayes
	Algoritmo di apprendimento automatico basato sul teorema di Bayes; assume una **naive** (ingenua) indipendenza tra le variabili in input. Quindi considera ogni variabile input come indipendente dalle altre. 
	1.  Il teorema di Bayes calcola la probabilità che un evento accada, dato che un altro evento si è verificato. Ovvero la probabilità che un dato appartenga a una classe specifica, dato un insieme di attributi. 
	2. Calcolo della probabilità condizionata: Utilizzando la [[Data Mining#Naive Bayes (Classification algorithm)|formula]] di Bayes viene dato un valore alle probabilità 
	3. Indipendenza delle variabili: il modello presume che ciascuna variabile di input  contribuisca in modo indipendente. 
	4. Classificazione: una volta calcolate le probabilità condizionate per tutte le classi possibili, viene selezionata la classe con la probabilità più alta come previsione finale per i dati. 
- ### K-nearest Neighbors
	*lazy algorithm* -> there is no parameter estimation, the model is the dataset. 
	Funziona più o meno così: 
	1. Selezione di un valore **K**. Ovvero il numero di vicini considerati per fare una previsione per un'istanza di dati. 
		1. Valore troppo alto -> Overfitting
		2. Valore troppo basso -> Troppo sensibile al rumore
	2. Calcolo della distanza tra l'istanza di dati di interesse e le altre istanze nei dati di addestramento. 
		1. Distanza Euclidea
		2. Manhattan
	3. Vengono identificati i punti dati che hanno le distanze più basse rispetto all'istanza dei dati di interesse. Identificati come *K-vicini più prossimi*
	4. La classificazione avviene assegnando all'istanza di dati di interesse la classe pi frequente tra i **K** vicini. 

![[Pasted image 20230910014535.png|400]]

---

# Clustering

> Processo di assegnazione di elementi a sottoinsiemi *cluster* (ignoti) basati su alcune caratteristiche

A differenza della [[Ritacco#Classification|classificazione]], il clustering è un apprendimento **non supervisionato**. Ovvero non ci sono etichette di classe predefinite per le osservazioni. L'obiettivo principale è scoprire strutture nei dati senza la guida di classi note. 
Viene usato per scoprire relazioni nascoste nei dati, identificare gruppi omogenei e semplificare la comprensione dei dati complessi. 

Principali algoritmi di Clustering: 

- ### K-Means
- ### DBSCAN