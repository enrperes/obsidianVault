
>[!info]- Kernel
> nucleo del sistema operativo che interagisce direttamente con la CPU 
> Fornisce un accesso sicuro e controllato dell'hardware ai processi in esecuzione dui computer. 
> 

## Modalità di funzionamento 
Quasi ogni processore può passare a una diversa modalità di funzionamento a seguito dell'esecuzione di un'istruzione di chiamata di sistema. (**subroutine**)

Indispensabile per proteggere il sistema da richieste improprie. 
Due modalità: 
- **User**
	- con privilegi limitati (alcune istruzioni non sono eseguibili, aree di memoria non accessibili)
- **Administrator** 
	- Riservata ai programmi che possono eseguire qualsiasi istruzione su qualunque area di memoria (sistema operativo)
### Passaggio di modalità 
Il passaggio a una modalità più protetta (livello inferiore) avviene in quattro modi: 
1. A livello utente, in seguito a una chiamata a subroutine di sistema
	1. accesso alla memoria
2. Livello del sistema operativo
	1. spostamento di una pagina di memoria
3. in seguito a un evento esterno alla CPU 
	1. richiesta di una periferica
4. In seguito a un evento interno alla CPU
	1. divisione per zero (failsafe)

>[!info]- Core i7 x86-64
> - livello 3
>	- Programmi utente
> - livello 2
>	- Subroutine certificate per l'utente (librerie)
> - livello 1
>	- Sistema operativo
> - livello 0
>	- Subroutine attivabile dall sola CPU 

>[!info]- ARM 
> - User 
>	- Programmi utente
> - System
>	- subroutine per l'utente
> - FIQ
>	- Accesso veloce a subroutine di sistema
> - IRQ
>	- accesso normale a subroutine di sistema
> - Supervisor
>	- Livello sistema operativo 
> - Abort
>	- protezione memoria da parte della CPU 
> - Undefined 
>	- Usata per scopi di customizzazione 

### Gestione di Input / Output 

La comunicazione è mediata da dispositivi di controllo I/O che permettono alla CPU di interfacciassi in modo uniforme con dispositivi diversi tra loro. 
L'indirizzamento dei registri per il controllo delle periferiche può essere di tipo: 
- Memory mapper I/O: accesso avviene usando un indirizzamento uniforme a quello della memoria (`LOAD, STORE`..)
- Isolated I/O: accesso avviene usando istruzioni dedicate (`READ, SEND`)
La presenza di questi **controlli** semplifica enormemente la comunicazione con le periferiche. 

#### Comunicazione con i controllori 


##### Polling di una stampante 
- Segnalazione dello stato (`bit READY`)
- Registro dati (carattere da stampare) 
La CPU riceve un comando di stampa di una sequenza di caratteri da un programma utente e da inizio a un ciclo di stampa tramite polling: 

