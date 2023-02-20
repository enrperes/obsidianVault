2022-10-26 10:30

[[Risorse Multimediali - Parte 2.pdf]]
# Audio
 > Onda longitudinale (onda di pressione) che viaggia attraverso aria o altro mezzo

Il processo di registrazione e riproduzione dell'audio è composto da una serie di operazioni idi **digitalizzazione** dell'onda di pressione sonora per la conversione dell'audio digitale in **onda di pressione.** 
Il segnale di audio analogico è rappresentabilie da una funzione in un intervallo reale di una variabile reale, il tempo t. 
### $A = x(t)$ 
Con A = ampiezza del segnale al tempo  `t`

### Dominio del tempo e della frequenza 

![[Pasted image 20221027095206.png|500]]
è possibile analizzare un segnale sia nel **dominio del tempo** che nel **dominio della frequenza**:

![[Pasted image 20221027095552.png|400]]
Dominio del tempo: ^  Con il passare del tempo il segnale (somma di tutte le frequenze) varia. 

![[Pasted image 20221027095605.png|400]]
Dominio della frequenza: ^ Il segnale è scomposto nelle varie frequenze. 

La relazione di un suono nel dominio del *tempo e delle frequenza* si basa sull' **Analisi di Fourier** e sul modello di **onda sinusoidale**
Onda sinusoidale ha la forma: 
####  $y(t) = Asin(2\pi ft + \phi)$
La frequenza (1/t) indica quante volte la funzione si ripete ogni secondo.

#### Serie di Fourier
> Rappresentazione di una funzione periodica mediante combinazione lineare di funzioni sinusoidali. 

Ad esempio per rappresentare un'approssimazione dell'onda quadra attraverso i primi quattro termini della corrispondente della **Trasformata di Fourier**
Formula: 

	## $$ f(x) = a_0 + \sum_{n=1}^{\infty} (a_n cos \dfrac{n \pi x}{T} + b_n sin \dfrac {n\pi x}{T})$$
![[7CD31827-7882-405B-9157-ECCF52C15BDF.jpeg|500]]


##### Trasformata di Fourier 
Consente di calcolare diverse componenti delle onde sinusoidali di un segnale. 
> Permette di trasformare un segnale nel dominio del tempo in segnale nel dominio delle frequenze 
> Permette di passare dal dominio della frequenza a quello del tempo con l'anti-trasformata di Fourier. 

#### Spettrogramma
> rappresentazione visiva tempo-frequenza di un audio digitale. 

#### Digitalizzazione del suono
Un audio digitale è ottenuto partendo da un segnale analogico attraverso le fasi di 
1. Campionamento 
2. Quantizzazione
3. Codifica


##### Campionamento
> discretizzazione del ==segnale== analogico nel tempo. 
> Secondo il teorema di **Nyquist-Shannon**, la frequenza di campionamento deve essere almeno il doppio di quella da campionare, per non avere una perdita di segnale. 

![[FAD9FB1F-171D-4BAB-BB24-B3A2C3600804.jpeg|500]]
###### Aliasing 
Quando un segnale campiona i dati in modo discreto a una velocità **insufficiente** per catturare i cambiamenti nel segnale. Introduce delle distorsioni nel segnale, compromettendo il contenuto. 
Le distorsioni sono provocate dalla produzione di frequenza non proprie del segnale originario (*Alias*)
###### Frequenza di campionamento 
Gamma frequenze dell'udito umano: 20-20k Hz. 
Frequenza di campionamento ideale: 40k Hz
Frequenza campionamento CD (44100Hz)

##### Quantizzazione
> Discretizzazione dell'==ampiezza== del segnale. Divide la gamma delle ampiezze in 2^N valori discreti. 

Si commettono errori che al massimo valgono metà dell'ampiezza dell'intervallo. Un errore di quantizzazione si comporta come *rumore di quantizzazione*

![[000AA12E-7E57-483A-969A-B208124E1B59.jpeg|400]]

##### Codifica
> Definisce il ==formato== con cui il flusso di dati audio deve essere memorizzato su un supporto trasmesso a internet.

**PCM**: Pulse Code Modulation: i campioni quantizzati vengono memorizzati **senza compressione**: Il formato .waw (Waveform Audio File Format). Un file audio PCM è una lunga matrice di numeri. 
Tra le codifiche con compressione: 
- MP3
	- lossy
- AAC
	- lossy, per streaming
- FLAC
	- Free Lossless Audio Codec
- ALAC
	- Apple Lossless Audio Codec

##### Bitrate Audio
> Quantità di dati utilizzati per trasmettere un **flusso di audio nell'unità di tempo**

il Bitrate di un audio PCM può essere di 1400 kbps
Un messaggio audio vocale può essere 256kbps