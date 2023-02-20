 ![[CSS.pdf]]
# CSS3
Ultimo standard (retro-compatibile) 
[Proprietà introdotte con CSS3](https://meiert.com/en/indices/css-properties/)
[Tool per verificare se proprietà è supportata o meno](https://caniuse.com/?search=color)

### Vendor prefix 
I prefissi dei browser sono utilizzati per aggiungere nuove funzioni che potrebbero non far parte delle specifiche CSS finali. 
Il prefisso per Safari e Chrome è `-webkit` 
Ad esempio per `border-radius` nelle vecchie versioni dei browser si usava: ` -webkit-border-radius: 25px;` 

Firefox: `-moz-`
Safari: `-webkit-`
Chrome: `-webkit-` 
Opera: `-ms-` 

## `<style> o <link>`? 
`<style>` include le regole CSS direttamente in HTML. `<link>` permette di collegare un file .css esterno, como per manutenzione e usare proprietà diverse. 

# Selettori


> permettono di identificare gli elementi da modificare

- è possibile usare più selettori nella stessa regola separati da `,`
- I selettori sono **Case sensitive**. 
>[!info]- Selettori
>>[!example]+ Universal selector
>>Applies to **all elements** in the documen
>>` *{}` 
>
>>[!example]+ Type Selector
>>Matches element names
>>`h1, h2, h3 {}` -> Targets h1, h2, h3 elements. 
>
>>[!example]+ Class Selector
>>Matches an element whose `class` attribute matches the one specified after the period symbol:
>>`.note{}` -> targets any element whose class attribute has a value of *note* 
>
>>[!example]+ ID Selector
>>Matches an element whose `id` attribute has a value that matches the one specified after the hash symbol `#` 
>>`#introduction {}` -> targets all the elements whose ID attribute has a value of *introduction*
>
>>[!example]+ Child Selctor 
>>Matches element that is a child of another 
>>`li>a{}`
>>Targets `<a>` elements that are children of `<li>` element (but NOT other `<a>` elements in the page)
>
>>[!example]+ Descendant Selector
>>Matches an element that is a descendent of another specified element (NOT just a direct chihld of that element)
>>`p a {}`
>>Targets `<a>` elements that sit inside `<p>  element. 
>
>>[!example]+ Adjacent Sibling Selector
>>Matches an element that is the next sibling of another 
>>`h1+p {}` -> targets the first `<p>` element after any `<h1>` element but NOT other `<p>` elements! 
>
>>[!example]+ General Sibling Selector
>>Matches an element that is a sibling of another. Does not have to be directly preceding element. 
>>`h1~p{}` 
>>With two `<p>` elements that are siblings of an `<h1>` element, this would apply to both. 

```css 
h1, h2, h3 {font-family: Arian; color: yellow;}
```

## How CSS rules cascade

#### Last Rule
- If two selectors are identical the **latter** of the two will take precedence. 
#### Specificity
If one selector is more specific than the others, the more specific rule wil take precedence. over more general ones. 
#### IMPORTANT
`!important` added after any property to indicate that it should be considered more important than others. 

## Inheritance 
Alcune proprietà vengono automaticamente ereditate dagli elementi figli. (`font-family:`). Altre come `background-color` non vengono ereditate.
Si può forzare l'ereditarietà da elemento contenitore a elemento child con la proprietà `inherit` 
```css
body{
	font-family: Arial;
	color: #3451AB;
	padding: 10px;
}
.page {
	border: 1px solid Black;
	background-color: #efefef;
	padding: inherit;
}
```

## Pseudo classi relative a stati
Aggiungono un attributo fittizio a cui applicare specifiche proprietà in caso di eventi. 
In ordine: 
- :link (link non visitati)
- :visited (link visitati)
- :hover (mouse over)
- :focus (focus)
- :active (activated)

## Pseudo classi strutturali 
Consentono di selezionare elementi difficili da raggiungere con selettori semplici. 
- :root
- :first-child
- :nth-child()
- :nth-last-child()
- :last-child
- :only-child
- :nth-of-type()
- :first-of-type
- :empty

Se un oggetto contiene degli elementi figli, l'indice dei figli inizia da 1 e non da 0.

### `:nth-child()` 
Può essere anche utilizzato con delle formule: per colorare i testi di una tabella in modo alternato: `tr td {color:black} & tr:nth-child(odd) td {color:red}`

### `:target`
Permette di selezionare un elemento della pagina che corrisponde a un indirizzo di riferimento. Es: data una pagina con dei link all'interno, la pseudo classe `:target` permette di selezionare un elemento di destinazione del link nel momento in cui è selezionato. 

### `:not` 
Identifica gli element che NON coincidono con il selettore `:not` 

## Pseudo-elementi
Si combinano ai selettori con `::` 
Creano elementi fittizi a cui applicare proprietà personalizzate. 
`::first-letter` identifica la prima lettera degli elementi selezionati 
`::first-line` identifica la prima linea degli elementi selezionati 
`::before` e `::after` generano e inseriscono contenuto prima o dopo l'elemento. 
```css
h1::first-letter {color: yellow;}
```
# Color

- RGB 
- HEX 
- Color Names
- [[HSL]], HSV, HSB. 
- CMYK 

# Background 
- Immagini
	- `background-image`: proprietà che permette di aggiungere un'immagine di sfondo a qualsiasi elemento. 
	- `background-repeat` 
		- `repeat` = default
		- `repeat-x` = replica orizzontalmente 
		- `repeat-y` = replica verticalmente
		- `no-repeat` = nessuna replica. 
		- `background-position` permette di specififare la posizione dell'immagine di sfondo
		- `background-attachment`: se immagine deve scrollare (`scroll`)
		- `background-size` 
			- `auto`
			- `cover`
			- `contain`
- Background color 
	- **gradienti**
		- `linear-gradient()` ha per argomenti la direzione in cui si sviluppa e i colori del gradiente


# Famiglie di font
[[Tecnologie Web#Font]]

con `@font-face` si possono usare font da far scaricare agli utenti. 
## Proprietà
- `font-weight`
- `font-style`
- `font-stretch`
## Allineamento del testo 
`text-align` imposta l'allineamento 
- `left`
- `right`
- `center`
- `justify`
- `vertical-align`
- `text-indent` 


---
>[!question]+ Esercizio
>Data l'immagine "uniud.jpg" nella cartella "image" e il file HTML "immagine.html"
>Creare il file "immagine.css" da inserire nella cartella "css"
>Per fare in modo che l'immagine di sfondo venga ripetuta per coprire l'intera finestra del browser.
>>[!done]- Soluzione
>>```css
>>body{
>>	height: 100%;
>>	background-image: url("/images/uniud.jpg");
>>	background-repeat: repeat; 
>>}
>>```

---
2022-12-07 
# Box Model
> Ogni elemento HTML è dentro un BOX, invisibile. Con CSS si può controllare: 
> - dimensione
> - bordi
> - margini
> - visibilità
> - posizione


## Padding 
> Per aggiungere spazio di padding tra contenuto e bordo 
> `padding` 
> `padding-top`
> `padding-right`
> `padding-...`

I valori sono misure di lunghezza o valori percentuali 

## Bordi
> Area tra padding e margine 
> Rende visibile l'area costituita da contenuto e padding 
> `border-style` , `border-top-style` 
> - `border-width` 
> - `border-color`
> - `border-radius` 
> - `border-image` definisce un bordo basato su immagine. 

## Margini 
> Spazio tra gli elementi di tipo blocco. 

# `div` 

```css
div{
	height: 400px; 
	width: 300px;
	background-color: red;
}
p {
	height: 70%; 
	width: 70%;
	background-color: yellow; 
}
```

### Limiti per design fluidi 
```css
td {
min-width: 400px;
max-width: 500px;
min-height: 400px;
max-height: 500px;
}
```

##### OverFlow 
- Visible
- Hidden
- Scroll 
- Auto 

# Posizionamento 
> CSS consente di controllare il posizionamento degli elementi tramite due metodi: 
> - Floating 
> - Positioning

## Floating
- Si utilizza la proprietà `float`, applicabile a tutti gli elementi. Permette di muovere l'elemento all'estrema destra (`right`) o all'estrema sinistra (`left`) dell'area del contenuto del padre. 
- La prorietà si applica a tutto l'elemento incluso **padding, margini e bordi**. 
- l'elemento viene inserito dentro il padding del padre, ma può uscire.
- Proprietà non ereditata. 
### Inline floating
gli elementi **inline** floating si comportano come block, perchè i margini vengono visualizzati su tutti i lati e non solo a destra e sinistra. 
### Block floating
un elemento **blocco floating** sarà sempre ssotto gli elementi blocco che lo precedono.
### Annullare il floating
Per ripristinare il normale comportamento degli elementi dopo un elemento floating è necessareio utilizzare la proprietà `clear`
`clear` si applica soo agli elementi di tipo blocco. deve essere applicata all'elemento che si vuole venga posizionato **sotto** all'elemento floating (non all'elemento floating)
### Floating per layout a colonne: 
`float` può essere usato per organizzare il layout di un sito in colonne. due metodi: 
1. Rendere floating a sinistra un primo `<div>` e aggiungere un margine sinistro sufficiente a un secondo `<div>`
2. Rendere floating a destra o a sinistra due `<div>` 
3. rendere floating a sinistra un div e a destra un altro 
Nella creazione di siti con layout a colonna bisogna impostare bene le dimensioni degli elementi floating (padding, bordi, margini)

## Positioning
> consente di posizionare precisamente elementi sulla pagina

`position` permette di indicare quale metodo utilizzare: 
- ==static==: default 
- ==relative==: posizionamento **relativo** rispetto al normale flusso
	- Muove un elementi rispetto al posto che avrebbe normalmente avuto nel flusso degli elementi. Lo spazio che l'elemento avrebbe normalmente occupato viene mantenuto
	- L'elemento nella **nuova** posizione può andare a sovrapporsi con altri elementi
- ==absolute==: posizione in modo **assoluto** rispetto al primo antenato **non statico**.
	- Lo spazio nel flusso viene ignorato. 
	- `absolute` fa riferimento al più vicino antenato che utilizza position con valore diverso da `static`. se non c'è antenato di questo tipo, `absolute` fa riferimento alla radice `<html>` (quindi alla finestra del browser)
	- L'antenato può essere: 
		- Block
			- posizionamento viene calcolato rispetto al limite del **padding**. 
		- Inline
			- posizionamento calcolato rispetto all'area del contenuto.
	- un inline con position `absolute` si comporta come un block.
- ==fixed==: posiziona in modo **fisso** rispetto alla finestra del browser. La posizione viene mantenuta anche durante lo scrolling. 
	- La differenza con absolute è che lo spostamento degli elementi è relativo alla finestra del browser. Gli elementi posizionati restano fissi nello schermo anche durante lo scrolling. 

### Sovrapposizioni
- Gli elementi posizionati possono sovrapporsi tra di loro: `z-index` permette di modificare l'ordine di visualizzazione elementi a schermo. 
- Default: ordine z = ordine di comparsa elementi nel codice HTML
- Il valore di `z-index` è un intero positivo o negativo che determina l'ordine. `z-index: 1000` farà apparire l'oggetto sopra tutti. 

`top, right, bottom, left` permettono di specificare l'offset dell'elemento rispetto al contenitore antenato (???)

# Layout 
%%guardare tutti i relativi esempi nel Teams.%%

- **Fixed**
	> mantiene dimensioni indipendentemente dalla dimensione della finestra del browser 
	
	- Dimensioni degli elementi e relazioni tra elementi, allineamenti sono decisi e impostati in **pixel**. 
	- Gli elementi venivano collocati dentro in `<div>` per distribuire spazio extra laterale equamente.
	- Per posizionare la pagina con layout fisso al centro orizzontale della finestra: `margin: auto;`
	- Svantaggi: 
		- Non si adatta alla dimensione della finestra che può essere più piccola o più grande. 
		- Pensato solo per gli schermi 1024x768 pixel. 
- **Fluid** 
	> Le dimensioni cambiano in modo proporzionale alle dimensioni della finestra
	
	- La dimensione delle pagine varia dinamicamente in funzione dello **spazio**
	- Vengono usate le percentuali per le dimensioni degli elementi, sempre in funzione delle dimensioni della finestra. 
	- Svantaggi: 
		- righe di testo o elementi molto lunghi o corti
			- Si utiilzza `min-width` e `max-width` per minimizzare il problema. 
- **Elastic** 
	> Dimensioni del layout cambiano in modo proporzionale alla dimensione del testo. 
	
	- Permette di avere righe sempre della stessa lunghezza 
	- Le dimensioni degli elementi sono impostate in **em**.
	- Svantaggi: 
		- Non funziona bene su contenuti non testuali. 
- **Hybrid** 
	> Combina aree fisse ee aree ibride
	
	- Ad esempio si realizzano con colonne *float* e *position*. 
- **Flexbox**
> Think in terms of two axes: `row` and `column`. 
```css
body{
	display:flex; /* usa il layout flex */
	flex-direction: row; /* in direzione orizzontale */
	flex-wrap: wrap; /* possibilità di andare a capo */
}
```
Con Layout `flex` si usa `flex` al posto di `width` con `direction:row` e al posti di `height` con `direction:height`


---

#### **ESAME**

- Un esercizio **XML**:
	- correggere errori 
	- oppure: dato XML fare DTD; oppure dire se: dati XML e DTD, i due funzionano insieme o ci sono errori. 
- **CSS**
	- solo un esercizio: fornito HTML, scrivere CSS per rispettare le regole date. 
	- ci saranno selettori e proprietà tra le meno usate e più complicate 
- **HTML** 
	- Salvati si inventerà qualche esercizio 
- **JavaScript**
	- Altri misteri di Salvati 

Il punteggio delle varie parti è proporzionato alle ore di lezione dei vari argomenti. (XML conta poco, CSS di più)

---

>[!todo]+ Esercizio: layout 2 colonne float fisso
> - dato il file HTML "2col-float-fisso.html"
> - Creare il file CSS per fare in modo che: 
> 	- L'elemento con id "wrapper" abbia una larghezza fissa di 960px e sia centrato
> 	- Gli elementi con id "header" e "footer" occupino tutta la larghezza del "wrapper"
> 	- L'elemento "main" si estenda per 650px da sinistra 
> 	- L'elemento "secondary" si estenda per 250px da destra
> 	- "main" e "secondary" siano distanti 20px dai bordi del "wrapper" e tra di loro
> - Usare le proprietà float 
> 
>>[!example]+ Codice HTML
>>![[HTML-esercizio-layout2colfloatfixed]]
>
>>[!done]- Soluzione (DA RIVEDERE!)
>> ![[CSS-esercizio-layout2colfloafixed]]


---
#todo 
>[!todo]- Esercizio: Layout 3 colonne position fisso.
>Dato il file HTML, creare il file CSS per fare in modo che: 
> - Layout si estenda per 960px al centro della pagina 
> - l'elemento con id "header" occupi tutta la larghezza 
> - Gli elementi "navigation" e "secondary" occupino 200px in larghezza 
> - L'elemento "main" occupi 530px e stia al centro
> - Gli spazi tra le colonne siano uniformi
> - Non ci siano spazi tra le colonne e il limite del layout 
> - Si usi la proprietà `position`
> 

>[!example]- Codice HTML:

```html
<body>
	<div id = "wrapper">
		<div id = header">
```

## Grid Framework 
- Usati per semplificare la creazione di layout a griglia 

## Viewport 
```css
<meta name = "viewport" content = "width=device-width, initial-scale = 1"> 
```


# Media query 
> direttive CSS per specificare regole da applicare in particolari condizioni relative ai media.

`@media` seguito dal tipo di media e espressioni con condizioni. 
Le media query possono essere specificate nel file CSS o con l'attributo `media` nel tag `<link>` 

```css
@media screen and (min-width: 400px){
/* regole di stile */
}
```
```html
<head>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="style2.css" media ="screen and (min-width:800px)">
</head>
```

I tipi di **media** specificabili sono: 
- `all` = tutti i dispositivi
- `screen` = schermo del computer, tablet, smartphone
- `print` = pagina stampata
- `speech` = sintesi vocale 
Alcune caratteristiche comuni: 
- `min-width`
- `max-widh`
- `orientation`
- `aspect-ratio`
### Mobile first
> Strategia diffusa recentemente che prioritizza i dispositivi mobile. 

- Vengono scritte le regole CSS pensando ai dispositivi mobile
- Con le media query si scrivono le regole per le eccezioni
- Si usa min-width per specificare quali proprietà si applicheranno ai viewport con risoluzione alta 
Al contrario, l'approccio **desktop down**: usando max-width

# FlexBox
`display:flex` serve a definire un contenitore flessibile. I figli diretti di un contenitore flex diventano automatiamente elementi **flex**. 
### Proprietà
- `flex-direction` determina la direzione in cui disporre gli elementi 
	- column: dispone in verticale
	- column-reverse dispone in vertiale (basso-alto)
	- row: dispone in orizzontale
	- row-reverse: orizzontae (destra-sinistra)
- `flex-wrap` determina se gli elementi possono andare a capo
	- wrap fa andare a capo
	- no-wrap impedisce di andare a capo, schiaccia
	- wrap-reverse fa andare a capo in ordine inverso. 
- `flex-flow` permette di specificare sia direzione che a capo. 
- `justify-content` serve per la disposizione sulla direzione principale:
	- center dispone al centro
	- flex-start dispone all'inizio del contenitore
	- flex-end dispone alla fine del contenitore 
	- space-arount mette spazio prima, dopo e tra gli elementi
	- space-between mette spazio tra gli elementi 
- `align-items` serve ad allineare rispetto alla direzione secndaria
	- center allinea al centro
	- flex-start allinea all'inizio 
	- flex-end allinea alla fine 
	- stretch riempie il contenitore 
	- baeline alinea rispetto alla baseline del testo all'interno del box 
- `align-content`

---

![[Pasted image 202 21215121106.png|400]]
![[Pasted image 20221215121143.png|400]]
soluzione punto a: 

```css
body{
	display: flex; 
	flex-direction: low; 
	flex-wrap: wrap;
}
```

---
- Utilizzare font Arial o Helvetica o, in assenza, un altro font sans-seriff per gli elementi "p" della classe "note"
```css
p.note{
font-family: arial, helvetica, sans-seriff; 
}
```

- Applicare il grassetto all'ultimo elemento `<li>` della lista `<ol>` 
```css
ol>li:last-child { /* figlio di tipo li delle liste ol*/
	font-weight: bold; 
}
```

- Evidenziare con sfondo giallo gli elementi "a" quando passa sopra il mouse
```css
a:hover{
background-color: yellow;
}
```



