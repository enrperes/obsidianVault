>[!help]- Riga
>Corrisponde a un'unità statistica. Contiene i valori su essa rilevati dalle caratteristiche di interesse. 

>[!help]- Colonna
>Corrisponde a una caratteristica di interesse. Contiene i valori di tale caratteristica rilevati sulle unità statistiche. 

>[!help]- Variabile
> Caratteristica delle unità statistiche. Al variare dell'unità può assumere valori diversi. Si indicano con lettere maiuscole: $X, Y$. 

>[!help]- Modalità di una variabile 
>I valori che essa può assumere (noti a priori). Si indicano con lettere minuscole: $x, y$. L'insieme $\mathbb{y}$ è l'insieme di tutte le possibili modalità di $Y$. 

>[!help]- Variabili qualitative (categoriali)
>Se le modalità sono espresse in forma verbale. Se le modalità possibili sono solo due -> variabile **dicotomica (binaria)**
>- Sconnesse
>	- non è possibile trovare un ordinamento naturale (colore occhi)
>- Ordinali
>	- è possibile trovare un ordinamento naturale (livello di istruzione)

> [!help]- Variabili quantitative (numeriche)
> Se le modalità sono espresse in forma numerica
> - Discrete
> 	- se $\mathbb{Y}$ è un insieme finito o al più numerabile (età)
> - Continue 
> 	- Se $\mathbb{Y}$ è un insieme continuo (distanza)


---

# Formule 


> [!help]- Frequenza assoluta $\large f_j$
> Il numero di volte che $y_j$ risulta osservata. 
> Spesso è conveniente (per variabili quantitative continue) raggruppare in **classi di modalità**. Di solito $\sqrt n$ numero di classi. 

> [!help]- Frequenza relativa
> La proporzione $p_j$ di unità statistiche portatrici di tale modalità o classe di modalità. Corrisponde a: 
> $$\Large p_j = \frac{f_j}{\sum_{j=1}^J f_j} = \frac{f_j}{n}$$
> (ovvero $\frac{\texttt{freq. assoluta}}{n}$)
> Notare che 
> $$\Large \sum_{j=1}^J p_j = 1$$
> Le frequenze relative sono utili per percepire il peso delle varie modalità. 

> [!abstract] Frequenze cumulate
> >[!help]- Frequenza assoluta cumulata $F_j$
> >definisce la frequenza assoluta di modalità o classi di modalità non superiori alla j-esima, con $j = 1, ..., J$. Si ottiene cumulando progressivamente le frequenze: $$Large F_, = \sum_{i=1}^jf_i$$
> 
> >[!help]- Frequenza relativa cumulata $P_j$
> >$$\Large P_j = \sum_{i=1}^j p_i$$

---
# Rappresentazioni grafiche

>[!info]- Diagrammi a barre e a barre multiple 
>![[Pasted image 20231010180735.png|500]]
> Utili per rappresentare **serie statistiche sconnesse**. Le altezze sono proporzionali alla frequenza delle modalità, considerando le ==**Frequenze relative==**. I rettangoli sono raggruppati secondo il criterio di classificazione. 
> Le basi hanno la stessa dimensione. 
> I diagrammi a **barre multiple** sono utili per rappresentare serie statistiche sconnesse dove la distribuzione di frequenza è suddivisa secondo un criterio di classificazione. 
> ![[Pasted image 20231023134620.png|500]]

>[!info]- Diagrammi a bastoncini
>![[Pasted image 20231010181009.png|500]]
>Rappresentare distribuzioni di frequenza **assoluta o relativa** riferite a dati **quantitativi discreti**. Altezza dei bastoncini proporzionale alla frequenza (assoluta o relativa) della modalità. 

>[!info]- Istogrammi 
>![[Pasted image 20231010181532.png|300]]
>Rappresentare distribuzioni di **frequenza assoluta o relativa** con modalità raggruppate in classi, riferite a dati **quantitativi continui**. 
>L'istogramma consiste in un insieme di rettangoli adiacenti, ognuno rappresentante una classe. 
> Il rettangolo corrisponde alla classe $j-$esima $y_{j-1} \dashv y_j, \;\; j=1, ..., J$ ha come base l'intervallo $\large [y_{j-1}, y_j]$
> Se i rettangoli hanno la stessa base, l'altezza è proporzionale alla frequenza. 
> Può anche essere usato per rappresentare **variabili statistiche quantitative discrete.**
> 

>[!info]- Poligoni di frequenza
>Smussamento locale dell'istogramma
>Ottenuto unendo i punti di mezzo dei lati superiori dei rettangoli dell'istogramma con una linea spezzata. ![[Pasted image 20231023223922.png|500]]
>Se i rettangoli hanno la stessa base, l'area

>[!info]- Funzione di ripartizione empirica
>Rappresentazione grafica per dati quantitativi. 
>Il valore nel punto $y \in \mathbb{R}$ corrisponde al rapporto tra il numero di osservazioni minori o uguali a $y$ e il numero totale di osservazioni: 
>$$F_n(y)=\frac{n. oss \leq y}{n. tot. oss}$$ 
>Al variare di $y$, fornisce la proporzione cumulata di unità statistiche con modalità $\leq$ a $y$. 
>Utile per rappresentare graficamente le frequenze relative cumulate, per variabili ==quantitative discrete==. 

# Indici sintetici 
Indicano la posizione, variabilità, simmetria, curtosi di una variabile statistica. 

> [!todo]+ Media aritmetica 
> Calcolabile per variabili quantitative. Indicato con $E(Y)$ o $\mu$. 
> Risente molto della presenza di valori anomali. Non si calcola per dati categoriali, ad eccezione delle variabili dicotome (booleane) che assumono il valore di 0 e 1. 
> - Dati grezzi: 
> 	- $$\Large E(Y) = \frac 1 n \sum_{i=1}^n y_i$$
> 	- Ovvero la somma delle modalità fratto il numero di modalità 
> - Tabella di frequenza assoluta o relativa: 
> 	- $$\Large E(Y) = \frac 1 n \sum_{j=1}^J y_j f_j = \sum_{j=1}^J y_jp_j$$
> 	- Ovvero la somma del prodotto di modalità e frequenze assolute diviso il numero di modalità oppure la somma del prodotto delle modalità con le frequenze relative. 
> - Tabella di frequenza assoluta o relativa con modalità raggruppate in classi: 
> 	- Si calcola il punto centrale $\large y_j^c = (y_j-1 + y_j)/2$ con $j = 1, ..., J$ delle singole classi e 
> 	- $$\Large E(Y) = \frac 1 n \sum_{j=1}^J y_j^c \;f_j^c$$
> 	- Ovvero la somma del prodotto tra il punto centrale delle singole classi e le frequenze assolute, diviso il numero di modalità. 
> ### Proprietà 
> >[!example]- Proprietà di Cauchy
> >Sia $S_y = \{y_1, ..., y_n\}$ ordinato, allora $$\Large y_1 \leq E(Y) \leq y_n$$ 
> >Ovvero la media è compresa tra il più piccolo e più grande valore osservato. 
> 
> >[!example]- Proprietà di Baricentro 
> > Sia $\large Y-E(Y)$ la variabile scarto di $Y$ dalla sua media $E(Y)$, allora $$\large E(Y - E(Y)) = 0$$
> > La somma delle differenze tra i valori e la loro media aritmetica è pari a zero: 
> > $$\large \frac 1 n \sum_{i=1}^n (y_i - E(Y)) = 0$$
> 
> >[!example]- Proprietà di linearità 
> >La media aritmetica di una combinazione lineare di più insiemi è uguale alla stessa combinazione lineare delle medie aritmetiche dei singoli insiemi dati. 
> >
> >La media aritmetica di $\large Y$, ottenuto da una trasformazione lineare $\large Y = \alpha X + \beta$ di $\large X$ con media $\large $
> >> 


> [!todo]+ Mediana
> Calcolabile per variabili qualitative ordinali o quantitative, si indica con $\large y_{0.5}$. 
> Indice di posizione robusto rispetto ai valori anomali. 
> Valore che divide in due parti uguali i dati, ordinati in modo crescente. 
> - Dati grezzi ordinati in modo crescente 
> 	-  Alla modalità in posizione $\frac{n+1}{2}$ se $n$ dispari. 
> 	- Alle modalità nelle posizioni centrali se $n$ è pari. Se le due modalità centrali non coincidono, la mediana non è unica. 
> - **Distribuzione di frequenza relativa o assoluta** (anche per raggruppamenti in classi)
> 	-  **Frequenze assolute**
> 		- $n$ dispari
> 			- Mediana = modalità $y_i$ che presenta la frequenza assoluta cumulata $F_j$ più piccola tale che $\large F_j \geq \frac{(n+1)}{2}$.
> 		- $n$ pari 
> 			- Mediana = modalità $y_i$ che presenta la frequenza assoluta cumulata $F_j$ più piccola tale che $F_j \geq \frac n 2$ 
> 	- **Frequenze relative** (dimensione $n$ non nota)
> 		- Mediana = modalità $y_i$ corrispondente alla frequenza relativa cumulata più piccola tale che $\large P_j \geq 0.5$.
> 		- Ovvero la prima modalità con frequenza relativa cumulata maggiore a 0.5

> [!todo] Moda
> Calcolabile per variabili qualitative o quantitative. Si indica con $\large y_{mo}$ e corrisponde alla modalità che si verifica con maggiore frequenza. Non è detto sia unica. 
> Indice di posizione molto grezzo, può non individuare il centro dei dati: ci sono distribuzioni unimodali, bimodali o multimodali. 
> Nel caso si abbia una tabella di frequenza con modalità raggruppate in classi si individua la classe modale solo se le classi hanno la stessa ampiezza. 

## Indici di variabilità per variabili quantitative
- Campo di variazione 
- Scarto interquartilico 
- Varianza e scarto quadratico medio
- Coefficiente di variazione

> [!example] Campo di variazione
> Sia $Y$ una variabile statistica quantitativa. Il **campo di variazione (range)** corrisponde a: 
> $$\large R_Y = y_{(n)} - y_{(1)}$$
> ovvero alla differenza tra l'osservazione più grande e l'osservazione più piccola. 

> [!example] Scarto interquartilico
> Lo **scarto interquartilico** di una variabile statistica quantitativa $Y$ corrisponde a: 
> $$\Large SI_Y = Y_{0.75} -  y_{0.25}$$
> Ovvero alla differenza tra il terzo e il primo quartile. Esprime la lunghezza dell'intervallo comprendente il 50% centrale della distribuzione di frequenza (la scatola del boxplot)

Si indica con $\large V(Y)$ o con $\large \sigma ^2$. Data una variabile statistica $Y$ con media $E(Y)$, si ha: 
$$\large V(Y) = E[(Y-E(Y))^2]$$
Quindi è la media aritmetica della variabile scarto $Y - E(Y)$ elevata al quadrato. Misura la dispersione dei dati attorno alla media. L'unità di misura è pari a quella dei dati elevata al quadrato. 
Lo **scarto quadratico medio** di $Y$ indicato con $\large \sigma$ è la radice quadrata della varianza: (stessa unità di misura di Y)
$$\large \sigma = \sqrt{V(Y)}$$
Corrisponde a: 
[---]
