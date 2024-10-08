![[Sketch 2.png#invert|600]]

Numero minimo e massimo di coppie che la relazione possiede in cui posso trovare un certo cliente (o conto corrente)
$\Large (min, max)$  


Cliente -> Possiede $\Large (1, n)$ 
- un cliente deve possedere almeno un conto, ne può possedere al massimo n
Possiede -> Conto Corrente $\Large (1, n)$ 
- Ogni conto ha almeno un proprietario 
- Un conto può avere massimo n proprietari 

Solitamente: 
$\Large min \in \{0, 1\}$
$\Large max \in \{1, n\}$ 

Il minimo è detto **vincolo di partecipazione**:
- 0 = parziale
- 1 = totale
	- Ogni cliente deve comparire almeno in una coppia

Il massimo è detto **rapporto di cardinalità**
- Relazione molti a molti
	- (_ , n) (_ , n)
	- Ogni cliente può avere più conti correnti
- Uno a molti / Molti a uno
	- (_ , 1) (_ , n)
	- Es: ogni cliente può avere al più un conto corrente.
- Uno a uno
	- (_ , 1) (_ , 1)
	- Es: ogni cliente ha solo 1 conto, ogni conto ha solo 1 proprietario 


---

- Modello basato sui valori
- Scelta di attributi 
- Chiave 
- Superchiave

