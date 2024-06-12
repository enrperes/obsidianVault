> [!attention]  **Esercizio 1** 
 > 1. Si implementi in PHP uno script dipendenti.php con le seguenti caratteristiche:
a) lo script riceve in input in modalità GET il parametro cf che identifica un dipendente;
b) se il parametro cf non è presente oppure risulta vuoto, l’esecuzione termina e mostra una
segnalazione di errore;
c) altrimenti lo script stabilisce una connessione con S3 su AWS (per semplicità, il config.php è da
considerarsi già impostato),
d) Per ogni dipendente esiste un bucket il cui nome è dato dalla concatenazione di “stipendi-“ e il
parametro cf. Per semplicità, il bucket risulta accessibile in lettura con le chiavi già presenti nel
config.php.
e) lo script legge il contenuto del bucket, e mostra (in HTML) la lista dei file in esso contenuti, ma del solo
tipo PDF (quindi con estensione .pdf).
f) Ognuno dei file nella lista è “cliccabile”, ed il link permette di scaricare il file stesso.
g) Al termine dell’importazione si deve far comparire un messaggio che dice quanti stipendi sono
presenti in tutto nel repository del dipendente.

```php
 <?php
// Include the AWS SDK for PHP
require 'vendor/autoload.php';

use Aws\S3\S3Client;
use Aws\Exception\AwsException;

// Include the configuration file
require 'config.php';

// Get the 'cf' parameter from the GET request
$cf = isset($_GET['cf']) ? $_GET['cf'] : null;

// Check if the 'cf' parameter is present and not empty
if (empty($cf)) {
    die('Errore: il parametro "cf" è obbligatorio.');
}

// Create the S3 client
$s3Client = new S3Client([
    'region'  => $awsConfig['region'],
    'version' => 'latest',
    'credentials' => [
        'key'    => $awsConfig['key'],
        'secret' => $awsConfig['secret'],
    ],
]);

// Define the bucket name
$bucketName = 'stipendi-' . $cf;

try {
    // List the objects in the bucket
    $objects = $s3Client->listObjectsV2([
        'Bucket' => $bucketName,
    ]);
} catch (AwsException $e) {
    die('Errore: ' . $e->getMessage());
}

// Initialize an array to hold the list of PDF files
$pdfFiles = [];

if (isset($objects['Contents'])) {
    foreach ($objects['Contents'] as $object) {
        if (preg_match('/\.pdf$/i', $object['Key'])) {
            $pdfFiles[] = $object['Key'];
        }
    }
}

// Display the list of PDF files and the total count
?>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Lista dei PDF</title>
</head>
<body>
    <h1>Lista dei PDF per il dipendente con CF: <?php echo htmlspecialchars($cf); ?></h1>
    <ul>
        <?php foreach ($pdfFiles as $file): ?>
            <li><a href="<?php echo $s3Client->getObjectUrl($bucketName, $file); ?>" download><?php echo htmlspecialchars($file); ?></a></li>
        <?php endforeach; ?>
    </ul>
    <p>Totale PDF trovati: <?php echo count($pdfFiles); ?></p>
</body>
</html>
 
```