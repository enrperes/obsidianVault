## Azure
Offerta cloud di Micrososft
Iniziamente PaaS, ora anche IaaS. Non solo windows ma anche Linux

Servizi e pricing simile a AWS

## Google Cloud
Compute Engine, Cloud Storage, SDK, SQL... e altro 
Vengono messi a disposizione $300 di credito per esplorare i servizi

## Heroku
Servizio PaaS basato su Amazon EC2. Sviluppo, pubblicazione e esecuzione di applicazioni scritte in diversi linguaggi e framework. 
### Heroku Toolset
comprende: 
- Command line di Heroku
- Foreman per simulare Heroku in locale 
- Git come sistema di versionamento 
#### Cedar 
è lo stack di runtime di Heroku e supporta la maggior parte dei linguaggi moderni. Introduce un nuovo process-model estendendo quello dei sistemi ..nix ad applicazioni web. 
Ormai non è più usato. 

Lo stack si riferisce all'immagine di sistema operativo su cui far girare le applicazioni. 

Solitamente nello sviluppo di un'applicazione sono necessari diversi ambienti. 


### **Slug:**

- Un **slug** è un'**immagine compatta e pre-confezionata** dell' applicazione. include il codice sorgente, le dipendenze e i file necessari
- creato utilizzando lo **slug compiler** di Heroku, che ottimizza l'immagine per la distribuzione e il runtime.
- dimensione massima slug è di **500 MB** (dopo compressione).
- Gli slug vengono memorizzati nel **container di archiviazione di Heroku** e vengono utilizzati per distribuire applicazioni sui dyno. 

### **Dyno:**

- Un **dyno** è un'istanza isolata dello slug, eseguita su una piattaforma cloud di Heroku.
- Ogni dyno esegue un processo individuale dell'applicazione. 
- Heroku gestisce automaticamente creazione, avvio e terminazione dei dyno in base al traffico.
- Si può aumentare o diminuire il numero di dyno in esecuzione per scalare l'applicazione in base alle esigenze. 
### Integrazione con S3
Imponendo un limite agli slugs, Heroku non è pensato per servire grandi contenuti statici. 
Essendo tutta la piattaforma ospitata su Amazon EC2, la scelta logica è appoggiarsi a S3. 

> [!done]  **PRO** 
 > - Alte prestazioni
 > - Non serve sistemista
 > - Multi linguaggio e multi framework
 > - Tanti addon disponibili
 > - Costi ridotti
 
 > [!bug]  **Contro** 
 > - Non è possibile fare tuning personalizzati 
 > - Applicazioni devono essere scritte "con testa"
 
 