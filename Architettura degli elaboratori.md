# Architettura degli Elaboratori 

[[Architettura degli elaboratori-info]]

2022-09-30 10:37

#### Architettura di calcolo: 
Macchina capace di eseguire una sequenza di istruzioni semplici = **Istruzioni Macchina**
**Programma**= Sequenza di istruzioni macchina. 
I Programmi e i dati risiedono nella memoria principale (RAM). In caso di inattività la memoria principale si svuota e i programmi vengono salvati come *File* nella memoria di massa. 

#### Sistema operativo 
> Particolare programma che permette un razionale utilizzo del processore, della memoria e delle periferiche. è permanentemente in esecuzione e distribuisce le risorse del computer a tutti i programmmi. 

I *programmi applicativi* sono sotto il controllo del sistema operativo durante la loro esecuzione, per garantire un utilizzo delle risorse efficiente. 

#### Macchine virtuali 
Il computer viene visto come un astratificazione di *livelli*. Ciascun livello fors isce delle funzionalità di calcolo. Le *macchine virtuali*  forniscono una serie di funzionalità ulteriori. 
![[Pasted image 20220930112436.png|300]]

### Storia dei sistemi di calcolo
(...)

### ***Circuiti logici (Booleani)***
2022-10-03 09:35

Mappano *k* segnali binari in ingresso (input) a *m* segnali binari in uscita (output). 
La **Tabella di verità** fornisce una descrizione esaustiva del circuito: per ogni combinazione di valori in input specifica il valore di output. 
> Con *k* ingressi le possibili combinazioni sono **$2^k$**

## Algebra booleana
= *Espressioni algebriche* che descrivono le porte logiche. 
Permettono di:
- Verificare l'*equivalenza* tra due circuiti senza la tabella di verità. 
- Minimizzare il numero di porte e il costo delle porte. (Ottimizzare il circuito)

![[Pasted image 20221003110458.png|500]]

- Il segno del prodotto può essere omesso: $AB = A \cdot B$
- Il prodotto ha precedenza sulla somma
- Raramente la negazione è rappresentata con ' : $(A+B)' = a$

#### Proprietà algebra booleana
- ![[Pasted image 20221003111405.png|400]]

Assorbimento: $A+(A \cdot B) = A(1 \cdot B) = A \cdot 1 = A$
2022-10-07
#### Dualità e complementarietà 
Data un'espressione booleana, la sua negata si ottiene negando le variabili, scambiando le operazioni + e * e scambiando le costanti 0 e 1. 
$E = A+\not{A} \cdot (B+0)$ -> $\not{E} = \not{A} \;\; \cdot (A+\not{B} \cdot 1)$
- Negazione variabili (gli ingressi della tabella di verità)
- Scambiare + con * e viceversa
- Scambiare 0 con 1 e viceversa

2022-10-10 09:38


