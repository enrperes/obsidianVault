

[[Sistemi operativi - info]]

---

> Un sistema operativo è un insieme di programmi che operano sull'hardware di un sistema di calcolo. 
> Per l'utente è un'interfaccia verso l'hardware che renda facile risolvere problemi. Per il sistema di calcolo, è il "programma" più strettamente correlato ai dispositivi fisici. Funge da assegnatole di risorse e controllore del loro utilizzo. 

Gli **obiettivi principali** di un Sistema Operativo sono: 
- Semplificare all'utente l'uso e lo sviluppo di programmi
- Rendere efficiente l'utilizzo delle risorse hardware 

Un sistema di calcolo è composto da: %%[aggiungere immagine]%%
- dispositivi fisici 
	- CPU, RAM, periferiche 
- sistema operativo
	- Gestisce e controlla l'utilizzo di hardware da parte dei programmi
- Programmi di sistema
	- Forniscono interfaccia verso le risorse dal S.O. semplificando lo sviluppo e esecuzione di programmi applicativi (gestione file, config sistema, editor, compilatori)
- Programmi applicativi 
	- Applicazioni che risolvono problemi specifici (DBSM, Word processor, Browser...)
- Utenti
	- Qualsiasi agente che usi il sistema di calcolo per risolvere un problema (può essere umano o altro sistema operativo)

#### Kernel
Solitamente si definisce il sistema operativo come quel programma sempre in esecuzione nel sistema di calcolo: si usa il termine **Kernel**. Tutto il "resto" è costituito da programmi di sistema o applicativi. 

### Sistemi mono e multi programmati 

[...]
Multiprogrammazione = mantenere molti processi in RAM, che è limitata quindi bisogna attivare politiche di assegnazione di risorsa "memoria"
Ci sono due tecniche principali: 
#### Swapping
 migrazione di processi tra memoria principale e secondaria 
#### Memoria Virtuale
Introduce uno spazio di indirizzamento logico svincolando i processi dalla memoria fisica e dai suoi limiti. (si può eseguire un processo NON completamente caricato su RAM)


---
# Processi / Job / Task

> Attività unitaria di elaborazione, caratterizzata da un singolo flusso sequenziale di esecuzione, uno stato corrente ed una collezione di risorse assegnate dal sistema. 

> [!example]- Altre definizioni 
> > Un programma caricato in memoria e predisposto per l'esecuzione 
> 
> > Un'istanza di un programma in esecuzione su un computer
> 
> > Un'attività controllata da un programma che può essere assegnata ad un processore e da questo eseguita

- Per ogni utente possono esistere uno o più processi allo stesso tempo in memoria centrale(RAM)
- La memoria centrale può non essere abbastanza per contenerli tutti: si richiede memoria di massa in una zona detta *job pool*
- L'OS decide quali processi caricare in RAM (**job scheduling**) e quali eseguire tra quelli in RAM (**CPU scheduling**)
- L'OS può anche decidere di spostare dei processi (parzialmente eseguiti) dalla RAM alla ROM (**Swap-out**) per liberare RAM. Ovviamente viene congelato e la sua esecuzione viene congelata. 

# Principali funzionalità di un Sistema Operativo

> [!attention]  **In presenza di più processi che condividono risorse è necessario garantire che ogni processo non danneggi gli altri**
> A tale scopo, gli OS moderni operano in due modalità di funzionamento 
> - Modalità Utente
> - Modalità Kernel: abilità l'esecuzione di istruzioni privilegiate 
> Nel caso più semplice consiste in un bit di modalità della CPU 

 > [!attention]  **Se la gestione delle risorse avviene tramite istruzioni privilegiate, come fa un processo utente (eseguito in modalità utente) a ottenere risorse?** 
 > Deve chiedere al Sistema Operativo, che opera in modalità Kernel: **System Calls**
 > - Tramite esecuzione di system call un processo richiede un servizio
 > - La chiamata genera un'interruzione (trap): tramite il vettore delle interruzioni il controllo passa all'apposita routine di gestione. Routine interna all'OS in mod Kernel 
 > - Si analizza la richiesta e si fornisce il servizio richiesto 
 > - Prima di restituire il controllo al programma utente, si ritorna in modalità utente
 > - ![[Pasted image 20240306172404.png|500]]

