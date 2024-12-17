If the network takes active role in **allocating resources**: 
- Congestion may be avoided
- No need for congestion control
But: allocating resources with precision beforehand is impossible.
Other option: let the sources send as much data as they want, then recover from the congestion when it occurs (**congestion avoidance**)
Another option is to let the source send as much data as they want but stop them before congestion occurs $\Large \longrightarrow$ **congestion avoidance**.



La congestione è il motivo principale per la perdita di pacchetti. 

### TCP Congestion Control 
3 meccanismi: 
#### Additive Increase Multiplicative Decrease

#### Slow Start

#### Fast Retransmit

### TCP Congestion Avoidance 

#### Random Early Detection (RED)
![[Pasted image 20241217095436.png#invert|right|400]]
Probabilità calcolata in funzione della coda. Più è lunga, più e alta la probabilità di scartare un pacchetto. 

$$
AvgLen = (1-w) \times AvgLen + w \times SampleLen
$$
$0<w<1$ e $SampleLen$ = lunghezza della coda quando viene misurata



[...] 

Se non specificato, MaxP = 1. 

![[Pasted image 20241217100926.png#invert|center|500]]
![[Pasted image 20241217100935.png#invert|center|500]]

