- Caratteristiche di HTML 5 usate per il progetto
	- Canvas crea una superficie di disegno bitmap, renderizzabile in 2D tramite API JS o 3D con WebGL. 
	- getUserMedia() è parte dell'API MediaDevices introdotta con HTML5. 
	- tag `<video>, <audio>` per media nativi nel browser 
	- `<svg>` 
- Come viene rappresentata internamente da un eleboratore un'immagine vettoriale 2D?
	- Come una matrice di pixel, ognuno con un valore RGB (o RGBA). A differenza delle immagini vettoriali, in seguito a trasformazioni (Rotazione, Traslazione, Scala) c'è perdita di informazione. 
- Cosa rappresentano nella grafica 3D i concetti di geometria e materiale di un oggetto
	- Nella grafica 3D, le mesh sono composte dalla geometria e dal materiale. La geometria è l'insieme di punti, edge e faces che compongono l'oggetto ( nel caso di modellazione poligonale) e l'insieme di formule matematiche che descrivono la forma dell'oggetto nel caso di modellazione NURBS. 
	  Il materiale può essere dato da un insieme di valori RGB o HEX applicati alla geometria, oppure da un insieme di texture mappate sulla geometria in base alla sua mappa UV. 
- In che modo è possibile ruotare un oggetto 3D attorno a un asse generico V giacente nel piano XZ avendo a disposizione le trasformazioni di base (traslazioni, rotazioni, cambiamenti di scala)
	1. Traslare l'oggetto in modo che l'asse V passi esattamente per l'origine (0,0,0)
	2. Ruotare l'oggetto intorno all'ase verticale Y fino a quando l'asse V, giacente sul piano XZ, non coincide con l'asse X. 
	3. Con l'asse V allineato a X e passante per l'origine, eseguire la rotazione intorno all'asse X (che coincide con V)
	4. Ripetere al contrario le operazioni di rotazione e traslazione, per riportare l'oggetto nella posizione originale. 
- Esercizio su matrice che opera traslazione, cambiamento di scala, trasformazione (scrivere le matrici in base alle operazioni date)
- Differenza tra sistemi basati su marker fiduciali e sistemi markerless
- In che modo è possibile ruotare un oggetto 3D attorno a un asse V giacente nel piano XY e pasante per l'origine, avendo a disposizione le trasf. di base
- Altro esercizio su matrice che modella una traslazione, cambiamento di scala, trasformazione. 
- Perché la triangolazione è importante nella grafica 3D?
- JSARToolKit: in cosa consiste la fase di tresholding (sogliatura) perchè è importante scegliere un parametro di soglia corretto? 

- Differenza tra una proiezione prospettica e una assonometrica
- Perchè l'uso di effetti speciali nei film non è un esempio di realtà aumentat
- Collocare sull'asse della virtualità di Milgram le applicazioni: AR, AV, VR, 