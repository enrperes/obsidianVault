> [!attention]  **Terminology** 
 > Decomposition, Parametrization, Specification. Data Abstraction, Categorization, Packages, Visibility, Mutability, Objects, Methods, Calls, Types, Primitives, Conversions, Autoboxing, Strings, Enum, Type checking, Type Hierarchy, Overloading, Overriding, Method dispatching, Contracts, Type abstraction, Partial abstractions, Exceptions, Throw/Catch, Masking, Reflecting, Assertions, Preconditions, Abstract Data Types, Cloning, Equality, Iterators, Inheritance, Substitution, Type safety, Polymorphism, Dependency inversion, Interfaces, Abstract classes, Anonymous classes, Generic types, Generic methods, Type erasure, Bounded generic types, Subtyping, Wildcards, Factory, Builder, Observer, Decorator, Composite, Bridge, Responsibility, CRC, Design Patterns.  


>[!info]-  **Automazione dei test**
>> Processo per eseguire automaticamente una serie di test su software per verificane il corretto funzionamento. 
>
>1. Identificazione dei test da automatizzare 
>2. Selezione tecnologie e strumenti 
>3. Scrittura dei casi di test automatizzati 
>4. Esecuzione dei test automatici 
>5. Report e analisi dei risultati 
>6. Manutenzione dei test 

>[!info]- **Sviluppo agile** 
>> Approccio allo sviluppo di software basato sulla distribuzione continua di software efficienti creati in modo rapido e iterativo. 
>
> è un approccio alla collaborazione e a determinati flussi di lavoro che consentono di rilasciare rapidamente modifiche al software in piccole porzioni. 
> - Collaborazione e comunicazione 
> - Adattabilità e flessibilità 
> - Coinvolgimento del cliente

>[!info]-  **DevOps**
>> Approccio all' ingegneria software che mira a migliorare la collaborazione tra team di sviluppo (**dev**) e team operativi (**Ops**) al fine di accelerare il ciclo di sviluppo. 
>
> Tra i vantaggi, permette a ruoli in precedenza isolati (sviluppo, operazioni IT, security) di coordinarci e collaborare per fornire prodotti migliori. 
> - Accelerazione *time-to-market*
> - Adattamento al mercato e alla concorrenza
> - Conservazione di stabilità e affidabilità del sistema
> - Miglioramento del tempo medio per il ripristino 

>[!info]- **Continuous integration (CI)**
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

>[!info]-  **Test driven development (TDD)**
>> Modello di sviluppo del software che prevede la stesura dei test automatici prima di quella del software che deve essere sottoposto a test. Lo sviluppo del software applicativo sia orientato **esclusivamente** all'obiettivo di passare i test.
>
>1. Fase $\color{red} \Large \texttt{rossa}$
>	1. Il programmatore scrive un test automatico per la nuova funzione da sviluppare. 
>2. Fase $\Large \color{green} \texttt{verde}$ 
>	1. Il programmatore sviluppa il codice necessario per passare il test. 
>3. Fase $\Large \color{gray} \texttt{grigia}$ 
>	1. Il programmatore esegue il refactoring del codice per adeguarlo a determinati standard di qualità 

>[!info]-  **JUnit**
>> **Framework** di testing per Java
>
> Progettato per semplificare e automatizzare il processo di scrittura e esecuzione dei test unitari, focalizzati sulla verifica delle singole unità di codice per garantire che funzionino correttamente. 
> L'obiettivo principale è scrivere test efficaci automatici per verificare il comportamento delle singole parti del codice. 

>[!info]-  **Refactoring** 
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

>[!info]-  **Principi SOLID di programmazione** 
[[SOLID programming]]

>[!info]-  **Clean code**
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

>[!info]-  **[Git](https://git-scm.com/)** 
>> Sistema di controllo versioni per gestire codice sorgente dei progetti software (e non solo)
>
>GitHub e GitLab sono servizi cloud che forniscono una piattaforma per ospitare e collaborare su repo Git. 

>[!info]-  **Continuous deployment**
>> Pratica per automatizzare il processo di distribuzione in produzione in modo rapido e **frequente**, per consegnare nuove versioni del software in modo continuo. 
>
>Riduzione del *Time-to-market*, miglioramento continuo

>[!info]-  **Unit testing** 
>> Pratica che consente di testare singole *unità* di codice in isolamento: funzioni, metodi o classi. L'obiettivo è verificare che ciascuna unità funzioni correttamente e produca i risultati aspettati. 
>
>- Rilevamento tempestivo di bug
>- Facilità di manutenzione

>[!info]-  **[Maven](https://maven.apache.org/)**
>> strumento di gestione di progetti e build Java: Semplifica al gestione del ciclo di vita del progetto, compilazione, gestione delle dipendenze e distribuzione del software. 
>
>- Gestione delle dipendenze
>	- librerire
>	- framework
>- Ciclo di vita del progetto (POM = Project Object Model)
>	- Compilazione
>	- test
>	- packaging 
>	- distribuzione
>- Gestione delle build
>- Struttura standard dei progetti
>- Repository centralizzato
>- Plugin

>[!info]-  **[Make](https://www.gnu.org/software/make/)**
>> Sistema di automazione delle build utilizzato in sistemi Unix e Linux. 
>
>- File di configurazione
>	- Il "makefile" contiene regole e dipendenze che descrivono come compilare e costruire il software.  
>- Automatizzazione delle build
>
>Particolarmente utile per progetti software complessi con molte dipendenze e file sorgente. Aiuta a mantenere il processo di build organizzato, rendendo efficiente la compilazione. 
