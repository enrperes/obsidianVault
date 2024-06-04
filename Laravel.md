PHP Framework for Web Artisans 

### Framework 
#### PRO
- velocità di produzione e sviluppo 
- Sicurezza
- Correzione dei bug con supporto della community 
- semplicità riutilizzo del codice
#### CONTRO
- Dipendenza da librerie non sotto il proprio controllo
- Non sempre ottimale
- Meno libertà di personalizzazione
- progetti più pesanti 

## Laravel
> Framework PHP derivato da Symfony 
> Architettura basata su MVC (Model-View-Controller)
> Si interfaccia con database relazionali tramite ORM(Object Relational Mapper)

### Vantaggi Laravel 
- Le applicazioni web risultano più scalabilità 
- Si risparmia tempo nella progettazione 
- I componenti di altri framework vengono riutilizzati 

#### Gestione 
Per la creazione di un progetto Laravel e per gestire le dipendenze si usa Composer. 
Tutte le dipendenze sono nel file `composer.json`, nella cartella sorgente. 
In Laravel, la CLI utilizzata si chiama Artisan. 

### Caratteristiche 
- Supporto Fullstack per applicazioni robuste. Integrazione con diversi framework JS (React, Vue)
- Possibile anche usarlo come backend API, integrabile con diverse applicazioni 
- Supporto autorizzazione per utente 
- Permette di definire e condividere la definizione dello schema del database dell'applicazione
- Laravel include un costruttore di query, aiuta a interrogare i database. 
- Permette di inviare notifiche tramite email, slack, telegram..
- Offre un robusto strato di astrazione del file system per gestire i file. 

## Demo nuovo progetto Laravel

Prerequisiti:
- Versione PHP 8.2 - 8.3
- Composer
- Estensioni PHP da abilitare in php.ini (..)

1. installare Laravel via Composer, poi creare un progetto: 
	1. `composer global require laravel/installer`
	2. `laravel new example-app`
2. Creare nuovo progetto via Composer: 
	1. `composer create-project laravel/laravel example-app "11.0.*"`
	2. Se invece si parte da un progetto clonato, installare le dipendenze: `composer install`

- ==Breeze== è un'implementazione minimale e semplice di tutte le funzionalità di autenticazione di Laravel 
- ==JetStream== integra quella funzionalità con caratteristiche più robuste e stack tecnologici frontend aggiuntivi 

### Panoramica funzionamento Laravel

1. public/index.php è il punto di ingresso di tutte le richieste
2. bootstrap/app.php è l'istanza dell'applicazione
3. bootstrap/providers.php: eseguire il bootstrap di tutti i vari componenti del framework 
4. Una volta avviata l'applicazione e registrati tutti i servizi, la richiesta verrà trasmessa al router per l'invio. 

### Deployment
