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