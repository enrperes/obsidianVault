# Linguaggio Formale 
- Oppure $\Large \lor$
- And $\Large \land$
- Non $\Large \lnot$ 
- Implica $\Large \to$ 

#### Esempio: 
> Se frequento e studio non vengo bocciato 

Viene tradotto in linguaggio formale con: 
$$(P \land Q) \to (\lnot R \land S)$$
![[DC19A2BA-8782-408C-9BDA-78BC245FF205.jpeg|200]]
L'implicazioneè falsa solo quando $P \land \lnot Q$, vera solo quando $\lnot P \lor Q$ 
### Equivalenze Logiche da ricordare: 
- $P \to Q \equiv \lnot P \lor Q$ 
Due espressioni si dicono **logicamente equivalenti** ($\Large \equiv$) quando hanno lo stesso valore di verità con qualsiasi interpretazione.  

## Conseguenza logica
$\Large F \models G \to v(F) = V \Rightarrow v(G) = V$
> G è conseguenza logica di F quando sono entrambe vere. Quando ogni interpretazione che rende vera F rende vera anche G. 