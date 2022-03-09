# Circuiti 
### Induttanza = $L$
Proprietà tale per cui la corrente induce una forza elettromotrice, che per la legge di [[Lenz]] è proporzionale alla variazione di flusso magnetico concatenato nel circuito. 

##### $$L=\dfrac{N \Phi (\overrightarrow{B})}{i}$$

Una corrente elettrica *i* che scorre in un circuito produce un campo magnetico nello spazio circostante. Se la corrente varia nel tempo il flusso magnetico $\Phi_B$ cambia, determinando una forza elettromotrice indotta che si oppone alla variazione del flusso. Il *coefficiente di autoinduzione $L$*  di un circuito è il rapporto tra il flusso del campo magnetico e la corrente.

![[29E8DEC4-34F8-456C-B228-EB0525C3EC16.jpeg]]

Unità di misura **dell'induttanza**: *Henry*
$1H = 1Wb \cdot A^{-1}$

<iframe border=0 frameborder=0 width=550 height=300 src="https://www.youtube.com/embed/ySx84Ca7BFQ" style="border-radius:10px"></iframe>

L'equazione che definisce l'induttanza può essere riscritta in questo modo:

$\Phi _{B}=Li$
Derivando entrambi i membri rispetto al tempo:

${ \frac  {d\Phi _{B}}{dt}}=L{\frac  {di}{dt}}+i{\frac  {dL}{dt}}$

In molti casi fisici l'induttanza può essere considerata costante rispetto al tempo (o tempo-invariante), per cui:

${\displaystyle {\frac {d\Phi _{B}}{dt}}=L{\frac {di}{dt}}}$

Dalla [legge di Faraday](https://it.wikipedia.org/api/rest_v1/page/mobile-html/Legge_di_Faraday "Legge di Faraday"), applicata alla circuitazione del circuito costituito dalla induttanza stessa, si ha:

${\displaystyle -{\frac {d\Phi _{B}}{dt}}={\mathcal {E}}=V}$

dove $\mathcal{E}$  è la [forza elettromotrice](https://it.wikipedia.org/api/rest_v1/page/mobile-html/Forza_elettromotrice "Forza elettromotrice") (f.e.m.) e _V_ è il potenziale indotto ai morsetti del circuito in questione. 

Combinando le equazioni precedenti si ha:

${\displaystyle -L{\frac {di(t)}{dt}}={\mathcal {E}}=V(t)}$
e
da cui si evince che l'induttanza $L$ di un componente attraversato da corrente variabile si può definire operativamente come l'opposto del rapporto tra la *f.e.m.* autoindotta e generata ai morsetti del componente e la derivata della corrente che lo attraversa. 

---
## Circuiti RC
Circuiti con un condensatore (C) e una resistenza (R)

Secondo Kirchhoff: 
#### $\varepsilon - q/c -R_i = 0$
Equazione differenziale RC: 

### $$\varepsilon - \dfrac{q}{c}-R \dfrac{dq}{dt}=0$$
### $$\dfrac{dq}{dt} = \dfrac{\varepsilon_c - q}{Rc}$$

con $\tau = Rc$ (costante di tempo)

$$\int_{0}^{Q} \dfrac{q}{c} dq= \dfrac{Q \varepsilon}{2} = \dfrac {Q^2}{2c} $$

$Q$ = somma di tutte le $q$

---
Energia accumulata nel condensatore è di tipo elettrico: 

### $$E_cc = \dfrac{\varepsilon_0 E^2}{2} \cdot Ad \;\; w_e$$
$E$ = campo elettrico. Quindi dove c'è campo elettrico c'è una densità di energia 
= densità di energia campo elettrico 

---

Potenza:
#### $\varepsilon i = Li \dfrac{di}{dt} + Ri^2$
Dove $\varepsilon i$ = potenza erogata;  $Ri^2$ = potenza dissipata di $R$

### $$E_{conc_{ind}} = \int_0^I Li\;di = ....$$

---
## Circuiti LC



---
## Circuiti RLC 
Contiene solo Resistori, Induttori e Condensatori. 
Equazione differenziale secondo Kirchhoff: 
#### $$\dfrac{q}{c}+R_i+L\dfrac{di}{dt}=0$$
Con corrente alternata diventa LC. Ci sono comportamenti diversi tra corrente alternata e continua. 

pag 884 
35, 41, 43, 48, 51, 61, 69.




















