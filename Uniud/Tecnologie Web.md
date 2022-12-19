
---
cssclass: list-lines
---

### [[Tecnologie Web-info]]

---



# [[Etica&Tecnologia]]
 
---
[[Internet-UD]]
# [[Internet]]




---


# Risorse Multimediali - Parte 1
2022-10-20 10:30


[[Risorse Multimediali - Parte 1.pdf]]

## Digitalizzazione: 
Processo di conversione da *analogico* a *digitale*. Da valori continui a valori discreti. 
La conversione porta una perdita di informazioni: spesso non percettibili. 

Testi alfanumerici sono costituiti da elementi atomici discreti. (in codice ==ASCII==)
C'è una **legge di corrispondenza** (codice) tra i caratteri astratti (alfabeto) e un insieme di configurazioni di bit (codici binari) 
Per codificare un alfabeto da 200 caratteri servono 8 bit: 2^8 = 256 > 200.


## ASCII
*American Standard Code for Information Interchange*  (1963 da ANSI)
è un codice per codifica dei caratteri 
Si usano ==7 bit== (0-127)
non 8 perchè i primi 32 codici numerici sono per i caratteri di controllo: 
- Carriage return, line feed, backspace, cancel, escape... 
- 127 = delete
**Extended ASCII** Si usano *8 bit* (estende ASCII ai caratteri usati in europa occidentale)

### UTF-8
Unicode Transformation Format è la codifica principale di **Unicode** per internet e W3C. 
Assegna un numero univoco ad ogni carattere usato per la scrittura di testi. 
www.home.unicode.org
Usa da **1 a 6 byte** per rappresentare un carattere.  è retrocompatibile con la codifica ASCII 
UTF-8: 127 caratteri (ASCII standard)
UTF-16: 2^11 caratteri (estensioni ASCII, alcuni ideogrammi)
I primi 128 sono lo standard ASCII.
UTF è la codifica di caratteri più diffusa.

>[!danger]+  Microtipografia
>Riguarda le famiglie di caratteri 
>ogni carattere astratto deve essere associato a una specifica rappresentazione grafica visiva: **==glifo==**
>I glifi sono memorizzati come mappe di **bit** (**raster**) o in forma vettoriale (**vector**)
>La corrispondenza caratteri - glifi è data dal **==font==**

## Font

Corrispondenza *triangolare* tra: 
- Carattere Astratto (es. T)
- Codice numerico ASCII (es. 84)
- Glifo (es. *T*)

#### Famiglie di typeface
- **Roman**
	- Caratteri che hanno dei trattini di completamento nel glifo (dette grazie) -> serif. Usati per stampa su carta. 
- **Gothic**
	- Comprende i **sans serif**. Caratteri detti bastoni, usati per visualizzazione a schermo.
- **Script**
	- Caratteri che limitano l a scrittura a mano libera
- **Blackletter**
	- Caratteri ispirati a manoscritti antichi

#### Attributi grafici del glifo
- Dimensione del carattere
- Larghezza del carattere
- Spessore del tratto
- Inclinazione del tratto

Le dimensioni dei caratteri si misurano in punti. Un punto corrisponde a 1/72 inch. 1 inch = 2.54cm

#### Mesotipografia
> Configurazioni di glifi in linee e blocchi di testo 

- **Spacing**
	- spazio fra lettere
- **Kerning**
	- Spazio tra coppie di lettere specifiche. Usata per conferire aspetto equilibrato ai carattteri. 
- **justify**
	- lunghezza delle righe di testo
- **Interlinea**
	- Spazio sotto e sopra la riga di testo. 


# Immagini

Immagine **analogica**: rappresenta oggetto riprodotto mantenendo un'analogia formale con l'immagine originale. 
### $I = f(x,y)$
I = valore di luminosità / colore 
P = punto di coordinate x/y

### Digitalizzazione immagini
Attraverso due processi: 
- **Campionamento**
	-  Immagine suddivisa in griglia di celle: pixel logici. 
- **Quantizzazione**
	- ogni pixel assume un valore di colore, facendo la media dei valori all'interno del pixel. 

#### Rappresentazione del colore
Monocromatica: il valore indica l'intensità del grigio 
Colore: definizione di spazio geometrico astratto. 

- **RGB**
	- Sintesi *additiva* di tre colori primari. Ogni colore occupa **8 bit**. Usato per monitor e scanner
- **CMYK**
	- Sintesi *sottrattiva* di quattro colori: Cyan, Magenta, Yellow, Black. Usato nelle stampanti
- **HSL**
	- Hue Saturation Value. 8 bit per canale. Usato in campo artistico.
	- Hue: Parte dal rosso (0°), verde (120°), blu (240°)
	- Saturation: intensità e purezza del colore. Percentuale
	- Value: luminosità, brillantezza. Percentuale 
- **YUV**
	- Basato sulla separazione della luminanza (Y) dalla crominanza (UV). Usato in alcune tecniche di compressione (JPEG)

##### Sintesi Additiva  (RGB) e sottrattiva (CMYK)

![[440F1071-A755-43DC-8365-A6228966F226.png|300]]

>[!palette]- CLUT 
>Color LookUp Table

##### Altre caratteristiche immagine: 
- Dimensione (logica) di immagine bitmap = numero di pixel che compongono l'immagine. 
- Risoluzione di immagine: risoluzione del dispositivo di acquisizione o visualizzazione. 
- Profondità del colore: n. bit usati per la quantizzazione (2, 8, 16...)
- Scala tonale: gamma di colori visualizzabili (8bit, 10bit...)
**PPI** = pixel per inch 

##### Spazio occupato da immagine raster: 
	Spazio = Dimensione (pixel) x profondità (bit/pixel)


### Grafica vettoriale

Gestite alla base da **Curve di Bezier**. 1962.
- sono curve parametriche che definiscono elementi 

*Vantaggi*: compatte, facilmente manipolabili. 
*Svantaggi*: Complessità nella progettazione di immagini articolate, devono subire un processo di rasterizzazione per essere visualizzate. 

#### Uso delle immagini nel Web 
- Non figurative: Astratte. Non rappresentano entità del mondo 
- Figurative: rappresentano entità riconoscibili (persone, oggetti, ambienti)
	- Concettuali: Concetti astratti 
	- Narrative: eventi, monumenti del mondo. 

---

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

# Video 
Rappresentato da una funzione a valori in un intervallo a **tre** variabili reali: Coordinate (x, y) del punto e t = tempo. 
Il video analogico è campionato sia nel tempo che nello spazio. I campioni di intensità luminosa sono quantizzati come per le immmagini. 
- **Dimensione logica**: numero di pixel di cui è composto un frame. 
- **Profondità del colore:** numero di but usati per codificare il colore di ciascun pixel (8, 10 bit.)
- **Aspect Ratio**: (4:3, 16:9)
- **Pixel Aspetc Ratio** rapporto tra larghezza e altezza dei pixel di un frame. 

>[!info]- Dimensione di un video 
> Dimensione di un video (non compresso) = 
>	spazio(bit) = dimensione logica del frame * Profondità del colore * frame rate * durata del video (s)
> - 720x576; 25fps; 8bit; 24bit a pixel; 1h30m --> 720 * 576 *  24 * 25 * 90 * 60 = 168GB 
> 

#### Codifica video 
- Codifica **intra frame**
	- Tecniche di compressione applicate ad ogni fotogramma 
- Codifica **inter frame**
	- Tecniche di compressione applicate a uno o più frame adiacenti. Ciascun fotogramma viene confrontato con quello di riferimento. Vengono codificati solo i pixel che cambiano. 
	- Compensazione del movimento basata su blocchi
##### H.265 e AV1
*High Efficiency Video Coding* = standard di compressione inter frame. Uno dei più usati per la registrazione, compressione e condivisione video. 
*AV1* royalty free 

# Formati contenitori multimediali
Più flussi audio/video, sottotitoli, informazioni sui capitoli, metadati...
- AVI
	- Standard microsoft Windows
- MKV
	- (Matroska) 
- MOV
	- Standard QuickTime Apple
- MP4
	- Contenitore standard audio/video 
- Ogg
- WebM

# Compressione dei dati
> rappresentazione più compatta delle informazioni, riducendo i bit necessari 

- ### **LossLess**
	- **LZW** (Lempel, Ziv, Walsh)
		- Metodo a sostituzione dizionario dinamico: costruisce un dizionario dei dati.
		- Le informazioni sono stringhe di dati all'interno delle quali si trovano dei pattern (*sotto sequenze*). Se non vengono trovati pattern viene costruito un codice per quel pattern e viene aggiunto al dizionario. 
		- **Esempio**
			- `ababbcbc`
			1. Identificazione dei pattern e costruzione dinamica del dizionario:
				1. `a b ab bc bc `
			2. Codifica della stringa: `12344`
			3. Tasso di compressione: $100 \cdot \dfrac 5 8 = 62.5 \%$
	- **RLC** 
		- Formato (due byte)
			- `Numero di caratteri 
			- `carattere`
		- Esempio
			- `AAAAAA` = `6A
- ###  **Lossy** 
Rimuovono l'informazione ridondante e poco rilevante in modo irreversibile. 
- **DCT** (Discrete Cosine Transform)
	- Usato per JPEG, MP3, AAC, H.265..


---

[[Modello di un Sito Web.pdf]]

2022-10-28 10:10

# Sviluppo di un sito WEB

#### Componenti di un sito web
- Contenuto 
	- Risorse 
- Contenitore 
	- Struttura che ospita i contenuti
- Infrastruttura tecnica
	- Ambiente tecnologico che ospita contenuto e contenitore 

### Contenuti
- **Informativo**: fornire informazioni utilizzando risorse multimediali 
- **Servizi applicativi**: Applicazioni software che permettono di eseguire compiti o procedure complesse di lavoro. 
- **Servizi di comunità**: chat, forum..
- **Servizi di supporto**: Servizi generali di utilità

### Modello di progettazione sito WEB
1. **Analisi e specificazione**
	1. Profilazione e analisi degli utenti
	2. Identificare siti concorrenti
	3. Scenari d'uso
	4. obiettivi del sito
2. **Progettazione del contenuto** 
	1. Lista dei contenuti e delle funzioni
	2. Modello del contenuto
3. **Progettazione della struttura ipertestuale**
	1. Definire collegamenti e percorsi attraverso unità di contenuto 
4. **Progettazione della presentazione**
	1. Caratteristiche dei dispositivi di erogazione
	2. Struttura delle pagine 
5. **Realizzazione collaudo e pubblicazione**
	1. Prototipo 
	2. Collaudo
	3. Piano di pubblicazione
6. **Gestione e valutazione**
	1. Aggiornamento dei contenuti 
	2. Aggiornamento tecnologico 
	3. Manutenzione sistemistica
	4. Web-analytics 

### Personalizzazione di un sito web

- Sistemi adattabili
	- L'utente prima di fornire di usufruire dei servizi fornisce il proprio profilo (compilazione form). Utente consapevole di fornire info personali. 
- Sistemi adattivi
	- il sistema adatta la presentazione o il contenuto in maniera automatica in base alle info date dagli utenti 
	- Non è detto che l'utente sia consapevole di fornire inforamzioni personali. 

### Ottimizzazione sito web
#### Motori di ricerca
- **Indicizzazione** delle pagine
	- Associa parole chiave ad indirizzi 
	- **Crawling**= un web bot analizza le strutture ipertestuali di tutte le pagine web per scoprire nuovi contenuti 
	- Le **key words** sono fondamentali per il crawling. Sono specificate nell'elemento `<meta>`di HTML. 
- **Ordinamento** dei risultati di ricerca
	- **SERP** (Search Engine Results Page) = pagina che contiene i risultati di una ricerca. Obiettivo: ordinare le pagine in base alla pertinenza. 
	- Importanza di una pagina è data da: 
		- Numero di link che puntano alla pagina desiderata
		- Importanza delle pagine da cui partono i link 
	- I motori di ricerca usano la personalizzazione (info sul comportamento degli utenti) per modificare le SERP
	- **Gatekeeping** = processo di selezione delle informazioni, determina quali informazioni sono selezionate. Svolto da servizi online (Google, Meta, Twitter)
	- Ottimizzazione per i motori di ricerca (Search Engine Optimizazion = **SEO**) 
		- SEO on page: 
			- intervento di ottimizzazione che riguardano direttamente la pagine del sito web
		- SEO off page:
			- Riguarda elementi esterni al sito. *link building* = incremento dei link in ingresso della pagina desiretata. 

### WEB analytics
Raccolta, misura, analisi, interpretazione di dati relativi all'uso del sito. 
*Tra i metodi di acquisizione:* 
- Cookies 
- Codice JavaScript nelle pagine del sito
*Tra le informazioni di interesse:* 
- Numero di visite
- Pagina di arrivo 
- Numero di pagine visualizzate
- Frequenza di visualizzazione
- Tempo di permanenza su ciascuna pagina
- Azioni svolte dagli utenti 
- Percorso di navigazione nel sito
- Pagina d iuscita
- Numero di visitatori nuovi e non
- Provenienza dei visitatori (dai social, tramite URL...)
- Dispositivo usato per l'accesso...

---

2022-11-02 10:30

# Programmazione e laboratorio

# [[XML]]
# [[HTML5]]
# [[CSS]]

