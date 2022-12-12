![[Pasted image 20221212105953.png|400]]

##  Organizzazione accesso a memoria

### Memoria cache 
- intermedia tra registri e memoria RAM
- realizzata con hardware veloce e costoso
> mantiene le istruzioni e i dati che saranno più probabilmente usati 

- Località temporale: istruzioni e dati usati di recente hanno maggior probabilità di essere richiamati 
- Località spaziale: istruzioni e dati vicini a quelli usati recentemente hanno maggior prob di essere richiamati 
> L'accesso alla cache è interamente gestito dall'hardware

La CPU accede alla memoria principale RAM **solo** attraverso la cache. L'accesso con successo all'istruzione o al dato presente nella cache prende il nome di **cache hit**. Se un accesso non ha successo di tratta di **cache miss**

- $\Large h$: Probabilità di ciache hit 
- $\Large t_c$: tempo di accesso alla cache
- $\Large t_p$ : tempo di accesso alla memoria principale 
Il tempo medio di accesso alla memoria è quindi dato da: $$\large t_m = t_c + (1-h) \cdot t_p < t_p$$
La presenza della cache è solo giustificata se $\Large h > t_c / t_p$ : probabilità di fare cache hit > tempo di accesso alla cache / tempo di accesso alla memoria principale.

>[!info]- Linee di Cache
> #todo 
> La memoria principale viene suddivisa in regioni uguali di locazioni contigue, ciascuna mappata in una sola linea di cache. 

#todo 


### Memoria virtuale paginata
- Intermedia tra memoria RAM e memoria di massa
- Espone una memoria principale più estesa, appoggiandosi fisicamente a quella di massa
### Memoria virtuale segmentata
- Intermedia tra memoria RAM e di massa
- Organizza la memoria virtuale in segmenti 

