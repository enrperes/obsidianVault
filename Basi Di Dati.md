---
tags:
  - materia
---
[[info - Basi di dati]]

---
## Argomenti del corso
1. Introduzione
2. Modelli dei dati 
3. Progettazione basi di dati 
4. Linguaggi
5. Transazioni
6. Strutture di indicizzazione

---

# Introduzione
Caratteristiche distintive di una base di dati: 
- **Persistenza**: 
	- Dati che persistono nel tempo (nella memoria secondaria)
	- Esiste indipendentemente dai programmi che interagiscono con essa. 
- **Mole**:
	- Grande quantità di dati (> della capacità della memoria primaria disponibile)
	- Il sistema deve decidere quali dati caricare e mantenere nella memoria primaria, eseguendo in modo efficiente le frequenti operazioni di trasferimento dei dati dalla secondaria alla primaria e viceversa. 
	- Minimizzare il numero di trasferimenti è essenziale 
- **Globalità**:
	- spesso i dati devono essere reperibili da diversi utenti / programmi -> Necessario disciplinarne l'utilizzo. 
	- Devono essere specificati e gestiti i diritti di accesso ai dati e garantita la privacy dei dati sensibili. 
	- I possibili conflitti fra utenti diversi che vogliono operare sugli stessi dati vanno risolti 

Caratteristiche generali di un sistema informatico:
- Facilità d'uso (indipendenza dei dati)
- Efficienza delle operazioni di accesso ai dati (strutture di indicizzazione e ottimizzazione delle interrogazioni);
- Efficacia, convenienza

###  DB vs FileSystem
 
 Insieme di file + insieme di programmi per gestire questi file

1. Sistemi di basi di dati vs programmi
2. Sistemi di basi di dati vs sistemi operativi 

Esempio: applicazione in ambito bancario: 
- **Ridondanza e inconsistenza dei dati** 
	- impossibile non creare ridondanza usando file "normali"
	- Ridondanza introduce inconsistenza ⚠️
- Difficoltà di accesso ai dati 
- Disomogeneità dei dati 
- Problemi di integrità dei dati 

## Rappresentazione dei dati 
Due modi: 
- Modello entità - Relazioni (ER)
	- Grafico 
- Modello Relazionale 

Progettazione DB = passaggio da modello ER a modello relazionale 

NB: Nella descrizione non compare mai il contesto (es: filiale di una banca) ma solo le entità ⚠️ (?)

