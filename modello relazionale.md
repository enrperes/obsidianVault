Usato solo in fase di progettazione. Contiene soltanto lo schema della base di dati.

Prevede un costrutto di relazione che permette di organizzare i dati in insiemi di **record** a struttura fissa. è di alto livello e svolge un ruolo fondamentale nella progettazione di una base di dati. 
Concetti fondamentali: 
- Entità 
- Attributo 
	- Semplice e composto 
	- ![[Sketch-3.png#invert|300]]
- A singolo valore o multivalore
- ![[Sketch-4.png#invert|200]]
- Opzionale o obbligatorio
- 
- 
Rappresentazione più usata: 
- Righe = record
- Colonne = attributi / campi

![[Pasted image 20240610141153.png#invert|400]]

---

1 costrutto fondamentale: Relazione (=Tabella)
Anche il modello relazionale è basato sui valori 

> [!info]+ Esempio
> ###  Esempio: 
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

