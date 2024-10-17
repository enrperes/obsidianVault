> Modello dei dati basato sui **record** e sui **valori**. 


Record: spazio a disposizione per definire i valori è predefinito. 

Modello logico che si basa  sulla rappresentazione dei dati sotto forma di *tabelle* (relazioni) 
Ogni tabella contiene righe e colonne: 
- Righe = record specifici 
- Colonne = attributi dei dati 

Le chiavi primarie e le chiavi esterne sono usate per definire le relazioni tra tabelle e garantire l'integrità referenziale. 
Viene poi implementato nel DBMS (MySQL, PostgreSQL...)

> [!failure]  **** 
 > No attributi composti 
 > No attributi multivalore
 

> [!info]- Esempio
> ###  Esempio: 
>
> ![[Pasted image 20240610141153.png#invert|400]]
> **Tabella cliente:** 
> 
>
>
> | CF  | Città | CC  |
> | --- | ----- | --- |
> | RSS | UD    | 153 |
> | RSS | UD    | 371 |
> | VRD | GO    | 24  |
> | NRE | UD    | 24  |
> |     |       |     |
> 
> La chiave della tabella cliente è $\{ CF, CC\}$ 
> 
> **Tabella CC:** 
> 
>
>
> | Numero | Ammontare | Cliente |
> | ------ | --------- | ------- |
> | 153    | 25000     | RSS     |
> | 24 ⚠️  | 12000     | VRD     |
> | 24 ⚠️  | 12000     | NRE     |
> | 371    | 40000     | RSS     |
> 
> La chiave della tabella CC è $\{Numero, Cliente \}$ 
> 
> #### Problema 1
> Le relazioni si ricavano guardando le colonne. 
> In questo caso la stessa relazione (CF-CC) è ripetuta nelle due tabelle. Si crea ridondanza, da evitare. 
> #### Soluzione: 
> Eliminare colonna cliente dalla tabella CC. In questo modo la riga ripetuta del conto 24 viene eliminata e le informazioni sulla relazione vengono recuperate solo dalla prima tabella. 
> 
> #### Problema 2
> Nella tabella cliente, RSS ha la città ripetuta nelle due righe --> Ridondanza 
> #### Soluzione:
> Introdurre un'altra tabella: 
> 
> Tabella CC
> 
>
>
> | Numero | Ammontare |
> | ------ | --------- |
> | 153    | 25000     |
> | 24     | 12000     |
> | 371    | 40000     |
> 
> Tabella Cliente:
> 
>
>
> | CF  | Città   |
> | --- | ------- |
> | RSS | Udine   |
> | VRD | Gorizia |
> | NRE | Udine   |
> 
> Tabella Possiede: 
> 
>
>
> | Cliente | CC  | Data       |
> | ------- | --- | ---------- |
> | RSS     | 153 | 03/10/2024 |
> | RSS     | 371 | 02/10/2024 |
> | VRD     | 24  | 04/10/2024 |
> | NRE     | 24  | 03/10/2023 |
> 
> Data, Cliente, CC sono **chiavi esterne** di *Possiede*

---

## Costrutti fondamentali

- **Dominio (di un attributo)**
	- Insieme di valori atomici in prima forma normale 
	- Valore `NULL` (non noto o non si applica)
	- Possibilità di definizione *globale*
- **Attributo (o colonna)**
	- Può avere o meno un *nome*. Avere un nome può creare complicazioni: Se due tabelle hanno un attributo con lo stesso nome e vengono joinate: *clash* (?)
	- Operazione *rinomina* consente di rinominare attributi in caso di Join. 
	- 
- **Relazione (o tabella)**
- **Tupla (o riga)**

