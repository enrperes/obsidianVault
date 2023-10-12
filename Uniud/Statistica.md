##### [[Statistica-info]]

### [[Statistica-formulario]]
### [[Statistica-laboratorio]]
--- 



# DATI
> Si ottengono sia tramite osservazione che tramite sperimentazione

Rappresentano l'informazione su certe caratteristiche di una **popolazione**: la collezione di unità statistiche

>[!e]- Modalità 
> Rappresenta il valore all'interno di un insieme di dati che compaiono più frequentemente. è il valore che si verifica con la maggiore frequenza in un set di dati. Equivalente alla moda. 
### Censimento e Campionamento 
- **Censimento**
	- Si esaminano tutte le unità di una *popolazione reale*. Anche per popolazioni reali i censimenti sono rari 
- **Campionamento**
	- Si esamina un campione = sottoinsieme finito di unità statistiche selezionate mediante l'*esperimento di campionamento*.
		- 

###  Statistica descrittiva
> Metodo per la descrizione, presentazione e sintesi dei dati disponibili al fine di individuare la **struttura essenziale**
> Finalità di tipo descrittivo. 
### Statistica  Inferenziale
> Metodo per ricavare dai dati informazioni sulla popolazione di riferimento per quantificare la fiducia da accordare a tali informazioni

Ovvero trae conclusioni su una popolazione basandosi su un campione rappresentativo di dati -> estrapola info generali sulla base di dati limitati. 

---
## Analisi esplorativa 

> 1.  Esplorazione del dataset, per capire come i dati sono stati raccolti (osservazione o sperimentazione)
> 2.  individuare unità statistiche 
> 3.  Riorganizzare i dati nella forma più conveniente 
> 4.  Utilizzare metodi grafici per ricavare info sui dati osservati 

>[!info]- Variabili statistiche 
>> Variabile = caratteristica delle unità statistiche che può assumere diversi valori. Le **modalità** di una variabile sono i valori che essa può assumere. 
> - **Variabili qualitative categorali**
> 	- Sconnesse
> 		- non è possibile individuare un ordinamento naturale (Genere, colore occhi)
> 	- ordinali
> 		- possibile individuare un ordinamento delle modalità (livello istruzione)
> - **Variabili quantitative numeriche**
> 	- Discrete
> 		- Con insiemi finiti o al più numerabili (numero di figli)
> 	- Continue
> 		- Se $\Large y$ è un insieme continuo. (es. distanza)
>
 

### Frequenze assolute 
> Una tabella di frequenza fornisce una sintesi dei dati in forma grezza. 

>[!example]- Esempio: 
> misurato il livello di colesterolo a $n=2294$ soggetti, discriminando i pazienti in due classi di età. Come verificare il gruppo con il valore medio maggiore? 
> Definire una tabella dove si considerano le frequenze con cui le diverse modalità sono state osservate. La lista delle modalità osservate accompagnate dalle rispettive frequenze assolute è detta **distribuzione di frequenza assoluta**

La **frequenza assoluta** indica il numero di volte che una variabile risulta osservata. Si indica con $\Large f_j$ 
![[Pasted image 20231005085903.png|300]]


>[!info]+ Serie statistica
>Una tabella di frequenza riferita a una variabile statistica qualitativa è detta serie statistica. 
>Se la variabile statistica è **quantitativa continua**, si osservano tante modalità distinte quante sono le unità statistiche, quindi è conveniente definire **classi di modalità** e contare le unità che appartengono a ciascuna classe. 

### Frequenze relative 
> Proporzione di unità statistiche portatrici di tale modalità o classe di modalità. Utili per percepire il peso delle varie modalità e per operare confronti tra diverse popolazioni. 

Corrisponde a: $$\Large P_j = \frac{f_j}{\sum^J_{j=1}f_j}=\frac{f_j}{n}$$
Se $\large S_Y = \{y_1\}$ allora $\large J = 1, \; f_1 = n,\; p_1 = 1$ e la variabile statistica $\Large Y$ è detta **degenere**.
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

Si ottiene cumulando progressivamente le frequenze. 

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
>$$\Large f_n(y) = \frac{1}{nb} \sum^n_{i=1}K (\frac{y-y_i}{b}), y \in \mathbb{R}$$
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
- **Posizione** -> il centro dei dati 
- **Variabilità** -> dispersione dei dati 
- **Simmetria e curtosi** -> distribuzione della frequenza 

### Indici di posizione: media aritmetica 
> si indica co $\Large E(Y)$: $$= \Large \frac{1}{n}\sum^n_{i=1}y_i$$

La media aritmetica risente dalla presenza di osservazioni anomale (è **sensibile**). Non si calcola per variabili categoriali, ad eccezione delle variabili dicotomiche (booleane). 

>[!example]- Proprietà di Cauchy
>Sia $S_y = \{y_1, ..., y_n\}$ ordinato, allora $$y_1 \leq E(Y) \leq y_n$$ 
>Ovvero la media è compresa tra il più piccolo e più grande valore osservato. 

>[!example]- Proprietà di Baricentro 
> Sia $\large Y-E(Y)$ la variabile scarto di $Y$ dalla sua media $E(Y)$, allora $$\large E(Y - E(Y)) = 0$$
> La somma delle differenze tra i valori e la loro media aritmetica è pari a zero. 

>[!example]- Proprietà di linearità 
>> La media aritmetica di una combinazione lineare di più insiemi è uguale alla stessa combinazione lineare delle medie aritmetiche dei singoli insiemi dati. 
>
>> La media aritmetica di $\large Y$, ottenuto da una trasformazione lineare $\large Y = \alpha X + \beta$ di $\large X$ con media $\large $
### Indici di posizione: mediana
> Valore che divide le osservazioni ordinate in modo crescente in due parti uguali. Calcolabile per variabili qualitative ordinali o quantitative. Si indica con $$\large Y_{0.5}$$

Quando i dati sono pari, si prendono i due valori centrali. Se i due valori centrali coincidono, la mediana è unica. 
Conoscendo soltanto **distribuzione di frequenza relativa o assoluta**: 
>[!example]- Frequenza assoluta
> Siano le frequenze assolute $\large f_j, \; j = 1, ..., J$ e $n$ la dimensione della popolazione, la mediana corrisponde a: 
> - $n$ dispari
> 	- 

>[!example]- Frequenza relativa
> Se sono note solo le **frequenze relative**, quindi la dimensione della popolazione non risulta nota, la **mediana** corrisponde alla modalità $y_i$ che presenta frequenza relativa cumulata più piccola tale che $\large P_j \geq 0.5$ 

La mediana è più **robusta** della media. 
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
	- ![[Pasted image 20231006115404.png|400]]
- Proprietà di in varianza per traslazioni.
	- Aggiungendo una costante a tutti i dati, la varianza non cambia (la media sì)
- Proprietà di omogeneità di secondo grado 

> Una variabile statistica con media nulla e varianza unitaria è detta standardizzata 

Per rendere la varianza = 1 bisogna moltiplicare i dati per il reciproco di $\large \sigma$ 

### Simmetria e asimmetria 
![[Pasted image 20231006121616.png|400]]

### Curtosi
> corrisponde a un allontanamento dalla distribuzione di frequenza normale o gaussiana che viene considerata come riferimento. 

![[Pasted image 20231006122422.png|400]]

---

# 3. Statistica descrittiva: analisi multivariate

> Studio congiunto di due o più variabili statistiche per scoprire le relazioni esistenti. 

Considerando due variabili $X$ e $Y$ la loro osservazione su $n$ unità statistiche fornisce i **dati grezzi**: $(x_i, y_i)=1, ..., n$ 
A partire dai dati grezzi si può determinare la distribuzione di frequenza assoluta e relativa: 
- **Distribuzione congiunta**
- **Distribuzione marginale**
- **Distribuzione condizionata**

## Rappresentazioni grafiche 
**Dati grezzi**
- Scatterplot
**Frequenza congiunta**
- Istogrammi o diagrammi a bastoncini, in spazio 3D
**Frequenza marginale o condizionata**
- Tutte le rappresentazioni viste per il caso con una variabile (istogrammi, bo plot, bastoncini, rettangoli...)

## Studio della dipendenza
Non sempre le variabili $X$ e $Y$ vengono trattate in modo simmetrico. In certi casi si individua una variabile dipendente (risposta) e una variabile indipendente (esplicativa). 

Es: lunghezza della molla (variabile **risposta**) dipende dall'entità del peso applicativo (variabile **esplicativa**). 
Il peso influenza la lunghezza della molla, non viceversa. 

Situazioni tipiche: 
- Due variabili qualitative: **analisi di dipendenza**
- Una variabile qualitativa e una quantitativa: **analisi di dipendenza in media**
- Due variabili quantitative: **analisi di correlazione e analisi di regressione**. 


### Analisi di dipendenza (variabili qualitative)

