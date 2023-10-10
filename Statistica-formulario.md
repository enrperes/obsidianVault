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
> 	- se $\mathbb{y}$ è un insieme finito o al più numerabile (età)
> - Continue 
> 	- Se $\mathbb{y}$ è un insieme continuo (distanza)

---

# Formule 


> [!help]- Frequenza assoluta $\large f_j$
> Il numero di volte che $y_j$ risulta osservata. 


> [!help]- Frequenza relativa
> La proporzione $p_j$ di unità statistiche portatrici di tale modalità o classe di modalità. Corrisponde a: $$\Large p_j = \frac{f_j}{\sum_{j=1}^J f_j} = \frac{f_j}{n}$$
> Notare che $$\Large \sum_{j=1}^J p_j = 1$$
> Le frequenze relative sono utili per percepire il peso delle varie modalità. 

> [!abstract] Frequenze cumulate
> >[!help]- Frequenza assoluta cumulata $F_j$
> >definisce la frequenza assoluta di modalità o classi di modalità non superiori alla j-esima, con $j = 1, ..., J$. Si ottiene cumulando progressivamente le frequenze: $$Large F_, = \sum_{i=1}^jf_i$$
> 
> >[!help]- Frequenza relativa cumulata $P_j$
> >$$\Large P_j = \sum_{i=1}^j p_i$$

---

>[!info]- Diagrammi a barre (a rettangoli)
>![[Pasted image 20231010180735.png|500]]
> Utili per rappresentare **serie statistiche sconnesse**. Le altezze sono proporzionali alla frequenza delle modalità, considerando le **Frequenze relative**. I rettangoli sono raggruppati secondo il criterio di classificazione. 

>[!info]- Diagrammi a bastoncini
>![[Pasted image 20231010181009.png|500]]
>Rappresentare distribuzioni di frequenza **assoluta o relativa** riferite a dati **quantitativi discreti**. Altezza dei bastoncini proporzionale alla frequenza (assoluta o relativa) della modalità. 

>[!info]- Istogrammi 
>![[Pasted image 20231010181532.png|300]]
>Rappresentare distribuzioni di **frequenza assoluta o relativa** con modalità raggruppate in classi, riferite a dati **quantitativi continui**. 
>L'istogramma consiste in un insieme di rettangoli adiacenti, ognuno rappresentante una classe. 
> Il rettangolo corrisponde alla classe $j-$esima $y_{j-1} \dashv y_j, \;\; j=1, ..., J$ ha come base l'intervallo $\large [y_{j-1}, y_j]$
