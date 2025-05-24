---
title: Augmented Reality
author: Enrico
---

[[info - Realtà aumentata]]
[[Domande per esame]]
# Intro to basic AR concepts

> [!abstract]+  **AR** 
 > Realtà aumentata = tecnologia che sovrappone elementi digitali (immagini, video, modelli 3d) al mondo reale in tempo reale attraverso dispositivi come tablet, visori, occhiali smart. 
 > Obiettivo = arricchire la percezione sensoriale senza sostituire l'ambiente fisico ma integrandolo. 
 > > **Interactive**, experience of a real-world environment where the objects are enhanced by CGI, including visual, auditory, haptic sensory.
 
|     | Nome              | Caratteristiche                                                                             | Esempio                                                      |
| --- | ----------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| AR  | Augmented Reality | Sovrappone contenuti digitali al mondo reale che rimane visibile                            | App IKEA che posiziona elementi virtuali nel mondo reale     |
| VR  | Virtual Reality   | Sostituisce completamente il mondo reale con un ambiente simulato. Immersivo e interattivo. | Studio televisivo virtuale con conduttore reale              |
| MR  | Mixed Reality     | Combina elementi reali e virtuali che interagiscono tra loro in real-time                   | Visori che sostituiscono informazioni visive in dati termici |
| ER  | Extended Reality  | Include AR, VR, MR.                                                                         |                                                              |

L'esperienza può essere: 
- Diretta (Occhiali smart, visori, HUD)
- Indiretta (attraverso schermi, tablet, smartphone)

![[Pasted image 20250515104243.png#invert|left|300]]
1. Interfaccia grafica: realtà e computer interagiscono con l'utente ma non c'è contatto
2. (VR) Realtà virtuale: l'utente è completamente immerso nella virtualità e non interagisce con la realtà
3. Ubiquitous Computer: L'utente interagisce con i computer e con la realtà (i computer sono integrati nella realtà)
4. (AR) Interazione Aumentata: Utente e realtà interagiscono tramite il computer, che fa da filtro.


Per la realtà virtuale esistono 3 livelli di immersione: 
- Basso
	- Tra utente e mondo virtuale c'è lo schermo del pc
- Parziale
	- Feedback tattile (simulatori di guida, volo)
- Totale 
	- HDM (Head Mounted Display)

### Milgram's Virtuality Continuum (1994)
Il modello Virtuality Continuum di Milgram rappresenta uno spettro continuo tra il mondo reale e il mondo virtuale. Ogni esperienza si colloca su questo asse in base alla quantità di contenuto digitale che incorpora. 
![[Pasted image 20250513164253.png#invert|center|500]]
L'ambiente tra il reale e il virtuale è definito come "realtà mixata", dove si identifica la realtà realtà aumentata (elementi virtuali aggiunti alla realtà) e la virtualità aumentata (virtualità con aggiunta di elementi reali). 

Questo asse modella solo la quantità di elementi virtuali aggiunti alla scena. Non tiene conto della rimozione di modelli o altre alterazioni. 
Viene quindi riformulato aggiungendo una seconda dimensione (*mediality*) che tiene conto del numero di modifiche effettuate. 
![[Pasted image 20250513164508.png#invert|center|300]]
Asse x (V): realtà <-> virtualità 
Asse y (M): medialità: quanto il sistema interviene o filtra la percezione del mondo. 

Quindi nei quattro quadranti si trova: 

Mediated Reality | Mediated Virtuality 
Augmented Reality | Augmented Virtuality 

Stessi concetti si possono applicare all'audio: 
Audio Augmented Reality (AAR): Active Noise Canceling 

## Architecture of an AR system

L'user **interagisce** in qualche modo con il sistema AR (proprietà fondamentale)
- Direttamente: GUI, Gestures, Vocal...
- Indirettamente, quando interagisce con il mondo reale (posizione, orientamento...)

Le interazioni con il mondo reale vanno **rilevate** in qualche modo usando sensori: 
- Movimento: GPS, accelerometro 
- Orientamento: bussola, giroscopio. 

Il problema è la bassa precisione e il ritardo.

Un sistema AR prevede: 
1. Interazione
2. Rilevamento
3. Monitoraggio
4. Contenuto AR
5. Elaborazione 
6. Rendering
7. Display

### Markers
![[Pasted image 20250513170256.png#invert|right|300]]
Fiducial Markers: pattern specifici usati come placeholder per l'AR. (contrasto alto, forme nette). Interazione indiretta spostando la telecamera nello spazio. 
- Pattern Markers
	- Bordo nero spesso intorno, su sfondo bianco con un'immagine BW dentro.
	- Necessario generare Marker Descriptor files (patt)
- Matrix Markers
	- Simile ai QR, contengono un ID numerico codificato in una griglia
- NFT Markers
	- Basati su immagini reali, non codificati in modo binario. 
	- Più adatti a esperienze AR realistiche 

Stesso concetto in situazioni "markerless" dove il sistema riconosce feature naturali nei pattern delle immagini catturate. 


### Monitoraggio (tracking)
Il sistema che tiene in riferimento l'input per capire il rapporto tra utente e mondo reale. Segnala che il marker che si trova in posizioni diverse in frame diversi è lo stesso, che ha compiuto un movimento. 

### Contenuto AR
L'insieme di tutti i contenuti che possono essere aggiunti all'ambiente reale per renderlo aumentato. 

### Processing
Preleva i dati del mondo reale (stream video) e li aumenta con il contenuto AR

### Rendering 
Creare l'immagine aumentata finale 

### Displays
Head Mounted Displays (HMD) possono essere diretti o indiretti: 
- Diretti: see through vero attraverso lenti di vetro (Ms Hololens)
- Indiretti: see through attraverso camera + display (Apple Vision Pro)

Gli smart glasses: RayBan Stories: integrano una fotocamera ma nessun display. 

# AR web applications 

Vari AR SDK: 
- Vuforia per Unity
- ARCore (android) 
- ARKit (iOS)
- OpenXR
- WebXR

Per semplici applicazioni web si usano tecniche standard web dev. 

Il video viene simulato oppure catturato in diretta con la webcam, con ==WebRTC== API. 

Due progetti demo: 
1. usando `jsartoolkit.js`, una libreria JS da usare con Fiducial Markers. 
2. Usando AI per trovare le natural features con MediaPipe library. 

![[Pasted image 20250514103432.png#invert|center|500]]


#  Simple web based AR application

## WebRTC: Real world data
Tecnologia opensource che permette le comunicazione real time (audio video) tra due dispositivi senza ritardi.
Tra le principali API:
- ⭐️`getUserMedia()` chiede al browser l'accesso a webcam e microfono e ritorna uno stream media. 
	- ![[esempio getUserMedia]]
- `RTCPeerConnection()` crea e gestisce la connessione peer-to-peer (per chiamate audio / video)
- `RTCDataChannel()` crea un canale bidirezionale (simile a TCP / UDP) che permette ai browser di inviare dati via p2p

## JSARToolkit5: Detection + Tracking
Libreria Open Source per riconoscere marker fiduciari. 
- Rileva marker AR in tempo reale
- Calcola la posizione della camera rispetto ai marker
- Posiziona asset digitali sovrapposti al marker usando WebGL o un `<canvas>` 

### Marker supportati 
- Pattern Markers
	- Bordo nero spesso intorno, su sfondo bianco con un'immagine BW dentro.
	- Necessario generare Marker Descriptor files (patt)
- Matrix Markers
	- Simile ai QR, contengono un ID numerico codificato in una griglia
- NFT Markers
	- Basati su immagini reali, non codificati in modo binario. 
	- Più adatti a esperienze AR realistiche 

Step per rilevamento matrix marker (da ripetere ogni frame): 
1. Conversione grayscale
2. tresholding (da scala di grigi a immagine binaria) 
3. Connected component detection + border detection 
4. Pattern matching
5. pose estimation (del marker rispetto alla camera, rappresentato da una matrice di trasformazione) 

---
## Raster Images
Composte da una matrice di pixel. Problema: information loss: shrink + enlarge porta a perdita di informazioni. Stessa cosa per rotazioni: una rotazione di 90° è diversa da 10 rotazioni da 9°

## 2D vector graphics
Basate su una rappresentazione geometrica delle immagini usando vertici e segmenti, elementi base per creare poligoni. 

Ogni vector draw è composto da due/tre insiemi: (**polygonal 2D vector graphics**)
- Vertices 
- Edges
- Faces
![[Pasted image 20250514111937.png#invert|center|500]]
Le curve possono essere approssimate con punti oppure con formule: 

#### Bézier Curves
rappresentazione matematica di una curva basandosi su: 
- Start point
- Endpoint
- Tangent direction of the curve in those points. 
![[Pasted image 20250514112134.png#invert|center|500]]

![[Pasted image 20250514112416.png#invert|300]]

![[Pasted image 20250514112459.png#invert|300]]


#### 3D polygons 
Con $n>3$ vertici non sempre esiste un piano che li interseca tutti
Ma 3 vertici definiscono sempre un poligono (triangolo), quindi per questo sono importanti nella modellazione 3D: 

#### Triangolazione
Ogni poligono generico può essere decomposto in un insieme di triangoli
Per un poligono di $n$ vertici, la versione triangolata ha $n-2$ triangoli e $n-3$ nuovi edge.

#### Polyhedra
Descritti da insieme di vertici, edge, facce. 

#### Facce curve
Due approcci: 
- NURBS (mathematical description)
- Polygonal modelling


## Transformations
Le tre trasformazioni basilari sono: 
- Traslazione 
- Rotazione
- Scala

vengono descritte da operazioni matriciali algebriche. 

Possono essere:
- Local: fanno riferimento al sistema di coordinate locale 
- Global: riferimento al sistema di coordinate globale

> [!abstract]+  **Pivot** 
 > Origine del sistema di riferimento locale
 
 ### Proiezioni 
Per visualizzare un'immagine 3D in uno schermo 2D bisogna sacrificare una dimensione = proiezione

![[Pasted image 20250514115523.png#invert|center|500]]
#### Perspective Projection
Approssima quanto succede in una camera o occhio. C'è una distorsione: 
linee che sono parallele nel mondo 3D convergono in un punto (vanishing point)
Il parallelismo viene preservato solo per linee parallele al projection plane, quindi possono esserci più vanishing points. 

#### Axonometric projections
L'osservatore è posizionato a distanza infinita e i raggi di luce(linee di costruzione) sono paralleli (Ortographic View)
Linee parallele nel mondo 3D rimangono parallele, non c'è distorsione.
Utile per mostrare le relazioni tra oggetti nello spazio, perchè non c'è distorsione. 

## Canvas e 3D

HTML 5 supporta 2D con `canvas`. il 3D è accessibile con le API wi WebGL. 
WebGL è la libreria grafica per il web che permette l'inserimento di contenuti 3D senza plugin esterni. Molto di basso livello, quindi si usa Three.js che semplifica tutto 

#### Three.js
![[Pasted image 20250514121945.png#invert|center|500]]

Per prima cosa, importare le librerie:
```html
<script type="importmap">
{
	"imports": {
	"three": "https://unpkg.com/three/build/three.module.js",
	"three/addons/": "https://unpkg.com/three/examples/jsm/"
	}
}
</script>
```

![[Pasted image 20250514121311.png#invert|center|500]]
#### Transformations
`Cube.position.x = 10;`
`Cube.rotation.z += 0.1;`Rotazione espressa in radianti. Usare `Three.Math.degToRad()` per convertire 
`Cube.scale.set(2,2,2);` 

L'ordine di applicazione delle rotazioni è: 
1. x
2. y
3. z

## 3D Maths
- Somma: vettori o matrici con stessa dimensione, operazione fatta element by element 
- Moltiplicazione per scalare: ogni elemento moltiplicato per lo scalare
- Dot product: moltiplicazione tra vettori, ritorna uno scalare 
- Matrix multiplication: n. di colonne della prima = numero di righe della seconda
	- Metodo righe per colonne: elemento in posizione $i,j$ della matrice risultante è dato dal dot product della i-esima riga della prima matrice e j-esima colonna della seconda matrice

Un punto nello spazio 3D è un vettore con 3 elementi: x, y, z. 
Le trasformazioni di base (traslazione, rotazione, scala) sono esprimibili tramite moltiplicazione matrice-vettore. 

#### Traslazione
Si somma al punto il vettore di traslazione 
$$
\large
\begin{bmatrix}
s_x & 0 & 0 \\
0 & s_y & 0 \\
0 & 0 & s_z
\end{bmatrix}
\begin{bmatrix}
x \\
y \\
z
\end{bmatrix}
=
\begin{bmatrix}
s_x x \\
s_y y \\
s_z z
\end{bmatrix}

$$

#### Scale
Espressa con una moltiplicazione matrice-vettore
Per scalare in un punto generico: traslare prima il punto all'origine, scalare, traslare al contrario per riportarlo dov'era. 

#### Rotation
Rotazione 2D: 
$$
\begin{bmatrix}
\cos \theta & -\sin \theta \\
\sin \theta & \cos \theta
\end{bmatrix}
$$



$$
\text{Rotation around } x\text{-axis: }
\begin{bmatrix}
1 & 0 & 0 \\
0 & \cos\theta & -\sin\theta \\
0 & \sin\theta & \cos\theta
\end{bmatrix}
$$

$$
\text{Rotation around } y\text{-axis: }
\begin{bmatrix}
\cos\theta & 0 & \sin\theta \\
0 & 1 & 0 \\
-\sin\theta & 0 & \cos\theta
\end{bmatrix}
$$
$$

\text{Rotation around } z\text{-axis: }
\begin{bmatrix}
\cos\theta & -\sin\theta & 0 \\
\sin\theta & \cos\theta & 0 \\
0 & 0 & 1
\end{bmatrix}
$$
Per la direzione di rotazione: 
![[Pasted image 20250514142716.png#invert|center|500]]

![[Pasted image 20250514142742.png#invert|center|500]]
![[Pasted image 20250514142847.png#invert|center|500]]
#### Combining Transformations 
Rotazione e scala possono essere raggruppate in una matrice usando la moltiplicazione tra matrici
La traslazione non è esprimibile tramite una singola moltiplicazione di matrice. 
#### Coordinate Omogenee
Estensione delle coordinate cartesiane per rappresentare punti nello spazio e applicare trasformazioni geometriche tramite moltiplicazione di metrici. 
Si aggiunge una dimensione in più (componente omogenea)

Con le coordinate omogenee ogni possibile trasformazione è rappresentabile con una singola matrice 4x4. 

##### Esempio: 
Scrivere la matrice che trasla un punto di [1, 2, 0] e poi lo ruota di 90° su asse X. 

##### Soluzione: 
C'è una traslazione quindi sono richieste coordinate omogenee. 

$$
\text{Traslazione: }
\begin{bmatrix}
1&0&0&1 \\
0&1&0&2 \\
0&0&1&0 \\
0&0&0&1
\end{bmatrix}
$$
$$
\text{Rotazione:}
\begin{bmatrix}
1&0&0&0 \\
0&0&-1&0 \\
0&1&0&0 \\
0&0&0&1
\end{bmatrix}
$$
$$
\text{Matrice finale: }
\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
1 & 0 & 0 & 1 \\
0 & 1 & 0 & 2 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{bmatrix}
=
\begin{bmatrix}
1 & 0 & 0 & 1 \\
0 & 0 & -1 & 0 \\
0 & 1 & 0 & 2 \\
0 & 0 & 0 & 1
\end{bmatrix}
$$


#### JSARToolkit marker matrix
La matrice calcolata da JSARToolkit per il marker indica la trasformazione che serve per passare da un oggetto nel sistema di riferimento della fotocamera a una posizione equivalente nel sistema di riferimento del marker. 

![[Pasted image 20250514150242.png#invert|center|500]]

#### Camera projection matrix

Matrice 3x4 che modella come raffigurare un oggetto sullo schermo, visto da una camera con distorsione prospettica. 

Trasforma le coordinate 3D di un punto nello spazio in coordinate 2D sul piano immagine. 

Mappa un punto 3D **Omogeneo** $X =  [X, Y, Z, 1]^{T}$ in un punto immagine 2D $x = [x, y, 1]^{T}$ 
$x$ si ricava con: 
$$
\Large x = PX
$$

$P$ è composta dalla matrice $R$ 3x3 che descrive la rotazione della camera rispetto al sistema di riferimento globale e da $t$ che è il vettore 3x1 che descrive la traslazione (coordinate omogenee)

