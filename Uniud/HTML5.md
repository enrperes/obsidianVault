[[HTML-old]]

---

HTML W3C: verifica la rispondenza delle pagine web alle specifiche tecniche previste dallo standard HTML:  https://validator.w3.org/ (da usare per controllare il codice)

## Struttura della pagina web
- **Elemento**: contenitore di informazione  e dati. Contiene Tag di apertura e Tag di chiusura. 
- **Tag**: stringa di caratteri racchiusa tra <>
	- Attributi
	- `<p lang= "en-us">` 
- Tag di apertura: specifica il nome dell'elemento 
- Tag di chiusura: `< /nomeElemento >`

## Anatomia di un documento HTML 
#### Dichiarazione di tipo
**DTD** = Documen Type Declaration
`<!DOCTYPE html>` indica al Browser di visualizzare la pagina con le regole che il W3C ha codificato per HTML. 
`<html>` è la radice del documento. Costituito da `<head>` e `<body>` 
#### Metadati
> informazioni che descrivono il documento nel suo complesso.

Introdotti nella `<head>` usando l'elemento `<meta>` insieme agli attributi `name, content, charset, http-equiv`. Riguardano l'insieme di caratteri usato nel documento (*charset*), il tipo di contenuto, nome autore, descrizione, parole chiave...
Per il **titolo** (visualizzato nella barra titolo della scheda Browser) si utilizza `<title> </title>`.

```html
<head> 
	<meta charset="UTF-8">
	<meta name = "description" content = "Free Web Tutorials">
	<meta name = "keywords" content = "HTML, CSS, JavaScript">
	<meta http-equiv = "refresh" content = "30">
</head>
```

# Documentazione

- `<p> </p>` definisce un paragrafo il cui testo è visualizzato con dei margini inferiori e superiori. 
- `<br>` va a capo
- `<hr>` introduce una riga orizzontale
- `<strong> </strong>`  per dare enfasi a un segmento di testo. 
- `<sup> </sup>` <sup> apice </sup> 
- `<sub> </sub>` <sub> pedice </sub> 
- `<blockquote> </blockquote>`  definisce una sezione di testo che è una citazione
- `<cite> </cite>` introduce citazioni bibliografiche 

>[!example]- Caratteri speciali 
> ![[HTML-special-chars]]


## Style 
> permette di definire lo stile. Può essere **Attributo** o **Elemento**, si sconsiglia di usarlo come attributo. 

Il tag `<style>` va incluso nell'*header* della pagina: `<head>`
```html
<html>
<head> 
<style>
	h1 {color: red;}
	h2 {color: #fff666;}
</style> 
</head>
<body>
<p> Loren Ipsum </p> 
</body>
</html>
```


## Attributi semantici
> Ogni elemento HTML può essere **identificato** da in **id** usando l'attributo id e il suo valore.  `id = "nomeId"`
- Il valore di id deve iniziare con una lettera oo con `_` . No numeri. 
> Ogni elemento HTML può essere **classificato** usando l'attributo **class** con il suo valore `class = "nomeClass"`
- Un elemento può appartenere a più classi, la classe 

## Elementi in blocco e in linea
#### In blocco:
Visualizzato in una nuova linea, ogni elemento che lo segue è visualizzato su una nuova linea. 
- `<address>` 
- `<article>` 
-  `<aside>`
- `<blockquote>` 
- `<details>` 
- `<dialog>`
- `<div>` 
- `<form>` 
- `<h1>` 
- `<li>` 
- `<main>`
- `<nav>`
- `<section>`
- `<table>`
- `<p>`
- `<header>
#### In linea 
[...]

## Novità HTML5

### `<header>` e `<footer>`
- Per rappresentare intestazione di una pagina: gruppo di elementi introduttivi o di ausilio alla navigazione
- Per indicare un'aera a piè pagina dove sono raggruppati elementi (autore, copyright...)
### `<article>`  e `<section>` 
- Indicare area che rappresenta contenuto autosufficiente e usabile al di fuori del contesto originale. (una tesi)
- Utile per indicare area omogenea tematicamente o funzionalmente. (sezioni della tesi)
### `<nav>` e `<aside>`
- Per raggruppare elementi di supporto alla navigazione o rappresentare un menù navigazione fuori dalla testata
- per indicare area che contiene info correlate al contenuto principale in modo tangenziale (non strettamente appartenenti al contesto principale)


#todo 
## Liste
## Tabelle
## Collegamenti ipertestuali
## Immagini
## Moduli
## Audio e video


----

# Esercizi 

[[Esercizio-Input-HTML]]
---
[[Esercizio1-HTML-Orario]]
---
[[Esercizio8-HTML-Input]]
---