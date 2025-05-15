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

- Differenza tra realtà virtuale e realtà aumentata
	- La realtà virtuale si riferisce a un sistema in cui l'utente può immergersi e interagire in un ambiente totalmente virtuale. è un'esperienza che coinvolge soprattutto vista e udito ma anche il tatto, ad esempio nei simulatori di guida. 
	- Il livello di immersione può essere diviso in 3 cat: 
		- Basso: attraverso uno schermo del pc (videogame)
		- Parziale: sempre attraverso schermo ma con feedback tattile (simulatore)
		- Totale: HMD
	- La realtà aumentata è un sistema in cui l'utente interagisce con il mondo reale, che viene "aumentato" in tempo reale dall'aggiunta di elementi digitali. 
- Architettura di un sistema AR: In che senso l'interazione può essere diretta o indiretta? 
	- La fase di interazione utente-sistema prevede la rilevazione di input tramite controller o sensori. 
	- è considerata diretta quando l'utente interagisce con GUI, joystick...  e indiretta quando i segnali arrivano al sistema tramite rilevamento di sensori come  giroscopio, accelerometro... Quindi quando l'utente interagisce prima con il mondo reale e indirettamente con quello virtuale. 
- Differenza tra sistemi di riferimento Left handed e right handed
- In cosa consiste una proiezione assonometrica? A che distanza è posizionato l'osservatore dall'oggetto osservato? 
	- Consente di rappresentare oggetti 3D in 2D senza alcuna distorsione prospettica. Le linee parallele nell'oggetto 3D rimangono parallele nella sua rappresentazione 2D. L'osservatore è posizionato a distanza infinita dal piano di proiezione e le linee di proiezione (i raggi di luce) sono paralleli. 
- Collocare sull'asse di Milgram le applicazioni di realtà aumentata, virtualità aumentata, realtà virtuale. 
