

%%[[Classification_outdated]]%%

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
