[[JavaScript-old]]

---

# JavaScript, Web Application Programming Interface (API), Web Application Framework

Le tecnologie per lo sviluppo del Web 2.0 si dividono in 
1. Linguaggi di programmazione e scripting
2. Web Application Programming Interface (API)
3. Web Application Framework

## Linguaggi di programmazione e scripting 
- JavaScript 
- PHP
- SQL
- Python
- Java

### JavaScript
> Linguaggio di programmazione orientato agli oggetti e agli eventi

Interagisce con il browser attraverso il DOM (Document Object Model): costruito come un albero a oggetti
In HTML il codice è inserito tra `<script> </script>`, inserito dentro `<head> o <body>`. Può essere inserito in un file esterno e linkato con `<script src="file.js"></script> 

#### Tipi di dato
- Numeri 
- Stringhe
- Bool
- Null
- Undefined 
Le variabili sono dichiarate con `const`, `var`, `let`. 

#### Functions
```js
function showMessage(){
	let message = "Hello world!";
	alert (message);
}

showMessage();

```

#### Window BOM

> Browser Object Model è il modello gerarchico che rappresenta l'oggetto browser. Consente a JavaScript di comunicare con il browser

**window** è l'oggetto globale che rappresenta una finestra aperta. Tutti gli altri oggetti sono proprietà dell'oggetto window.
Alcuni metodi: 
- [window.]alert("text"); visualizza una finestra di messaggio 
- [window.]close(); chiude la finestra del browser
- [window.]open("url", "name", "options"); apre una nuova finestra 

### Eventi 
> Notifica di un avvenimento specifico verificato all'interno del browser in seguito all'azione di un utente. 

- onMouseOver
- onMouseOut
- onClick
- onDblClick
- onChange
- onFocus
- onLoad
- onScroll
- onResize

### Classi
> template per un oggetto. Quando si definisce una classe, si usa la classe per creare oggetti.

```js
class className{
	constructor(){}
	method1(){}
}
```
Esempio:
```js
class Car {
	constructor (name, year){
		this.name = name;
		this.year = year;
	}
	age(){
		let date = new Date();
		return date.getFullYear() - this.year;
	}
}

let myCar = new Car("Tesla", 2022);
document.getElementById("demo").innerHTML = "My car is " + myCar.age() + "years old."
```

## Web API 

- Intergaccai per la programmazione di applicazioni per il web
- Estende le funzionalità di un browser web 
- un'API server può estendere le funzionalità di un server web
Alcune API: 
- Canvas
	- disegno grafico
- Geolocation
	- geolocation dispositivi
- Media Capture and Streams
	- gestione degli stream
- Web Audio
	- programmazione avnzata dell'audio web
- WebGL
	- grafica 2d e 3d
- WebRTC
	- streaming audio/video 
- XMLHttpRequest
	- per interagire con i server 

## Framework 
> Architettura logica sullla quale un software può essere realizzato 

= Applicazione o insieme di moduli per consentire lo **sviluppo** delle applicazioni mediante le *libraries*. Facilita lo sviluppo del programmatore 
Un Framework web è uno strumento software che permette di realizzare applicazioni web.
Esempi: 
- Autenticazione utenti 
- Gestione dei form e validazione dei dati 
- Struttura directory e file

- **jQuery**
	- semplifica selezione, manipolazione, gestione di eventi e animazioni di elementi DOM nelle pagine HTML
- **React**
	- Creazione di interfacce utente
- **Angular**
	- sviluppo di applicazioni WEB
- **ASP.NET**
	- sviluppo applicazioni web e servizi web
- **Express**
	- web application e API
- **Spring**
	- sviluppo applicazioni su Java


## React 
![[A14B49B7-5C8B-4A18-BECA-BE5B325908E7.png|100]] Framework JavaScript open-source per creare interfacce utente web. Sviluppato da Meta. 
### https://reactjs.org
Invece di manipolare direttamente il DOM del browser, React crea un DOM virtuale in memoria dove apportare le modifiche prima di apportarle al DOM del browser. 
Esistono due tipi di componenti: 
- **Function**
- **Class**
Entrmabi restituiscono codice HTML attraverso la keyword *return*
Per inserire React nei file HTML si aggiunge il link agli script del framework (fase di testing) 
```html
<script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin> </script>
```
In ambienti di produzione si installa **React environment** nel server: 
```js
import React from "react";
import ReactDOM from "react-dom";
function Hello(props){
	return <h1> Hello World! </h1>;
}
reactDOM.render(<Hello />, document.getElementById("root"));
```

L'obiettivo di **React** è renderizzare HTML in una pagina web con la funzione `ReactDom.render()`. Lo scopo della funzione è visualizzare il codice HTML specificato all'interno dell'elemento. 
### https://reactjs.org/tutorial/tutorial.html
### https://www.w3schools.com/react


