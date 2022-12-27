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