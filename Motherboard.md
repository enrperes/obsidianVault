#todo 

http://edwardbosworth.com/My5155_Slides/Chapter12/SystemBusFundamentals.htm

![[Pasted image 20221205150817.png]]

## BUS
> Canale fisico di comunicazione tra dispositivi. 

Per gestire dispositivi con velocità diverse si usano **Bus sincroni** o **bus asincroni**. 
Fisicamente sono composti da tracce di alluminio o rame, oppure da / verso la Mobo: cavi isolati. [[Transmission Media|I cavi coassiali]] vengono usati per elimiare le interferenze date dai [[Onde Elettromagnetiche|campi magnetici]]. 
Viene anche usata la protezione differenziale basata su [[Kirchhoff]]. 

### Frequenza del bus
> numero di slot temporali distinti presenti nel segnale in un secondo. Calcolata in **Hetz**

### Banda passante 
> Frequenza x numero di bit presenti in uno slot (bit / sec)

### Bus sincroni 
![[Pasted image 20221205153114.png|500]]

## Bus seriali e paralleli
![[Pasted image 20221205153623.png|500]]

### Bus skew
![[Pasted image 20221205154109.png|500]]


![[Pasted image 20221205154905.png|500]]

---

2022-12-06

### La prossimità con la CPU 
Determina la banda passante, il costo e la flessibilità del bus. 
- Bus locale (front-side bus): proprietario, banda elevata. 
- Bus della cache (back-side bus): proprietario
- Bus della memoria principale
- Bus della scheda video (Accelerated Graphics Port (AGP))
- Bus per specifici controllori (ISA, ATA, SCSI)
- Bus per dispositivi esterni: USB, Thunderbolt 

## Schema connessioni Core i7
![[Pasted image 20221206110628.png|400]]
- 2 Bus proprietari a 666MHz e 64 linee dati per connessione a due memorie DDR3 SDRAM: 20GB/s
- 1 Bus PCIe per la connessione alla scheda grafica: 16GB/s
- 1 Bus Direct Media Interface: bus proprietario simile a PCIe per connessione a un chipset

## Accesso alla memoria
Può avvenire in modo sincrono o asincrono 
#todo 

## Accesso alla memoria DDR3
Parallelizzazione accessi alla memoria (**pipelining**)
Accesso dati in 3 fasi: 
- ACTIVATE
	- Si prepara la lettura, una riga della matrice di celle viene preparata all'accesso 
- READ/WRITE
	- Si eseguono accessi multipli a singole o sequenze di parole nella riga attivata. 
- PRECHARGE 
	- Chiude la riga corrente e prepara la memoria a una nuova ACTIVATE

La memoria DDR è divisa in banchi. Fino a 4 possono essere attivati simultaneamente. 

PCI realizza un arbitraggio semplice: 
- REQ# = segnale di richiesta 
- GNT# = segnale di assegnazione
^ lavorano in logica negata. 

## PCI Express (PCIe)

---

`lsusb` comando Linux per periferiche USB 

