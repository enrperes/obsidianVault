##  Cloud Computing

[[03-Cloud-1.pdf|PDF 03]]

Serie di processi e tecnologie che rendono possibile l'astrazione e virtualizzazione di risorse informatiche 
- memoria 
- potenza di calcolo 
- capacità di rete
- applicazioni 

Non c'è una definizione precisa. Ne fanno parte altri concetti come: 
- Cluster computing 
- [[Tecnologie Web Cloud#Grid Computing|Grid Computing]]
- Utility computing 
- Application Service Provider
- P2P
- CDN (Content Delivery Network)

> [!example] **Servitizzazione**
> Strumenti ICT come **utility** = servizio utilizzabile in base alle proprie esigenze (=noleggio) -> Deve esserci una disponibilità di risorse virtualmente illimitata
> > *The shift from products to services*

Cloud = insieme hardware e software retrostante ai servizi
- Pubblico previa pagamento = pay as you go, utility computing 
- Privato = cloud interno ad un'organizzazione, utile ai suoi scopi 

> [!attention]-  **Esempio** 
 > Scelta delle risorse hardware: 
 > - Dimensionare tutto per il carico medio? 
> 	- Spesa limitata ma sistema non capace di soddisfare picchi di utilizzo
> - Dimensionare per i picchi di carico? 
> 	- Strumenti molto costosi spesso inutilizzati 
> 
> Soluzione: Cloud
> Invece di possedere le risorse ICT si usano servizi cloud che le virtualizzano, acquistando quello che serve. 

> Spostamento della computazione e memorizzazione dal computer a internet 

### Casi d'uso 
- Necessità di risorse variabili nel tempo o non note a priori
- Necessità di computazioni elevate (Machine learning, addestramento di modelli)
---
###  Grid Computing 

> Type of parallel and distributed system that enables sharing, selection, aggregation of geographically distributed "autonomous" resources dynamically at runtime depending on their availability, capability, performance, cost...

### Grid vs Cluster
Un cluster è costituito da più nodi indipendenti che lavorano insieme come singola risorsa unificata: Organizzazione unica e gestione centralizzata delle risorse 

Una Grid è un insieme di organizzazioni indipendenti che mettono a disposizione le loro risorse agli altri 
Grid ultimamente in disuso

###  Content Delivery Network
Meccanismo per ottimizzare la distribuzione di contenuti statici sul web (soprattutto media)
- è un sistema distribuito costituito da nodi geograficamente vicini agli utenti.
- Il client fa una richiesta verso un server e questa viene instradata verso il nodo ottimale (=mirroring trasparente di contenuti)

![[Pasted image 20240308090724.png|500]]

[[03-Cloud-1.pdf|PDF 03]]

Serie di processi e tecnologie che rendono possibile l'astrazione e virtualizzazione di risorse informatiche 
- memoria 
- potenza di calcolo 
- capacità di rete
- applicazioni 

Non c'è una definizione precisa. Ne fanno parte altri concetti come: 
- Cluster computing 
- [[Tecnologie Web Cloud#Grid Computing|Grid Computing]]
- Utility computing 
- Application Service Provider
- P2P
- CDN (Content Delivery Network)

> [!example] **Servitizzazione**
> Strumenti ICT come **utility** = servizio utilizzabile in base alle proprie esigenze (=noleggio) -> Deve esserci una disponibilità di risorse virtualmente illimitata
> > *The shift from products to services*

Cloud = insieme hardware e software retrostante ai servizi
- Pubblico previa pagamento = pay as you go, utility computing 
- Privato = cloud interno ad un'organizzazione, utile ai suoi scopi 

> [!attention]-  **Esempio** 
 > Scelta delle risorse hardware: 
 > - Dimensionare tutto per il carico medio? 
> 	- Spesa limitata ma sistema non capace di soddisfare picchi di utilizzo
> - Dimensionare per i picchi di carico? 
> 	- Strumenti molto costosi spesso inutilizzati 
> 
> Soluzione: Cloud
> Invece di possedere le risorse ICT si usano servizi cloud che le virtualizzano, acquistando quello che serve. 

> Spostamento della computazione e memorizzazione dal computer a internet 

### Casi d'uso 
- Necessità di risorse variabili nel tempo o non note a priori
- Necessità di computazioni elevate (Machine learning, addestramento di modelli)
---
###  Grid Computing 

> Type of parallel and distributed system that enables sharing, selection, aggregation of geographically distributed "autonomous" resources dynamically at runtime depending on their availability, capability, performance, cost...

### Grid vs Cluster
Un cluster è costituito da più nodi indipendenti che lavorano insieme come singola risorsa unificata: Organizzazione unica e gestione centralizzata delle risorse 

Una Grid è un insieme di organizzazioni indipendenti che mettono a disposizione le loro risorse agli altri 
Grid ultimamente in disuso

###  Content Delivery Network
Meccanismo per ottimizzare la distribuzione di contenuti statici sul web (soprattutto media)
- è un sistema distribuito costituito da nodi geograficamente vicini agli utenti.
- Il client fa una richiesta verso un server e questa viene instradata verso il nodo ottimale (=mirroring trasparente di contenuti)

![[Pasted image 20240308090724.png|500]]


## Cosa virtualizzare
- SaaS: Software as a Service
	- Piattaforma cloud che consente l'utilizzo di programmi forniti e mantenuti in remoto
- PaaS: Platform as a Service
	- Invece che programmi singoli, viene eseguita in remoto una piattaforma software, costituita da diversi servizi, programmi, librerie...
		- Sistema specifico su cui installare applicazioni di propria necessità
		- Servizio di storage complesso che offre sicurezza, backup...
- IaaS: Infrastructure as a Service
	- Utilizzo di risorse remote, relativamente di basso livello
	- Esempi:
		- Server su cui installare il sistema operativo 
		- Spazio di memorizzazione da gestire per conto proprio 

### PaaS vs IaaS
Apparentemente simili ma cambia il livello di controllo che l'utilizzatore ha: 
- PaaS: uso di risorse attraverso librerie e modalità stabilite dal cloud provider. 
- IaaS: uso di risorse fisiche più libero
(distinzione labile)

###  Diversi livelli di astrazione

## Architettura
- Cloud Provider
	- Fornitore di servizi SaaS, PaaS, IaaS
- Amministratore / Configuratore
	- Predispone all'utilizzo di servizi cloud
	- Può fungere da provider astratto 
- Utente finale
###  Pro e Contro
Connessione continua a internet richiesta 

SaaS può piacere a sviluppatori software: si vende il servizio e non l'oggetto software che è riproducibile 
Aggiornamento facile e centralizzato
PaaS/IaaS può essere meglio per l'utente finale:


Il cloud provider deve essere necessariamente una grande azienda: L'infrastruttura fisica rende solo se grande e usata in tutto il mondo 


# Garante per la Privacy 

20% of all files in the cloud contain sensitive data: not always protected

## Possibili problematiche 
- L'utente perde il controllo diretto dei dati. La riservatezza dipende dai meccanismi di sicurezza adottati dai service provider
- Il servizio potrebbe essere il risultato di una catena di altri service provider e l'utente non sempre sa chi può accedere a quali dati 
- Il servizio virtuale può risultare degradato o indisponibile in certi momenti
- Adozione di tecnologie proprietarie rende complessa per l'utente la transizione di dati e documenti da un sistema cloud a un altro (appalti Pubblica Amministrazione)
#  Strategia Cloud Italia
Dal 2017-2019 ci sono aggiornamenti annuali. Ambisce a promuovere la trasformazione digitale del paese, in particolare per le PA. 
- Favorisce sviluppo di una società digitale. 
- Promuove lo sviluppo sostenibile, etico, inclusivo 
- Contribuisce alla diffusione di nove tecnologie digitali
Principi: 
- Digital & Mobile first (servizi accessibili tramite SPID) 
- Cloud first: le PA adottano 