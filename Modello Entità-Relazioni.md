Il modello concettuale dei dati Entità/Relazioni è un modello di alto livello (astratto)

è un modello concettuale usato per rappresentare la struttura logica dei dati
- Si focalizza su entità (oggetti concreti) e sulle relazioni tra di esse. 
- Utilizza diagrammi per mostrare come le entità sono collegate tra loro, con attributi per descrivere le caratteristiche delle entità e delle relazioni

Viene usato nella fase di progettazione di un database per ottenere una rappresentazione ad alto livello dei dati 

> [!attention]  **Chiave** 
> Insieme di uno o più attributi che identificano in modo **univoco** una singola occorrenza di un'entità o di una relazione. 
> ### Chiave primaria 
> Attributo che identifica in modo univoco ogni istanza di un'entità
> ### Chiave esterna
> Attributo che stabilisce una relazione tra due entità, referenziando una chiave primaria di un'altra entità.

> [!attention]  **Entità** 
 > Rappresenta un oggetto o un concetto reale, astratto o concreto, che ha una rilevanza nel contesto del sistema informativo. 
 > Può essere una persona, luogo, evento, che ha attributi associati ad esso. 
 
> [!attention]  **Attributo** 
> è una proprietà o caratteristica di un'entità che descrive o specifica l'entità in dettaglio. Gli attributi memorizzano i valori che descrivono le istanze delle entità. 
> 
 > - Semplice (atomico) o composto 
 >   ![[Sketch-3.png#invert|300]]
 > - A singolo valore o multivalore
 > - Opzionale o obbligatorio
 >   ![[Sketch-4.png#invert|200]]
 > - Primitivo o derivato 
 
 > [!attention]  **Relazioni** 
 > #### Concetti Fondamentali: 
 > - Tipi di relazione
 > - Attributi di relazione
 > - Partecipazione dei tipi di entità ai tipi di relazione (rapporti di cardinalità, vincoli di partecipazione)
 > - Relazioni ricorsive e nomi dei ruoli 
 > [[Relazioni di grado superiore al secondo]]
 

[[Esempio Offerta Alberghiera Udine]]

[[Esempio Azienda]]
[[Esempio Aeroporto]]

### Generalizzazione: 

![[Pasted image 20241015154857.png#invert|450]]
Se $E$ è una generalizzazione di $E_{1}, E_{2}\dots$: 
- Ogni proprietà di $E$ è anche proprietà dei figli
- Ogni istanza di $E_{i}$ è anche un'istanza di $E$ , non vale viceversa 

Esistono diversi tipi di generalizzazione: 

> [!attention]  **Parziale / Totale** 
 > ![[Pasted image 20241015162058.png#invert|240]]
 
> [!attention]  **Disgiunta / Sovrapposta** 
 > Si indica accanto alla doppia freccia. 

Es: uomo - donna: totale e disgiunta
persona - disoccupato / lavoratore: parziale e disgiunta
Persona - studente / lavoratore: parziale e con sovrapposizioni

L'appartenenza di un'istanza dell'entità genitore ad una o più entità figlio può essere: 
- Definita dall'utente: **user-defined**
- **Attribute-defined / predicate-defined**: sulla base di certi attributi si definisce a quale figlio attribuire l'istanza. 

#### Complicazioni: 
Entità possono avere più specializzazioni. Una specializzazione può avere a sua volta delle ulteriori specializzazioni. 
Ci possono essere entità che appartengono a più gerarchie di specializzazione (reticoli, invece che alberi)
Il problema: diventa complicato il meccanismo di ereditarietà: **Ereditarietà multipla**. 
- Non ereditare più volte stesse cose
- Potenziali conflitti di attributi


Le generalizzazioni vengono eliminate in fase di ristrutturazione, quando si traduce da ER a Modello relazionale. 


### Tipi unione (o categorie)
> Un genitore e uno o più figli

Un figlio può essere coinvolto in più relazioni di generalizzazione 


![[Pasted image 20241015161838.png#invert|500]]

Insieme dei proprietari: sottoinsieme dell'unione di Persona, Banca, Azienda. 


