---
aliases:
  - Data mining, clustering, classification, evaluation
title: Daata
---
# Data Mining
[[Data Mining]]

> Processo analitico che consiste nell'estrarre informazioni significative, modelli e conoscenze utili da grandi basi di dati. 
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

![[Classification]]
---

# Clustering

> Processo di assegnazione di elementi a sottoinsiemi *cluster* (ignoti) basati su alcune caratteristiche

A differenza della [[Ritacco#Classification|classificazione]], il clustering è un apprendimento **non supervisionato**. Ovvero non ci sono etichette di classe predefinite per le osservazioni. L'obiettivo principale è scoprire strutture nei dati senza la guida di classi note. 
Viene usato per scoprire relazioni nascoste nei dati, identificare gruppi omogenei e semplificare la comprensione dei dati complessi. 

Principali algoritmi di Clustering: 

- ### K-Means
	Algoritmo di clustering ==non supervisionato== usato per dividere un insieme di dati in cluster basati sulla somiglianza tra le osservazioni. 
	**K** rappresenta il numero di cluster desiderati; viene deciso a priori. Un valore troppo alto porta a cluster troppo piccoli e complesi (*overfitting*) mentre se è troppo basso si rischia di raggruppare cluster eterogenei. 
	
	Non è deterministico: può produrre due diversi risultati con lo stesso input. 
	
	**Funzionamento:** 
	1. Vengono selezionati casualmente **K** punti come centroidi iniziali del cluster. 
	2. Per ciascuna osservazione nel dataset, l'algoritmo calcola la distanza Euclidea tra l'osservazione e ciascuno dei centroidi del cluster. 
	3. Una volta assegnate le osservazioni ai cluster, i centroidi vengono aggiornati. Il centroide viene calcolato come punto medio di tutte le osservazioni assegnate a quel cluster. 
	4. I punti 2 e 3 vengono ripetuti, finché i centroidi rimangono invariati. 

*Aggiornamento* 2024-05-14: 
Una volta scelto K, vengono generati in maniera random K centroidi, posizionati all'interno dello spazio cartesiano. 
Due fasi: 
1. Assegnazione
	1. Per ogni punto del dataset viene calcolata la distanza tra il punto e i due centroidi. Il punto viene associato al centroide con distanza minore. 
2. Aggiornamento 
	1. Si considerano tutti i punti assegnati a un cluster e viene calcolato il punto medio di questi punti, che poi sostituisce il centroide. 
### Cost Function
> La somma delle distanze dei punti dai centroidi. 

Si prende il clustering finale che ha il costo minore: 

```clike
for i=1 to 100{
	# randomly initialize K-means
	run k-means and compute the cost function
	Pick the clustering with lowest cost 
}
```

#### CODE (R)
```R
	kmeans(x, centers, iter.max = 10, nstart = 1)
```
	
`x` = dataset, `centers` = number of clusters, `iter.max` = max number of iterations, `nstart` = number of random starting position (seed)

### Hierarchical Agglomerative Clustering 
Modello di classificazione iterativo: 
Si parte con un cluster su ogni punto e ad ogni iterazione si uniscono i punti *più vicini*, fino ad arrivare a un unico cluster. 
= bottom-up method

La distanza tra punti può essere calcolata in [[Ritacco#Cluster Distance measures|modi diversi.]]
In questo modo si forma un albero binario, con il cluster finale radice. 

Solitamente viene rappresentato con l'altezza dei link in relazione con la distanza dei punti 
![[Pasted image 20240516102408.png#invert|400]]
#### Cluster Distance measures
- Single Link
	- Distanza minima da un elemento di un cluster e un elemento di un altro cluster
- Complete Link
	- Maggiore distanza tra un elemento di un cluster e un elemento di un altro cluster
- Average
	- Distanza media tra tutti gli elementi di un cluster e gli elementi dell'altro cluster
- 

---
- ### DBSCAN
	> Density-Based Spatial Clustering of Applications with Noise


Per identificare cluster di punti in uno spazio in base alla densità dei dati. A differenza del  *clustering* non richiede di impostare il numero di cluster a priori.  Sono richiesti due parametri: 
	1. *Distance treshold* = $\Large \varepsilon$
	2. *minimum cluster size* = $\Large min$

I cluster vengono assegnati dove ci sono aree di alta densità di punti, separati da aree di bassa densità. 
Funzionamento: 
Viene selezionato casualmente un punto. Se ci sono almeno $min$ punti all'interno di una distanza $\varepsilon$ dal punto selezionato, allora viene considerato un **core point**.  Dopo aver identificato un core point, il cluster include tutti i punti vicini entro una distanza $\varepsilon$
- Un **border point** è un punto con $x<min$ punti nel raggio $\varepsilon$, ma nelle vicinanze di un core point. 
- Un **Noise Point** è un punto che non è core o border. Viene scartato. 
Due punti che sono vicini tra loro, a distanza $\varepsilon$, sono inseriti nello stesso cluster. 

L'algoritmo si ripete finché non rimangono punti non assegnati a cluster o **core points**.
I punti che non possono essere assegnati a nessun cluster vengono considerati **rumore**. 

Vantaggi principali di DBSCAN: 
	- identificare cluster con forme complesse e dimensioni variabili
	- Gestire bene dati rumorosi
Svantaggi DBSCAN: 
- Quando la densità dei punti è variabili non si ottiene un buon risultato. 

Aggiornamento: 
- Discover clusters of arbitrary shape
- Handle noise
- Only one scan
- Density parameters required 
##### CODE (R)
Requires the library `fpc` -> `install.packages("fpc")`
	
```r
set.seed(123)
dbs.res <- dbscan(iris, eps = 0.4, MinPts = 5)
dbs.res

dbscan Pts = 150 MinPts = 5 eps = 0.4

		0    1    2   # 3 clusters found

border  24   4    13
seed    0    44   65
total   24   48   78
```

# Evaluation

1. Selezionare un training set (e magari un validation set)
2. Mining model 
3. Scegliere un parametro di qualità
4. Selezionare il test set
5. Applicare il modello nel test set
6. Calcolare il valore del parametro di qualità 

### Training set e test set 
Il training set è un sottoinsieme del dataset complessivo. Contiene dati rappresentativi che coprono tutte le caratteristiche del problema. Durante l'addestramento, il modello impara dalle osservazioni del training set, identificando pattern nei dati. 
La valutazione del modello viene fatta sul test set, perché per il training set si conosce già la qualità dei dati. 
- **Training set**
	- Utilizzato per addestrare il modello di apprendimento automatico
	- Contiene dati con cui il modello impara dalle osservazioni e cerca di identificare pattern e relazioni nei dati. 
- **Validation set**
	- Utilizzato per regolare i parametri del modello e selezionare il miglior modello tra le varie configurazioni
	- Aiuta a prevenire l'*overfitting* e ottimizzare le prestazioni del modello. 
- **Test Set**
	- Utilizzato per valutare le prestazioni finali del modello dopo che è stato addestrato e validato. 
	- Contiene dati che il modello non ha mai visto. 
	
##### Problemi: 
- **Underfitting**
	- Il modello è troppo semplice, la valutazione sarà carente sia nel training set che nel test set
- **Overfitting**
	- Il modello è troppo complesso: la valutazione sarà ottima nel training set ma non nel test set
### Evaluation methods

#### Confusion Matrix 
> tabella che mostra il numero di previsioni corrette e errate fatte da un modello di classificazione

Divisa in:
1. **TP** True positives
2. **TN** True negatives
3. **FP** False Positives
4. **FN** False Negatives 

#### Global Accuracy
> L'accuratezza globale rappresenta la percentuale di previsioni corrette fatte dal modello rispetto al numero totale di previsioni. 

Calcolata come: $$\Large \texttt{accuracy} = \frac{TP + TN}{TP + TN + FP + FN}$$
Può essere ingannevole se le classi sono sbilanciate. 
#### Cost Matrix 
> Simile a confusion matrix. Assegna costi diversi agli errori di classificazione in base alla loro gravità. Aiuta a valutare il modello in modo più sensibile rispetto ai costi reali delle decisioni di classificazione. 
#### Hold-Out e Repeated Hold-Out
Divide il dataset in training e test set. Il modello viene addestrato con il training set e valutato con il test set. Non è molto affidabile perché ha solo un test. 
Repeated Hold-Out with random Sub-Sampling introduce maggiore rilevanza statistica ma rallenta il processo di test. 
#### K-Fold
Il dataset viene diviso in **K** parti (*fold*) e il modello viene addestrato e testato K volte, utilizzando **K-1** fold come training set e **K** come test set. 
Pro: valore statistico significativo
Contro: valutazione molto lenta

#### ROC Curve
> Receiver Operating Characteristic Curve. 
> Visualizza il *trade-off* tra il tasso di vero positivo (sensibilità) e il tasso di falso positivo, al variare del punto di decisione (soglia)

**True Positive Rate = Recall =** $$\frac{TP}{TP+ FN}$$
**False Positive Rate =** $$\frac{FP}{TN+ FP}$$
La forma della curva ROC determina la prestazione del modello. 
- Curva vicina all'angolo in alto a sinistra indica una buona capacità di separare le classi positive da quelle negative. 
- Curva diagonale $x = y$ il modello non riesce a separare le classi
![[Pasted image 20230910152411.png|500]]
L'area sotto la curva (**AUC-ROC**) è direttamente proporzionale alla qualità del modello. 

#### Precision-Recall Curve
> Evidenzia il trade-off tra precisione  e richiamo. Utile quando le classi sono sbilanciate e il numero di casi positivi è minore rispetto ai casi negativi. 

La **precisione** rappresenta la proporzione di previsioni positive corrette rispetto al totale di previsioni positive fatte dal modello, ovvero: $$\texttt{Precision} = \frac{TP}{TP + FP}$$ Il **recall o TPR** si indica con: $$TPR = \frac{TP}{TP+ FN}$$
Una curva che si avvicina all'angolo in alto a destra (1, 1) indica una buona capacità di separare classi positive da quelle negative. 
![[Pasted image 20230910153111.png|500]]

---
# Churn Analysis 

> Processo di analisi dei dati che si concentra sul "churn rate" ovvero la perdita di utenti da un servizio nel tempo, in base a certe caratteristiche. 
> L'obiettivo è quello di analizzare le metriche di utilizzo dei clienti e scoprire i motivi che portano ad abbandonare il servizio. 


