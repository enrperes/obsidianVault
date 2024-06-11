---
aliases:
  - Amazon
  - cloud
  - server
  - web
---
PDF 04, 05 

# [[Laboratorio-AWS]]

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
	- Il bucket ha un nome universale e univoco (una parte di URI[^1])
	- http://sitepoint-aws-cloud-book.s3.amazonaws.com/maggie.jpg



[^1]: Uniform Resource Identifier

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

# Database: SQL o NoSQL
3 generi di database nel cloud
- Aurora
	- DB relazionale ad altre prestazioni
- RDS
	- MySQL o Oracle
- DynamoDB
	- NoSQL (storage strutturato ma non relazionale)



## DynamoDB 
> Dato = insieme di simboli. Quando un dato viene interpretato come risultato di una query, diventa informazione

I DataBase: 
- Contengono una grande quantità di dati
- Sono condivisi 
- Sono persistenti 
I DBMS: 
- Sono affidabili 
- Forniscono un meccanismo di autenticazione 
- Sono efficienti 
- Incrementano la produttività degli utenti

Un modello di dati fornisce un insieme di costrutti per l'organizzazione dei dati: 
- Gerarchico 
- a grafo
- [[modello relazionale]]
- a oggetti
- [[NoSQL (Not Only SQL)]]
I modelli dei dati sono chiamati modelli logici: i loro costrutti riflettono una particolare struttura 

### AWS e i database 
RDS: Relational Data Services 
DynamoDB: NoSQL

#### Relazionale: RDS
- insieme di soluzioni costituite da: 
	- Istanza stile EC2 (evitabile in modalità serverless)
	- Motore di DBMS
		- Amazon Aurora, MySQL, PostGresSQL, MariaDB, Oracle, SQLServer...
#### NoSQL:DynamoDB
- Serverless, con scalabilità automatica 
- Alto throughput possibile
- Dimensioni virtualmente illimitate 

[Esercizio Rubrica]

# Lambda

## Serverless computing 
> Paradigma di esecuzione su cloud che porta la computazione da Iaas a Paas (da infrastructure as a service a Product as a service)


- Il provider gestisce completamente il server, inclusa allocazione dinamica di risorse secondo necessità 
- Il client si limita a definire il codice da mandare in esecuzione

Il meccanismo di funzione è basato su eventi, esempio: 
- Avvenuto caricamento di immagini o dati su un sistema -> trigger per far partire una funzione di elaborazione
- Click su sito web -> trigger 
- Reazione a qualche sensore IoT...
### FaaS

Function as a Service. 

Implementazione del meccanismo serverless basato su esecuzione di funzioni in ambienti realtime predefiniti. 
- Google App Engine 
- AWS Lambda

## AWS Lambda
- Event Driven 
- Piccole applicazioni attivabili on demand in risposta ad eventi 
- Risposta parallelizzabile
- Performance scalata automaticamente

[Esercizio Lambda miniatura immagini]

