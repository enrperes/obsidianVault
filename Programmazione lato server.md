---
aliases:
  - php
  - scripting
---
# Programmazione lato server

Tecniche che consentono di creare dinamicamente risorse da distribuire tramite un server WEB

## CGI = Common Gateway Interface
- Storicamente il primo modo per generare dinamicamente risorse WEB
- Programma che viene lanciato dal server in seguito ad una richiesta client
- Identificato da un URL come tutte le risorse
- Non viene restituito nella risposta, viene solo eseguito 

---

L'URL richiesto dal browser identifica una risorsa:
- Codice HTML
- Pezzi di script in linguaggio interpretato 

Il Server HTTP richiama un modulo esterno che emette come output il codice HTML (?)

L'esecuzione di script è normalmente affidata ad un programma esterno (=interprete dello specifico linguaggio )
L'esecuzione viene effettuata ad ogni richiesta 

---

#  PHP
- Linguaggio interpretato 
- Sintassi derivata da C
- Utilizzabile sia in modo procedurale che OOP.
- Nel file HTML indicato con tag script `<?php ...?>`
##  Sintassi di base
### Variabili
Prefisso $\Large \$$
Le variabili possono essere locali o globali. 

#### Variabili predefinite
`$_SERVER`includono quelle fornite dal server Apache: `QUERY_STRING, PATH_INFO...`



## Esercizio 1

```php
<html>
	<head>
	<title>Esercizio 1 </title>
	</head>
	<body> 
		<h1> Esempio con PHP </h1>
		<p>
		<?php
			$a = "prova";
			$b = 18;
			$c = $b+77;
			echo "<p> questa è una $a </p>"
			echo "<p> Valore di c: $c </p>"
		?>
	</body>
</html>
```

