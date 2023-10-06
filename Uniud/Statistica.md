## [[Statistica-info]]
---
### Censimento e Campionamento 
- **Censimento**
	- Si esaminano tutte le unità di una *popolazione reale*. Anche per popolazioni reali i censimenti sono rari 
- **Campionamento**
	- Si esamina un campione

###  Statistica descrittiva
> Metodo per la descrizione, presentazione e sintesi dei dati disponibili. 
> Finalità di tipo descrittivo. 

### Calcolo della probabilità 

### Statistica  Inferenziale
> Metodo per ricavare dai dati informazioni sulla popolazione di riferimento per quantificare la fiducia da accordare a tali informazioni

---

## Analisi esplorativa 
> - Esplorazione del dataset, per capire come i dati sono stati raccolti (osservazione o sperimentazione)
> - individuare unità statistiche 
> - Riorganizzare i dati nella forma più conveniente 
> - Utilizzare metodi grafici per ricavare info sui dati osservati 

>[!info]- Variabili statistiche 
> - **Variabili qualitative categorali**
> 	- Sconnesse
> 		- non è possibile individuare un ordinamento naturale (Genere, colore occhi)
> 	- ordinali
> 		- possibile individuare un ordinamento delle modalità (livello istruzione)
> - **Variabili quantitative numeriche**
> 	- Discrete
> 		- Con insiemi finiti o al più numerabili (numero di figli)
> 	- Continue
> 		- boh
> 

### Frequenze assolute 
> è utile passare dai dati in forma grezza ad una tabella di frequenza che fornisca una sintesi dei dati in un formato semplice da capire 

La **frequenza assoluta** indica il numero di volte che una variabile risulta osservata 
![[Pasted image 20231005085903.png|500]]

>[!info]+ Serie statistica
>Una tabella di frequenza riferita a una variabile statistica qualitativa è detta serie statistica. 
>Se la variabile statistica è **quantitativa continua**, si osservano tante modalità distinte quante sono le unità statistiche, quindi è conveniente definire **classi di modalità** e contare le unità che appartengono a ciascuna classe. 

### Frequenze relative 
> Proporzione di unità statistiche portatrici di tale modalità o classe di modalità. 

Corrisponde a: $$\Large P_j = \frac{f_j}{\sum^J_{j=1}f_j}=\frac{f_j}{n}$$
Le frequenze relative sono utili per percepire il peso delle modalità e per operare confronti tra diverse popolazioni. 

>[!example]+ Esempio - Perni
>Ci sono tre macchinari per la produzione di perni, che devono rispettare le specifiche di diametro. 
>Per valutare l'efficacia del procedimento si analizzano $n = 400$ perni, classificati in: `fine, ok, spesso`
>Ogni perno viene classificato in base al macchinario che lo ha prodotto. 
>
>**Dati grezzi:**
>![[Pasted image 20231005091129.png|300]]
>**Tabella delle frequenze assolute**
>![[Pasted image 20231005091219.png|300]]
>**Tabella frequenze relative**
>![[Pasted image 20231005091249.png|300]]
> Si nota con le frequenze relative la distribuzione di perni Fini/ok/spessi in base al macchinario. 

### Frequenze cumulate
> Definisce la frequenza assoluta o relativa di modalità o classi di modalità non superiori alla j-esima 


## Rappresentazioni grafiche 

[...]

### Istogrammi 
![[Pasted image 20231005093142.png|400]]
> Per rappresentare distribuzioni di frequenza assoluta o relativa con modalità raggruppate in classi. 
> è un insieme di rettangoli adiacenti, ognuno rappresentativo di una classe. Posti su piano cartesiano. 

Le basi dei rettangoli coincidono con le classi. 
Solo se i rettangoli hanno la stessa base, l'altezza è proporzionale 

#### Poligoni di frequenza e Stima della densità 

>[!info]+ Poligoni di frequenza
>Smussa mento locale dell' istogramma 
>Per costruirlo si introducono due classi adiacenti alle classi esterne, ognuna con **ampiezza uguale** alla classe vicina e **frequenza assoluta pari a 0**
>Il poligono si ottiene unendo i punti di mezzo dei lati superiori dei rettangoli con una linea spezzata. 
>![[Pasted image 20231005095143.png|400]]

>[!info]+ Stima della densità 
>Tramite una curva smussata. Date le osservazioni $\Large y_1 ... y_n$ la stima della densità con il metodo del nucleo è definita come: 
>$$\Large f_n(y) = \frac{1}{nb} \sum^n_{i=1}K (\frac{y-y_i}{b}, y \in \mathbb{R}$$
>Dove $\Large K$ è detto **kernel**, $\Large b>0$ è la **banda**. Ad ogni dato si sovrappone una curva. La sua altezza è proporzionale alla frequenza dei punti e la sua ampiezza dipende dalla banda $\Large b$. 
>Si possono scegliere diversi **kernel** che devono soddisfare alcune proprietà.
>
>![[Pasted image 20231005095554.png|400]]

### Funzione di ripartizione empirica
> Rappresentazione per dati **quantitativi**. Il valore del punto $\Large y \in \mathbb{R}$ corrisponde al rapporto tra il numero di osservazioni minori o uguali a $y$. Si calcola con: $$\Large F_n(y) = \frac{n.oss \leq y}{n. tot. oss}$$
> Fornisce la proporzione cumulata di unità statistiche 
> ![[Pasted image 20231005101342.png|400]]


---

## Indici sintetici 
Metodo alternativo alle tabelle di frequenza e diagrammi statici per descrivere e presentare dati. 
- **Posizione**
- **Variabilità**
- **Simmetria e curtosi**

### Indici di posizione: media aritmetica 
> si indica co $\Large E(Y)$ o $\Large \mu$. 

La media aritmetica risente dalla presenza di osservazioni anomale (è sensibile)

>[!example]- Proprietà di Cauchy
>Sia $S_y = \{y_1, ..., y_n\}$ ordinato, allora $$y_1 \leq E(Y) \leq y_n$$ 
>Ovvero la media sta dentro l'intervallo dei valori. 

>[!example]- Proprietà di Baricentro 
> Sia $\large Y-E(Y)$ la variabile scarto di $Y$ dalla sua media $E(Y)$, allora $$\large E(Y - E(Y)) = 0$$

>[!example]- Proprietà di linearità 
>...

### Indici di posizione: mediana
> Valore che divide le osservazioni ordinate in modo crescente in due parti uguali. 

Quando i dati sono pari, si prendono i due valori centrali. Se i due valori centrali coincidono, la mediana è unica. 

Se sono note solo le **frequenze relative**, quindi la dimensione della popolazione non risulta nota, la **mediana** corrisponde alla modalità $y_i$ che presenta frequenza relativa cumulata più piccola tale che $\large P_j \geq 0.5$ 

La mediana è più robusta della media. 

### Quantili 
> Come la mediana, ma la soglia è $\large \alpha$ variabile, lasciando $\alpha \%$ dei dati a destra e $\alpha -1 \%$ dei dati a sinistra. 

Disponendo dei **dati grezzi** ordinati, per individuare $y_0$ si calcola: $\large \alpha(n+1)$ 
- Se si ottiene un valore intero, $Y_0$ è la modalità che si trova nella posizione $\alpha(n+1)$
- Valore non intero: quantile non unico. 

#### Curve di crescita 

![[Pasted image 20231006111738.png|500]]

--- 
### BOX Plot

[[R visualization#BoxPlot]]

---

## Indice di vairbilità 
### Varianza
> Media fatta sui dati trasformati secondo il criterio: $$\large V(Y) = E[(Y-E(Y))^2]$$
> Quindi è una media degli scarti^2. Misura la dispersione dei dati attorno alla media. 

- Proprietà di non negatività
- Formula per il calcolo⚠️
	- ![[Pasted image 20231006115404.png]]
- Proprietà di in varianza per traslazioni.
	- Aggiungendo una costante a tutti i dati, la varianza non cambia (la media sì)
- Proprietà di omogeneità di secondo grado 

> Una variabile statistica con media nulla e varianza unitaria è detta standardizzata 

Per rendere la varianza = 1 bisogna moltiplicare i dati per il reciproco di $\large \sigma$ 

### Simmetria e asimmetria 
![[Pasted image 20231006121616.png]]

### Curtosi
> corrisponde a un allontanamento dalla distribuzione di frequenza normale o gaussiana che viene considerata come riferimento. 

![[Pasted image 20231006122422.png]]

