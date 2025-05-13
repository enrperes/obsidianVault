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




#  Simple web based AR application

