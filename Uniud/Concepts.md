>[!info]- ## Automazione dei test
>> Processo per eseguire automaticamente una serie di test su software per verificane il corretto funzionamento. 
>
>1. Identificazione dei test da automatizzare 
>2. Selezione tecnologie e strumenti 
>3. Scrittura dei casi di test automatizzati 
>4. Esecuzione dei test automatici 
>5. Report e analisi dei risultati 
>6. Manutenzione dei test 


>[!info]- ## Sviluppo agile 
>> Approccio allo sviluppo di software basato sulla distribuzione continua di software efficienti creati in modo rapido e iterativo. 
>
> è un approccio alla collaborazione e a determinati flussi di lavoro che consentono di rilasciare rapidamente modifiche al software in piccole porzioni. 
> - Collaborazione e comunicazione 
> - Adattabilità e flessibilità 
> - Coinvolgimento del cliente


>[!info]- ## Devops 
>> Approccio all' ingegneria software che mira a migliorare la collaborazione tra team di sviluppo (**dev**) e team operativi (**Ops**) al fine di accelerare il ciclo di sviluppo. 
>
> Tra i vantaggi, permette a ruoli in precedenza isolati (sviluppo, operazioni IT, security) di coordinarci e collaborare per fornire prodotti migliori. 
> - Accelerazione *time-to-market*
> - Adattamento al mercato e alla concorrenza
> - Conservazione di stabilità e affidabilità del sistema
> - Miglioramento del tempo medio per il ripristino 

>[!info]- ## Continuous integration (CI)
>> Pratica che avviene attraverso un sistema di *version control*. Consiste nell'allineamento *frequente* degli ambienti di lavoro degli sviluppatori verso il **main**. 
>
> - Frequenza delle integrazioni 
> - Build automatici
> 	- Dopo ogni integrazione (merge) un sistema di build automatico crea un versione del software che include tutte le modifiche recenti. La Build automatica permette di verificare che il codice si compili correttamente. 
> - Test automatici 
> 	- Dopo la build, vengono eseguiti autonomamente test unitari e di integrazione. 
> - Versionamento del codice 
> - Rilevamento tempestivo degli errori 
> - Consegna più rapida 
> - Miglioramento della qualità 
> - Collaborazione migliorata

>[!info]- ## Test driven development (TDD)
>> Modello di sviluppo del software che prevede la stesura dei test automatici prima di quella del software che deve essere sottoposto a test. Lo sviluppo del software applicativo sia orientato **esclusivamente** all'obiettivo di passare i test.
>
>1. Fase $\color{red} \Large \texttt{rossa}$
>	1. Il programmatore scrive un test automatico per la nuova funzione da sviluppare. 
>2. Fase $\Large \color{green} \texttt{verde}$ 
>	1. Il programmatore sviluppa il codice necessario per passare il test. 
>3. Fase $\Large \color{gray} \texttt{grigia}$ 
>	1. Il programmatore esegue il refactoring del codice per adeguarlo a determinati standard di qualità 


>[!info]- ## JUnit
>> **Framework** di testing per Java
>
> Progettato per semplificare e automatizzare il processo di scrittura e esecuzione dei test unitari, focalizzati sulla verifica delle singole unità di codice per garantire che funzionino correttamente. 
> L'obiettivo principale è scrivere test efficaci automatici per verificare il comportamento delle singole parti del codice. 

>[!info]- ## Refactoring 
>> Tecnica strutturata per modificare la struttura interna di codice, senza modificarne il comportamento esterno 
>
>1. Identificazione problemi
>2. Pianificazione refactoring
>3. Applicazione tecniche refactoring 
>	- Estrazione di metodi 
>	- Spostamento di codice duplicato in metodi condivisi 
>	- Suddivisione di metodi lunghi e accoppiamento di metodi brevi 
>4. Test 
>5. Iterazione 
>Molti IDE offrono supporto nativo per il refactoring, automatizzando alcuni processi. 

>[!info]- ## Principi SOLID di programmazione 
>> Insieme di 5 principi di progettazione software formulati per creare codice pulito, di facile manutenzione e flessibile. 
>
>1. **Single Responsibility Principle**
>	1. Una classe dovrebbe avere una sola ragione per essere modificata: ovvero deve avere un solo compito. Se una classe ha troppe responsabilità, diventa difficile da comprendere. 
>2. **Open-Closed Principle**
>	1. Le classi dovrebbero essere aperte all'estensione ma chiuse alla modifica. 
>3. **Liskov Substitution Principle**
>	1. Gli oggetti di una classe derivata dovrebbero essere sostituibili senza influire sul comportamento corretto del programma. Quindi le sottoclassi dovrebbero estendere e specializzare il comportamento della classe base senza modificarlo. 
>4. **Interface segregation Principle**
>	1. Le interfacce dovrebbero essere specifiche per il cliente: una classe non deve essere costretta ad implementare metodi che non usa. 
>5. **Dependency Inversion Principle**
>	1. I moduli di alto livello non devono dipendere dai moduli di basso livello. Entrambi devono dipendere da astrazioni. Ovvero, le classi dipendono da interfacce o astrazioni invece di altre classi concrete. Rende il codice più flessibile e facile da testare. 

>[!info]- ## Clean code
> - Nomi significativi 
> - Mantenere le funzioni brevi
> - Minimizzare i side-effect
> - Commenti significativi 
> - Formattazione coerente
> - Evitare il codice "morto"
> - Decomposizione e astrazione
> 	- Suddividere il codice complesso in funzioni più piccole e astratte, per promuovere la riusabilità e comprensione del codice
> - Test automatici 
> - Evitare duplicazione 
> - Principi SOLID
> - Mantenere le dipendenze gestibili 

>[!info]- ## Git 
>> Sistema di controllo versioni per gestire codice sorgente dei progetti software (e non solo)
>
>GitHub e GitLab sono servizi cloud che forniscono una piattaforma per ospitare e collaborare su repo Git. 