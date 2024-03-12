---
aliases:
  - Amazon
  - cloud
  - server
  - web
---
PDF 04, 05 

---

- L'insieme dei servizi è costituito da una serie di blocchi relativamente indipendenti e combinabili tra loro: Loose coupling
- Ad ogni funzionalità si accede tramite chiamata ad un web service
	- SOAP o REST, eventualmente incapsulati in librerie
- Tramite librerie e chiamate dirette si possono costruire applicazioni che sfruttano il cloud
	- Esistono strumenti CLI e GUI per interagire con il cloud 
- I servizi forniti sono di vario tipo
	- Iaas, PaaS

## Costi 
- Solitamente *Pay-as-you-go*
	- Tempo: ore di cpu, crediti
	- Volume: GB trasferiti
	- Conteggio: numero di messaggi accodati
	- Spazio e tempo: GB/mese di memoria
	- Chiamate
	- ...
## Architettura del cloud 
Suddivisa in **regioni** e **availability zones**, a cui corrispondono concetti fisici
### Regioni
- Aree geografiche identificate da un nome che ne descrive la posizione (`us-east, us-west, eu-west...`)
- Le regioni sono connesse via internet
- Lo sviluppatore decide in quali regioni ospitare l'applicazione o i dati 
- Ogni regione ha diverse availability zones
### Availability zones
- Corrispondono ad un data center specifico 
	- Con autonomia elettrica e di rete
	- indipendente dalle altre availability zones della stessa regione (per motivi di sicurezza, in caso di catastrofi naturali)
- Le availability zones di una regione sono connesse con linee dedicate a basso delay 
- Lo sviluppatore decide se replicare l'applicazione in più availability zones, per aumentare l'affidabilità

## Servizi 
Computazione
- EC2, Elastic MapReduce, Elastic Container Service, LightSail
Memorizzazione file
- EBS, S3, Glacier, EFS
Database
- Aurora, RDS, DynamoDB
Reti
- VPC
Distribuzione (content delivery)
- CloudFront
Servizi applicativi

## Amazon S3
- Simple Storage Service 
	- Quasi un file system virtuale accessibile via web
	- Due varianti di disponibilità (standard, infrequent access)
- Memorizzazione di dati binari 
	- 5TB per oggetto 
	- Fault tolerant, ridondante 
	- Ogni oggetto ha una sua ACL e un nome univoco nel bucket 
		- Si richiama tramite richiesta HTTP 
- Gli oggetti sono organizzati in *bucket*
	- max 100 bucket per account 
	- Il bucket ha un nome universale e univoco (una parte di url)
	- http://sitepoint-aws-cloud-book.s3.amazonaws.com/maggie.jpg

## S3 Glacier 
- Archiviazione sicura di grandi quantità di dati 
- Basso costo: 
	- Ottimizzato per dati a cui si accede raramente: lo storage costa meno, di più la lettura dati 
- Tempi di recupero molto lenti 
- Utile per i backup
![[Pasted image 20240312160613.png|400]]

## CloudFront
- Content Delivery Network 
- Per migliorare le prestazioni si replicano gli oggetti in una serie di server di contenuto distribuiti più vicini agli utenti 

## EC2
> Elastic Compute Cloud

Servizio che permette di ottenere infrastruttura di calcolo sotto forma di server e loro istanze 
- Il software è quello presente in un [AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html)
- L'istanza corrisponde virtualmente ad un server con caratteristiche fisiche standardizzate
	- CPU, RAM, Disco (non persistente) e altre caratteristiche scelte in base alle necessità, con modalità di pagamento a scelta
### AMI (Amazon Machine Image)
> Sistema Operativo + Software 

Istanza = copia di un AMI in esecuzione 
Volume **EBS** (Elastic Book Store) = volume virtuale formattabile e indirizzabile come un disco. Si usa quando c'è necessità di memoria persistente in un AMI.  
#### EC2: Istanze
- On-Demand: Pay as you go 
- Reserved: fisso + costo orario abbattuto 
- Spot: sfruttano risorse inutilizzate di amazon, costo basso se si fa girare l'applicazione quando non c'è molto carico 
Ogni istanza ha un indirizzo IP e voce DNS
![[Pasted image 20240312162430.png#invert|500]]
##### NOMI DELLE ISTANZE
![[Pasted image 20240312162512.png#invert|500]]

## Database: SQL o NoSQL
3 generi di database nel cloud
- Aurora
	- DB relazionale ad altre prestazioni
- RDS
	- MySQL o Oracle
- DynamoDB
	- NoSQL (storage strutturato ma non relazionale)

[...]

