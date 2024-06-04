Pdf 06

# EC2
![[Pasted image 20240319155237.png]]
OS Image -> Ubuntu
![[Pasted image 20240319160153.png]]
Create Key pair 
![[Pasted image 20240319160337.png]]
Per collegarsi via SSH si usa l'IP pubblico, che cambia ogni volta che si accende la macchina 

![[Pasted image 20240319160511.png]]
![[Pasted image 20240319161210.png]]

`ssh -i "twc24key.pem" ubuntu@ec2-16-16-166-65.eu-north-1.compute.amazonaws.com`

`sudo apt-get install php libapache2-mod-php`

- Servizio che permette di ottenere infrastruttura di calcolo sotto forma di server virtuale 
- è possibile avviare quanti server virtuali si ha bisogno (istanze)
- Ogni istanza è di fatto un server virtuale. 
- 

# S3
> Simple Storage Service 

Simile a un file system virtuale accessibile via Web. 
Gli oggetti sono organizzati in ==bucket==. 
 - Max 100 buckets per account
 - il bucket ha nome universale e univoco (è una parte di url)

Esistono vari tier di S3, tra cui: 
 - Standard
 - Intelligent Tiering
 - Standard IA
 - One Zone-IA
 - Glacier 
 - Glacier Deep Archive 

**Glacier** è ottimizzato per dati a cui si accede raramente (costa poco lo storage ma più il recupero) --> Backups

Esiste un SDK per PHP. 

### SDK, installazione
Utilizzando **composer:**
- Creare una directory 
- eseguire: `composer require .phar /urs/local/bin/composer`

... esercizi ...
# DynamoDB
AWS > DynamoDB > Tabelle > Crea Tabella 

| Nome                                | twc24   |         |
| ----------------------------------- | ------- | ------- |
| Chiave di partizione                | nome    | Stringa |
| Chiave di ordinamento - facoltativo | Cognome | Stringa |
| Impostazioni tabella:               | Default |         |


# Elasic Container Service


# Lambda


---

###  Esercizio 8
Trasferire file da locale a remoto con connessione SSH e SCP: 

```bash
scp -r -i /home/enrperes/twc24key.pem CubeRenders ec2-16-16-128-147.eu-north-1.compute.amazonaws.com:/var/www/html/media
```