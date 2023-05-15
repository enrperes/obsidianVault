> The process of automatically discovering knowledge, models and **patterns** in large datasets

Patterns are discernible regularities within data. 

### Data mining (student's perspective)
#### Easy task: 
Given the input $x$, some parameters $\theta$ and a function $f$, find $$\large y = f(x, \theta)$$
#### Medium task: 
Given the input $x$, output $y$ and function $f$, find: $$\large \theta : y = f(x, \theta)$$
#### medium hard task: 
Given output $y$, some parameters $\theta$ and a function $f$, find:  $$\large x = f^{-1}(t, \theta)$$
#### Hard task:
Given the output $y$ and input $x$, find: $$\large f, \theta : y = f(x, \theta)$$
#### very hard task: 
Given input $x$, find: $$\large f, \theta : f(x, \theta) \to x$$


### What is and isn't 
![[Pasted image 20230418120757.png]]

---


2023-04-20 10:34

# Regression Analysis 

> Regression = statistical method that shows relationship between two or more variables. Usually expressed in a graph, the method tests the relationship between a dependent variable against independent variables. 

Example of $\Theta$: line in a 2D space: $y = mx + q \rightarrow \Theta = \{m, q\}$ 

Regression $\neq$ interpolation 

$R^2$ che tende a 1 indica una buona stima di regressione. La stima di regressione lineare consiste nel trovare i coefficienti $a$ e $b$ tali che la retta $\hat{y} = a + bx$ sia l'equazione della retta che approssima al meglio i dati. Il valore di $R^2$ misura l'adeguatezza del modello di regressione: è definito come il coefficiente di determinazione e indica la proporzione di varianza dei dati di $y$ che può essere spiegata dal modello di regressione lineare. 

Quindi $R^2$ misura quanto bene il modello si adatta ai dati: Se tende a 1 allora la linea di tendenza è più vicina ai dati. 

[...]

2023-05-04

# Naive Bayes (Classification algorithm)
$$\Huge p(x_1, ..., x_m | c) = \prod^M_{j = 1} p(x_j | c)$$
### Summarizing, Naive Bayes algorithm is defined as: 

$$\Huge p(c | x_1, ..., x_m) = \frac{p(c) \prod_{j=1}^M p(x_j |c)}{\sum_{k \in c} \; p(x = x_1, ..., x_m |k)\cdot p(k)}$$
**Where:**

$$\huge p(c) = \frac{|\{y=c \;|\; y\in Y\}|}{|Y|} \; ,$$
$$\huge p(x_j |c) = \frac{|\{x[j]=x, y=c \; | \;x \in X, y \in Y \}|}{|\{ y=c \; | \; y \in Y
\}|} = \frac{1}{\sqrt{2 \pi \cdot Var[x[j]\: |\:c]}}\; e^{-\frac{(x_j - E[x[j] | c])^2}{Var[x[j]|c]}}$$ 
# Clustering 
> process of assigning elements of a domain to unknown gropus according to some features. 


### DBScan 
Density Based Scan clustering algorithm 
it determines cluster assignments based on the density of data points in a region. 
![[Pasted image 20230504121725.png]]

2023-05-08 10:39
# K-means in R 
Demo dataset "USArrest"
The data must contain only continuous variables: the k-means algorithm uses variable means. 
We scale the data using the R function *scale*: $$\Large scale(x) = \frac{x-mean(x)}{std(x)}$$
$\Large std(x)$ è la deviazione standard. Rappresenta i due punti dove cambia la concavità in una funzione. Rappresenta la regione dove ci sono la maggior parte dei dati.
Permette di posizionare i la maggior parte dei dati nella regione di spazio compresa tra -1 e 1. 
```R
data("USArrests")
df <- scale("USArrests")
```


# Churn Analysis 

> Strategie di predizione basandosi su analisi di dati. 

## Data Scheme 
- State [categorical]
- Account length [integer]
- Area Code [integer]
- Phone number [= customer ID]
- International plan [bool]
- VoiceMail Plan [bool]
- Number of voice messages [integer]
- Total day, evening, night minutes [integer]
- Total day, evening, night calls [integer]
- Total day, evening, night charge [integer]
- Total international minutes [continuous]
- Total international calls [integer]
- Total international charge [continuous]
- Number of calls to customer service  [integer]
- **Churn** [bool, Class attribute] <-- attributo target: Se utente lascia o meno la compagnia. 


>[!bug]- Churn Analysis example code
>![[Churn-Analysis-code]]

Alcuni attributi hanno correlazione con il churn, altri no. Quelli che non hanno correlazione vanno rimossi. 
Attribute "Area code" ha solo 3 valori -> possibile valore anomalo, con dati mancanti, quindi va rimosso 

Attribute "Phone" ha un attributo per ogni tupla (ogni valore appare una sola volta) -> **Key**. Se venisse usata per analizzare il churn sarebbe un problema di overfitting. Non aggiunge informazioni ulteriori a una colonna ID, quindi va rimossa. 

