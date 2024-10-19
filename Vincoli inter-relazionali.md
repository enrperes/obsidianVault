Vincolo di integrità referenziale = di *chiave esterna*

Es: 

Un insieme di attributi FK di uno schema di relazione R_1 è una chiave esterna rispetto a uno schema di relazione R₂ se: 
- GLi attributi in FK hanno lo stesso dominio degli attributi che costituiscono la chiave primaria PK di R₂ 


Due istanze $r_{1}(R_{1}), r_{2}(R_{2})$ 
$\forall t_{1} \in r_{1}$ = tutte le tuple di un'istanza 

 = Gli impiegati possono stare solo nei dipartimenti elencati nella tabella dipartimento 
 Vale solo quando tutte le tuple sono $\neq$ `NULL` 


Operazioni di cancellazione possono violare vincoli inter-relazionali: 
Es: un dipartimento fa riferimento a un impiegato che non c'è più. A volte non è un problema: Es: Persona a carico di impiegato che se ne va 

