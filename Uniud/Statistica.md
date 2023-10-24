##### [[Statistica-info]]

### [[Statistica - riassunto]]
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

# 3. Statistica descrittiva: analisi ==multivariate==

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

Considerando due variabili statistiche $X$ e $Y$ **qualitative (categorali)** si analizza l'esistenza di associazione (**dipendenza**) tra le modalità corrispondenti. 

#### Tabella di contingenza 
> Descrive la frequenza con la quale le modalità di due variabili vengono *congiuntamente* osservate 

![[Pasted image 20231013105359.png|400]]

### Distribuzione di frequenza 
[...]

### Indipendenza statistica 
[...]

c'è indipendenza quando $\Large n_{rs} = \frac{n_r+n_s}{n}$  
### Indice di connessione 
Indica "livello" di dipendenza tra $X$ e $Y$. 


---

## Covarianza
> Misurare intensità del **legame lineare** tra due **variabili quantitative** e la direzione della relazione. 

$$\Large Cov(X, Y) = E[(X-E(X))(Y-E(Y))] = \frac{1}{n}\sum_{i=1}^n(x_i-E(X))(Y_i - E(Y))$$
In alternativa, si può calcolare con la **formula per il calcolo:**
$$\Large Cov(X, Y) = E(XY) - E(X)E(Y) = \frac{1}{n}\sum_{i=1}^nx_iy_i-E(X)E(Y)$$
![[Pasted image 20231013120429.png|400]]
La covarianza può essere negativa: 

Covarianza positiva: dipendenza lineare crescente
Covarianza nulla: no dipendenza lineare
Covarianza negativa: dipendenza decrescente 

### [[Ritacco#Regressione lineare|Regressione lineare]]

Studia la media condizionata di una variabile risposta $Y$ in funzione di una o più variabili esplicative $X$. 
Si considera regressione lineare semplice dove tra la variabile risposta Y e la variabile esplicativa X c'è una relazione lineare. 

Il modello di regressione lineare semplice è definito dall'equazione: 
$$\Large y_i=a+bx_i+\varepsilon_i, \;\;\;\; i=1, ..., n$$
Dove: 
 $x_i, y_i$ sono i valori osservati per la variabile dipendente $Y$ e per la variabile esplicativa $X$. I valori di $\varepsilon_i$ indicano gli errori, mentre $a, b$ sono i coefficienti di regressione: $a$ = intercetta e $b$ = coefficiente angolare della retta di regressione $\large y = a + bx$ 

#### Metodo dei minimi quadrati 
Per stimare i coefficienti di regressione si cercano i valori per $a, b$ che minimizzano la somma dei quadrati dei residui. 
$$\Large Q(a,b)=\sum_{i=1}^n \varepsilon_i^2 = \sum_{i=1}^n(Y_i - a - bx_i)^2$$
Le stime ottenute dal metodo dei minimi quadrati sono indicate con $\Large \hat a = E(Y) - \hat b E(X)$ e $\Large \hat b = \frac{Cov(X,Y)}{V(X)}$ 

La retta $\Large y = \hat a + \hat b x$ è detta **retta di regressione stimata (retta dei minimi quadrati)** 

>[!example]- Analisi regressione vs analisi correlazione
>Nella correlazione c'è simmetria tra le variabili, mentre nella regressione c'è asimmetria: si suppone di fissare i valori $x_i$ per vedere come variano i valori di $y_i$. 
>Nella regressione si opera come se i valori $x_i$ fossero stati fissati a priori e ottenuti senza errori. 
>Il coefficiente angolare stimato dalla retta di regressione ($\hat b$) è direttamente proporzionale al coefficiente di correlazione lineare $\rho XY$. Infatti: $$\Large \hat b = \frac{Cov(X,Y)}{V(X)} = \rho XY = \frac{\sigma Y}{\sigma x}$$ 



- Criterio dei minimi quadrati 
- Valori stimati dal modello e residui stimati 
	- $\Large \hat y = \hat a + \hat b x$ = retta di regressione stimata. 
- Coefficiente di determinazione 
	- $\Large V(Y) = V(\hat Y) + V(\hat \varepsilon)$
	- $\hat Y$ sono i valori stimati dalla retta 
	- Un modello è affidabile quando: 
		- Variznza di $\hat Y$ è grande e varianza di $\large \hat \varepsilon$ è piccola. == ==

[...]





---

--- Fine argomenti primo compitino ---

---

# 4.  Introduzione al calcolo delle probabilità 

> Strumenti matematici per lo studio degli esperimenti **aleatori** (casuali). 

>[!info]- Definizione classica probabilità 
>> Probabilità di evento = rapporto tra numero di casi favorevoli e numero di casi possibili. 
>
> è una definizione applicabile solo in contesti specifici. (casi finiti e equiprobabili)

>[!info]- Approccio assiomatico per la definizione di probabilità
>> Probabilità di evento = *misura* della possibilità che un evento si realizzi
> \- A. N. Kolmogorov 

### Esperimenti aleatori 
Fenomeni in riferimento ai quali le conoscenze inducono a ritenere possibile una pluralità di esiti. 
#### Spazio fondamentale
L'insieme di tutti i possibili risultati di un esperimento aleatorio ($\Huge \Omega$) è detto **spazio fondamentale o spazio campionario**. 
I singoli risultati vengono chiamati **eventi elementari**. 
$\Omega$ è **discreto** se costituito da un numero finito o da un'infinità numerabile di punti. è **continuo** se costituito da insieme continuo di punti. 

Un **evento** è un sottoinsieme dello spazio fondamentale $\Omega$, cioè ogni elemento dell'insieme delle parti di $\Omega$, ovvero $\Huge P(\Omega)$

### Assiomi di Kolmogorov 

[...]

#### Conseguenze sugli assiomi 
1. Probabilità evento $\Large \emptyset$ = $\Large 0$ 
2. Probabilità evento complementare = $\Large P(A^c)=1-P(A)$
3. Se $\Large A \subseteq B$ allora $\Large P(A) \leq P(B)$ e $\Large P(B-A) = P(B) - P(A)$
4. $\Large P(A\cap B) = P(A)+(B)-P(A\cap B)$
5. Dato un evento $\large B$ e una partizione $A_i \in I \subseteq N$ di $\large \Omega$ allora $\Large P(B) = \sum_{i\in I}P(B\cap A_i)$. Dato che gli eventi di $A_i$ sono incompatibili e la loro unione da $\Omega$, anche gli eventi di $B \cap A_i$ sono incompatibili, per il terzo assioma si ha che [...]

---

### Probabilità condizionata 

Dati due eventi $A$, $B$, con $P(A) > 0$ la probabilità di $B$ nel caso sia noto il realizzarsi di $A$ è la probabilità dell'evento condizionato $B|A$ . Definita da $$\large P(B|A) = \frac{P(B\cap A)}{P(A)}$$

![[Pasted image 20231019101856.png|300]]



## Teorema di Bayes 
Afferma che: dato un evento $B$ non trascurabile e una partizione $A_i, \; i \in I \subseteq N$ di $\Omega$ costituita da eventi non trascurabili, si ha che, $\forall i \in I$, 
$$\Large P(A_i | B) = \frac{P(A_i)P(B|A_i)}{P(B)}$$
Se $P(B)$ non è nota, si può utilizzare la formula delle probabilità totali $P(B) = \sum_{j \in I}P(A_j)P(B|A_j)$ 
[...]

