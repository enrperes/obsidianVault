
> [!attention]  **Eercizio A** 
 > Si implementi in PHP uno script storage.php con le seguenti caratteristiche: 
 > 1. lo script riceve in input in modalità POST un file caricato tramite un form HTML (non è necessario descrivere il form), assieme ad un codice utente nel campo CODICE; 
 > 2. se il file non è presente oppure risulta vuoto, o il codice non è presente, l’esecuzione termina e mostra una segnalazione di errore; 
 > 3. altrimenti lo script stabilisce una connessione con S3 su AWS. Per semplicità, il config.php è da considerarsi già impostato, e con le sue chiavi sarà possibile accedere in lettura e scrittura ad un bucket denominato VAULT. 
 > 4. Lo script caricherà nel bucket il file ricevuto, dandogli come nome la concatenazione del codice utente e del nome file corrente, separati da un carattere “-”. 
 > 5. Al termine del caricamento si deve far comparire un messaggio che ricorda all’utente il nome del file originale e quello assegnato al file per l’inserimento su S3, quest’ultimo linkato all’URL del file
 
```php
<?php
require 'vendor/autoload.php';
require 'config.php';

use Aws\S3\S3Client;
use Aws\Exception\AwsException;

// Configurazione AWS S3
$s3 = new S3Client([
    'version' => 'latest',
    'region'  => 'your-region',
    'credentials' => [
        'key'    => AWS_KEY,
        'secret' => AWS_SECRET,
    ]
]);

$bucket = 'VAULT';

// Verifica presenza file e codice utente
if (!isset($_FILES['file']) || $_FILES['file']['error'] !== UPLOAD_ERR_OK || !isset($_POST['CODICE'])) {
    die('Errore: file mancante, vuoto o codice utente non presente.');
}

$file = $_FILES['file'];
$userCode = $_POST['CODICE'];

// Assegna nome al file
$filename = $userCode . '-' . basename($file['name']);

// Percorso temporaneo del file
$tmpFilePath = $file['tmp_name'];

try {
    // Caricamento file su S3
    $result = $s3->putObject([
        'Bucket' => $bucket,
        'Key'    => $filename,
        'SourceFile' => $tmpFilePath,
        'ACL'    => 'public-read', // Imposta i permessi del file
    ]);

    // URL del file su S3
    $fileUrl = $result['ObjectURL'];

    echo "File originale: " . htmlspecialchars($file['name']) . "<br>";
    echo "File caricato su S3 come: <a href=\"" . htmlspecialchars($fileUrl) . "\">" . htmlspecialchars($filename) . "</a>";

} catch (AwsException $e) {
    // Visualizza errore in caso di problemi con l'upload
    echo 'Errore durante il caricamento su S3: ' . $e->getMessage();
}
?>

```


> [!attention]  **Esercizio B** 
 > Scrivere il codice PHP necessario per: 
 > 1. Scrivere il codice PHP necessario per controllare se nella sessione esiste una variabile `SUPERUSER` con valore maggiore di 3. Se esiste ma il valore è inferiore a 3, redirige il browser verso una pagina `utentenormale.php`; se non esiste, emettere un segnale di errore.
 > 2. Come si codifica in JSON il seguente vettore PHP? Quale aspetto avrà dopo la codifica? `$contatto=array(‘cognome’=>’Potter’, ‘nome=>’Harry’, ‘eta’=>12, ‘domicilio=>’Hogwarts’)`

```php

// Controllo variabile SUPERUSER

<?php
session_start(); // Avvia la sessione

if (!isset($_SESSION['SUPERUSER'])) {
    die('Errore: la variabile di sessione SUPERUSER non esiste.');
}

if ($_SESSION['SUPERUSER'] < 3) {
    header('Location: utentenormale.php');
    exit(); // Assicura che il codice smetta di essere eseguito dopo il reindirizzamento
}

// Il codice continua se SUPERUSER esiste ed è >= 3
?>
```

```php 
// Codifica JSON del vettore PHP

<?php
$contatto = array(
    'cognome' => 'Potter',
    'nome' => 'Harry',
    'eta' => 12,
    'domicilio' => 'Hogwarts'
);

$json = json_encode($contatto);

echo $json; // Stampa il risultato JSON
?>

/* Risultato JSON: */

{
    "cognome": "Potter",
    "nome": "Harry",
    "eta": 12,
    "domicilio": "Hogwarts"
}

```

> [!attention] **Esercizio C**
> Rispondere brevemente motivando la risposta.
> 1. Quali sono i principali componenti di una architettura orientata ai servizi.
> 2. Una Avaiability Zone può essere composta da più regioni.
> 3. Un framework come Laravel mi permette di realizzare un’applicazione completamente lato
> client. 


1. Saas (Service Oriented Architecture) 
2. Un' Availability zone è una location isolata all'interno di una regione. Quindi non può essere composta da più regioni. 
3. No, Laravel è un framework lato server che può essere usato insieme a framework frontend come vue.js che compongono applicazioni full-stack che includono componenti lato client. 
