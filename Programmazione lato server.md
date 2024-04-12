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

```php
<?php 
echo phpinfo() // non lasciare online la pagina output
?>
```

## Esercizio 5
```php
<html>
	<head><title>Esercizio 5</title></head>
	<body>
	<h2>Test</h2>
<?php
	if($_GET['psw']=="abcd")
		echo "<p>Access Granted</p>";
	else echo "<p>Access Denied</p>";
	echo "<h2>Ciclo \"FOR\"</h2>\n<ul>";
	for($i=1;$i<=7; $i=$i+1)
		echo "\t<li>$i</li>\n";//cambiare in apici singoli per non interpretare 
?>
</ul></body></html>
```

## Esercizio 6

```php
<body>
<h1>Calcolatrice</h1>

<?php
if (isset($_GET['op1']) && isset($_GET['op2'])) {
    $op1 = $_GET['op1'];
    $op2 = $_GET['op2'];

    switch (strtolower($_GET['operazione'])) {
        case '+': 
            $res = $op1 + $op2; 
            break;
        case '-': 
            $res = $op1 - $op2; 
            break;
        case '*': 
            $res = $op1 * $op2; 
            break;
        case '/': 
            if ($op2 == 0) {
                $res = "Cannot divide by zero";
            } else {
                $res = $op1 / $op2;
            }
            break;
        default:
            $res = "Invalid operation";
    };

    echo "<h2>Risultato</h2>\n<p>$op1 " . $_GET['operazione'] . " $op2 = $res</p>";
    $script = $_SERVER['PHP_SELF'];
    echo "<p><a href=\"$script\">Calcolatrice</a></p>";
    echo "<p>" . $_SERVER['REMOTE_ADDR'] . "</p>";
    exit; 
} else { 
?>

<form method="get" action="<?php echo $_SERVER['PHP_SELF'] ?>">
    <p>
    <input type="text" name="op1" />
    <select name="operazione">
        <option value="+" selected="selected">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>
    <input type="text" name="op2" />
    <input type="submit" value="=" />
    </p>
</form>

<?php 
} 
?>
</body>

```

#  Funzioni

[...]

### Configurazione di PHP 
I parametri di funzionamento PHP sono impostati in un file `php.ini` che contiene direttive (mem. massima utilizzabile dallo script, dimensione massima di corpo HTTP, file di log...)
PHP consente di sovrascrivere alcune direttive nel `php.ini` nello script con `ini_set()`. Le modifiche saranno valide solo in quello script. 

## Sessioni e autenticazione

Alla creazione di una sessione, il server genera 

- Autenticazione
	- proteggere più pagine che diventano accessibili solo ad un utente che si è registrato solo con username e password
- Pagine a contenuto differenziato
	- Per utenti anonimi, registrati, amministratori...
- Form multipagina:
	- I dati inseriti in un form vengono inseriti in sessione e salvati solo al completamento del form 