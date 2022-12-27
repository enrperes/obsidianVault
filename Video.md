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