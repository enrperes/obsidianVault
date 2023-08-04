# 2

## Regressione lineare
> Metodo statistico per estimare le relazioni tra una variabile dipendente e una o più variabili indipendenti. 
Cerca di capire la relazione tra una variabile di output e una o più variabili di input tramite una linea retta che approssima i dati. 
è utile per trovare *trends* nei dati. 

**variabile dipendente:** è quella che cerchiamo id predire o spiegare. è il risultato dell'analisi e il suo valore diepnde dalle variazioni della variabili indipendenti. Es: reddito di una persona 
**Variabili indipendenti:** variabili usate per spiegare o predire la variabile dipendente. Es: istruzione e carriera lavorativa di una persona. Una regressione con più variabili indipendenti si dice lineare multipla.

##### Regressione $\neq$ interpolazione
L'interpolazione è un metodo per stimare i valori mancanti o non osservati in una serie di dati nota. -> riempie i vuoti da una serie di dati noti. Assume una relazione continua tra i dati noti. 
La regressione cerca di stabilire una relazione funzionale tra variabile dipendente e indipendente. 
![[Pasted image 20230804185645.png|400]]

##### Esempi
Utile per analizzare l'andamento del valore di un mercato, ma anche analisi ambientali, health care e sport. 

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

---

# 3

## Classification
> processo di assegnazione di elementi a dei gruppi noti in base a certe caratteristiche. 

Tre principali algoritmi di classificazione: 
- ### Decision tree
	composto da un *root node*, *decision nodes* e *root nodes*. 
- ### Naive Bayes
- ### K-nearest Neighbors