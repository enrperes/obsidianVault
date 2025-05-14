[[info - Realtà aumentata]]

[[Domande per esame]]
# Intro to basic AR concepts

> [!abstract]+  **AR** 
 > Realtà aumentata = tecnologia che sovrappone elementi digitali (immagini, video, modelli 3d) al mondo reale in tempo reale attraverso dispositivi come tablet, visori, occhiali smart. 
 > Obiettivo = arricchire la percezione sensoriale senza sostituire l'ambiente fisico ma integrandolo. 
 > > **Interactive**, experience of a real-world environment where the objects are enhanced by CGI, including visual, auditory, haptic sensory.
 
| AR  | Augmented Reality | Sovrappone contenuti digitali al mondo reale che rimane visibile                            |
| --- | ----------------- | ------------------------------------------------------------------------------------------- |
| VR  | Virtual Reality   | Sostituisce completamente il mondo reale con un ambiente simulato. Immersivo e interattivo. |
| MR  | Mixed Reality     | Combina elementi reali e virtuali che interagiscono tra loro in real-time                   |
| ER  | Extended Reality  | Include AR, VR, MR.                                                                         |

L'esperienza può essere: 
- Diretta (Occhiali smart, visori, HUD)
- Indiretta (attraverso schermi, tablet, smartphone)
### Milgram's Virtuality Continuum (1994)
Il modello Virtuality Continuum di Milgram rappresenta uno spettro continuo tra il mondo reale e il mondo virtuale. Ogni esperienza si colloca su questo asse in base alla quantità di contenuto digitale che incorpora. 
![[Pasted image 20250513164253.png#invert|center|700]]
Modella solo la quantità di elementi virtuali aggiunti alla scena. Non tiene conto della rimozione di modelli o altre alterazioni. 
Viene quindi riformulato aggiungendo una seconda dimensione (mediality) che tiene conto del numero di modifiche effettuate. 
![[Pasted image 20250513164508.png#invert|center|500]]
Asse x (V): realtà <-> virtualità 
Asse y (M): medialità: quanto il sistema interviene o filtra la percezione del mondo. 

Quindi nei quattro quadranti si trova: 

Mediated Reality | Mediated Virtuality 
Augmented Reality | Augmented Virtuality 

Stessi concetti si possono applicare all'audio: 

Audio Augmented Reality (AAR): Active Noise Canceling 

## Architecture of an AR system

L'user interagisce in qualche modo con il sistema AR (proprietà fondamentale)
- Direttamente: GUI, Gestures, Vocal...
- Indirettamente: Motion, Orientation...

Le interazioni con il mondo reale vanno rilevate in qualche modo usando sensori: 
- Movimento: GPS, accellerometro 
- Orientamento: bussola, giroscopio. 

![[Pasted image 20250513170256.png#invert|right|300]]
Fiducial Markers: pattern specifici usati come placeholder per l'AR. (contrasto alto, forme nette). Interazione indiretta spostando la telecamera nello spazio. 

Stesso concetto in situazioni "markerless" dove il sistema riconosce feature naturali nei pattern delle immagini catturate. 

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

Il video viene simulato oppure catturato in diretta con la webcam, con WebRTC API. 

Due progetti demo: 
1. usando `jsartoolkit.js`, una libreria JS da usare con Fiducial Markers. 
2. Usando AI per trovare le natural features con MediaPipe library. 

![[Pasted image 20250514103432.png#invert|center|800]]


#  Simple web based AR application

## WebRTC: Real world data
Tecnologia opensource che permette le comunicazione real time (audio video) nel browser 
Tra le principali API:
- ⭐️`getUserMedia()` chiede al browser l'accesso a webcam e microfono e ritorna uno stream media. 
	- ![[esempio getUserMedia]]
- `RTCPeerConnection()` crea e gestisce la connessione peer-to-peer. 
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

Step per rilevamento matrix marker: 
1. Conversione grayscale
2. tresholding (contrasto)
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

![[Pasted image 20250514112416.png#invert|right|300]]
![[Pasted image 20250514112459.png#invert|left|300]]


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
L'osservatore è posizionato at infinity e i light rays sono paralleli (Ortographic View)
Linee parallele nel mondo 3D rimangono parallele, non c'è distorsione.
Utile per mostrare le relazioni tra oggetti nello spazio, perchè non c'è distorsione. 

## Canvas e 3D

HTML 5 supporta 2D con `canvas`. il 3D è accessibile con le API wi WebGL. 

WebGL made easy: Three.js. 

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
