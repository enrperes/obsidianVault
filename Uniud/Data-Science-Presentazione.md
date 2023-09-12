## Intro
### Incontro 
Rafael Nadal vs Novak Djokovic, due tra i migliori giocatori di tennis della storia si affrontano al Roland Garros 2022, uno dei quattro Slam, nei quarti di finale. 
Questo è il 59° incontro tra i due. Djokovic è in vantaggio per 30 a 28 incontri vinti, ma Nadal è il favorito sulla terra rossa. Tuttavia, le sue condizioni fisiche (ricordiamo che il giorno prima ha vinto una partita durata quasi 5 ore) danno per favorito Djokovic. 
Nadal riesce a portare a casa la partita per **6-2, 4-6, 6-2, 7-6** in 4 ore. 
- Come ha fatto a vincere? 
- Quali sono state le strategie vincenti? 
- Cosa ha sbagliato Djokovic? 
### Dataset
Questa è una delle poche partite che contengono informazioni sulla posizione della pallina e dei giocatori per ogni colpo. Infatti, questi dati sono stati registrati manualmente con un tool online, sovrapponendo il video della partita su un campo digitale. 
Oltre a questo, nel dataset sono presenti informazioni sul punteggio, tipo di colpo e altro. 

## Serve bounce position 

In questa slide sono rappresentati i punti di rimbalzo della pallina della prima e seconda di servizio. Nel tennis infatti se viene sbagliato il servizio, si ha una seconda possibilità.  Sono esclusi dal grafico i servizi sbagliati. 
Come si può vedere, Nadal ha una percentuale di prime di servizio leggermente superiore a Djokovic, 71% contro 67%. 
Dalla posizione delle battute per Nadal si vede come abbia cercato quasi sempre il rovescio del suo avversario, soprattutto con la prima. Questo dato sarà importante più avanti. 

Djokovic invece ha variato di più la posizione, mantenendo comunque una prevalenza verso il rovescio di Nadal, che ricordiamo essere mancino. 

## First and second serve speed

In questo grafico sono rappresentate le velocità dei servizi. Da notare come siano stati fatti solamente tre ace a testa, ovvero tre servizi vincenti che il ricevitore non è riuscito nemmeno a toccare. 
#### Nadal: 
Il punto di forza del servizio di Nadal è la sua costanza, soprattutto nella seconda di servizio. Riesce infatti a mantenere una media intorno ai 155 km/h, riuscendo anche a salire nel corso della partita. 
#### Djokovic: 
La velocità media della seconda di servizio è rimasta costante e ben più bassa di Nadal: intorno ai 140kmh. La prima di servizio è mediamente intorno ai 190 km/h, ma la media è abbassata molto da alcuni servizi molto lenti, intorno ai 160 km/h. Infatti spesso Djokovic è costretto a giocare una prima di servizio più lenta, a differenza di Nadal che riesce sempre a mantenere una media costante. 

## Strike point density map 
Qui rappresentati sono i punti di impatto della pallina durante gli scambi da fondo, quindi escludendo colpi a rete (volée), servizi  e risposte. 
Entrambi i giocatori hanno impattato più colpi dal lato del rovescio, considerato il colpo più debole rispetto al dritto. 
Per Nadal si può notare come sia riuscito a giocare più cosiddetti  *inside-in* e *inside-out* ovvero dritti dal lato del rovescio. Vedremo dopo come faranno la differenza in molti scambi. 

Un altro dato da osservare è come Nadal abbia colpito quasi esclusivamente di dritto mentre era dentro il campo. Questo gli ha permesso di attaccare in modo più incisivo. 

Djokovic invece è stato costretto a colpire più di rovescio anche quando era dentro il campo o vicino alla riga. 
Infatti oltre il 50% dei colpi da fondo li ha impattati dalla parte del rovescio. 

Questo è un dato fondamentale, perchè nonostante il rovescio di Djokovic sia probabilmente il migliore contro il dritto di Nadal, alla lunga è comunque svantaggiato. 

Ultima osservazione da fare: Djokovic ha colpito qualche colpo in più dentro al campo. 

## Djokovic backhand ground strokes 

In questa rappresentazione grafica possiamo vedere punto di impatto, traiettoria della pallina e punto di rimbalzo. 
Del rovescio di Djokovic notiamo come sia riuscito a ottenere solamente un vincente dal lato del dritto di Nadal e 5 dal lato del rovescio. 
I rovesci lungo linea, che coincidono con il rovescio di Nadal, sono uno dei colpi più difficili. Infatti si può notare qualche colpo lungolinea finito in rete. 
Ma soprattutto da notare come questi rovesci lungo linea, tranne qualche eccezione, siano diretti leggermente verso il centro del campo. Dando occasione a Nadal di spostarsi e colpire con il dritto, come abbiamo visto prima. 

## Nadal backhand ground strokes 

Il rovescio di Nadal ha prodotto solo un vincente in tutta la partita e tre errori non forzati in meno di Djokovic. 
Interessante notare che mediamente, i suoi rovesci siano atterrati più dentro al campo rispetto a quelli di Djokovic, consentendogli di entrare di più in campo, come abbiamo visto prima. Per questo Djokovic cercherà spesso di giocargli sul rovescio. 

## Djokovic Forehand ground strokes

Djokovic come abbiamo detto cerca il rovescio di Nadal. Per farlo, dalla parte del dritto è costretto a giocare in lungo linea e infatti da qui si vede come abbia cercato questo colpo la maggior parte delle volte. 
C'è stato qualche errore di troppo, con 7 non forzati, ma ha compensato con gli 11 vincenti. 

## Nadal Inside in & inside out forehand groundstrokes 

Del dritto di Nadal è interessante vedere quelli che ha colpito dalla parte del rovescio: i cosiddetti inside in e inside out. 

## Nadal inside in forehands 

In particolare, guardando i dritti inside in. Infatti su 18 colpi è riuscito a colpire ben 5 vincenti e solamente 2 errori. 
Questo è stato, come abbiamo detto prima, un colpo fondamentale perchè Djokovic (giustamente) cercava di fargli giocare il rovescio. 

## Djokovic drop-flop

Un dato interessante è quello delle palle corte di Djokovic. Su 14 giocate infatti solo una è risultata vincente, mentre 4 le ha sbagliate e le altre sono comunque state prese da Nadal. 

## Djokovic Slice

Lo slice di Djokovic, ovvero quel colpo che taglia la palla dal basso, non è stato dalla parte di Djokovic. 
Infatti ha perso tutti i punti in cui ha giocato uno slice, ad eccezione di uno, risultato vincente. Questo è probabilmente dovuto ad una mancanza di "tocco" dovuto anche dalla pausa durante la quarantena. 

## Under pressure

Per finire, merita analizzare le prestazioni dei giocatori nei punti ad alta pressione, ovvero nei Set point, Break point, o sul 40 pari. 
I break sono sostanzialmente i game vinti durante il turno di risposta. Sono cruciali in quanto è molto più raro perdere un game al servizio, che uno in risposta. 
I punti sul 40 pari invece, sono importanti perchè se vinti conferiscono una chance di vincere il game. 

In questi punti Nadal è in netto vantaggio, totalizzando 17 vincenti  e solo 7 errori non forzati, costringendo Djokovic a 17 errori forzati e solamente 9 vincenti con 13 errori non forzati. 
Speso le partite di tennis si decidono su una manciata di punti importanti, quindi tenere mentalmente in questi punti è proprio fondamentale. 

## Points 

Questi grafico offrono un'interessante spunto di riflessione: Nadal 56 vincenti, djokovic 48. Nadal 25 errori non forzati, Djokovic 36. Nadal totale di 148 punti vinti, Djokovic 130. Le differenze non sono enormi, ma come abbiamo visto prima conta più **quando** si vincono i punti e Nadal è riuscito a vincere nei momenti di pressione.

## Conclusioni

In conclusione: Nadal è riuscito a mantenere un livello molto alto durante tutta la partita e soprattutto nei momenti cruciali, concedendo appunto solo 25 errori gratuiti in quasi 900 colpi totali. Questa vittoria è ancora più speciale perchè poche settimane prima, in una conferenza stampa, ha dichiarato di essere preoccupato per la sua futura carriera, per il problema al piede, e che forse sarebbe stata la sua "ultima partita". 
E invece ha vinto il quattordicesimo Roland Garros. 

---

# Considerazioni post esame

- Slide introduttiva da separare, intro e dataset. 
- Slide conclusioni troppo scura e non risponde alle domande
- Manca un modello sofisticato, clustering o classification 
- Slide **Points** da sistemare il titolo 

