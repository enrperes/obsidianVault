# [[CSS.pdf]]


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
- Background color 
- Scroll behaviour

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
- Dimensioni 
- Bordi 
- Margini 
- Visibilità 
- Posizione 

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


## Floating, positioning (per esame)

[posizionamento]

# Layout 
%%guardare tutti i relativi esempi nel Teams.%%

- **Fixed**
	> mantiene dimensioni indipendentemente dalla dimensione della finestra del browser 
	
	- Dimensioni degli elementi e relazioni tra elementi, allineamenti sono decisi e impostati in **pixel**. 
	- Gli elementi venivano collocati dentro in `<div>` per distribuire spazio extra laterale equamente.
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
- **Flexbx**
> il più usato 



---

ESAME

- 1 Esercizio XML:
	- correggere errori 
	- oppure dato XML fare DTD oppure dire se: dati XML e DTD, i due funzionano insieme o ci sono errori. 
- CSS
	- solo un esercizio: fornito HTML, scrivere CSS per rispettare le regole date. 
	- ci saranno selettori e proprietà tra le meno usate e più complicate 
- HTML 
	- roba di Salvati
- JavaScript
	- Sempre Salvati

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
>>[!example]+ Codice HTML
>>```html
>><html>
>>	<head> 
>>		<title> Tecnologie WEB </title> 
>>		<link href = "style.css" type "..."> 
>>	</head> 
>>	<body> 
>>		<div id ="wrapper">
>>			<div id ="header"><p>Header</p></div> 
>>			<div id ="main">
>>				<p> Contenuto principale </p>
>>				<p> Loren.. </p>
>>			  </div> 
>>			<div id = "secondary">
>>				<p> Articoli correlati:</p> 
>>				<ul>
>>					<li> LINK 1 </li>
>>					...
>>				</ul>
>>			</div>
>>			<div id = "footer"><p>Footer</p></div>
>>		</div>
>>	 </body>
>></html>
>> ```


>[!done]- Soluzione (DA RIVEDERE!)
> ```css
> #wrapper{
> 	width: 960px;
> 	margin: auto;
> }
> #headers{
> ...
> }
> #main{
> 	width: 650px;
> 	margin: 20px; 
> 	float: left; 
> }
> #footer{
> 	clear: both; 
> }
> #secondary{
> 	width: 250px; 
> 	margin: 20px;
> 	float: right;
> }
> ```


---
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