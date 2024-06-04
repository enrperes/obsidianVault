in EC2 `/var/www/html/aws` richiamare: `composer require aws/aws-sdk-php`

Dalla console AWS: Account -> Security Credentials e creare nuova chiave di accesso (not best practice ok)
Inserire credenziali di sicurezza in buckets.php

Ricordarsi di spegnere quando non in uso e poi eliminare le credenziali 



## Esercizio 1

```php
<?php
	//preliminari
	require 'vendor/autoload.php';
	use Aws\S3\S3Client;
	use Aws\Exception\AwsException;
	
	// credenziali
	$credentials = new Aws\Credentials\Credentials('chiave','segreto');
	
	//Crea un client per S3
	$s3 = new Aws\S3\S3Client([
		'version' => 'latest',
		'region' => 'eu-south-1', //NB impostare la giusta regione
	'credentials' => $credentials ]);
		
	$result = $s3->listBuckets();
	foreach ($result['Buckets'] as $bucket){
		print( "<p>".$bucket['Name'] . ":" . $bucket['CreationDate']."</p>");
		
	print_r($bucket);
}
?>
```

