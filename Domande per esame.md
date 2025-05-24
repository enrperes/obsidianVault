---
author: Enrico
---
> [!question] Caratteristiche di **HTML 5** usate per il progetto
> - Canvas crea una superficie di disegno bitmap, renderizzabile in 2D tramite API JS o 3D con WebGL. 
> - getUserMedia() è parte dell'API MediaDevices introdotta con HTML5. 
> - tag `<video>, <audio>` per media nativi nel browser 
> - `<svg>` 

> [!question] Come viene rappresentata internamente da un eleboratore un'immagine vettoriale 2D?
> Come una matrice di pixel, ognuno con un valore RGB (o RGBA). A differenza delle immagini vettoriali, in seguito a trasformazioni (Rotazione, Traslazione, Scala) c'è perdita di informazione. 

> [!question] Cosa rappresentano nella grafica 3D i concetti di geometria e materiale di un oggetto? 
>  Nella grafica 3D, le mesh sono composte dalla geometria e dal materiale. La geometria è l'insieme di punti, edge e faces che compongono l'oggetto ( nel caso di modellazione poligonale) e l'insieme di formule matematiche che descrivono la forma dell'oggetto nel caso di modellazione NURBS. 
> Il materiale può essere dato da un insieme di valori RGB o HEX applicati alla geometria, oppure da un insieme di texture mappate sulla geometria in base alla sua mappa UV. 

> [!question]  In che modo è possibile ruotare un oggetto 3D attorno a un asse generico V giacente nel piano XZ avendo a disposizione le trasformazioni di base (traslazioni, rotazioni, cambiamenti di scala)
> 1. Traslare l'oggetto in modo che l'asse V passi esattamente per l'origine (0,0,0)
> 2. Ruotare l'oggetto intorno all'ase verticale Y fino a quando l'asse V, giacente sul piano XZ, non coincide con l'asse X. 
> 3. Con l'asse V allineato a X e passante per l'origine, eseguire la rotazione intorno all'asse X (che coincide con V)
> 4. Ripetere al contrario le operazioni di rotazione e traslazione, per riportare l'oggetto nella posizione originale. 

> [!question] Esercizio su matrice che opera traslazione, cambiamento di scala, trasformazione (scrivere le matrici in base alle operazioni date)
>

> [!question] Differenza tra sistemi basati su marker fiduciali e sistemi markerless
> 

- In che modo è possibile ruotare un oggetto 3D attorno a un asse V giacente nel piano XY e pasante per l'origine, avendo a disposizione le trasf. di base
- Altro esercizio su matrice che modella una traslazione, cambiamento di scala, trasformazione. 
- Perché la triangolazione è importante nella grafica 3D?
>[!question] Perché l'uso di effetti speciali nei film non è un esempio di realtà aumentata
> Perché pur trattandosi di elementi digitali aggiunti alla realtà, non consiste in un'esperienza interattiva in real-time. 

> [!question] Differenza tra VR e AR
> - La realtà virtuale si riferisce a un sistema in cui l'utente può immergersi e interagire in un ambiente totalmente virtuale. è un'esperienza che coinvolge soprattutto vista e udito ma anche il tatto, ad esempio nei simulatori di guida. 
> - Il livello di immersione può essere diviso in 3 cat: 
> 	- Basso: attraverso uno schermo del pc (videogame)
> 	- Parziale: sempre attraverso schermo ma con feedback tattile (simulatore)
> 	- Totale: HMD
> - La realtà aumentata è un sistema in cui l'utente interagisce con il mondo reale, che viene "aumentato" in tempo reale dall'aggiunta di elementi digitali. 


> [!question] Architettura di un sistema AR: in che senso l'**interazione** può essere diretta o indiretta? E la **visione?**
> - La fase di interazione utente-sistema prevede la rilevazione di input tramite controller o sensori. 
> - è considerata diretta quando l'utente interagisce con GUI, joystick...  e indiretta quando i segnali arrivano al sistema tramite rilevamento di sensori come  giroscopio, accelerometro... Quindi quando l'utente interagisce prima con il mondo reale e indirettamente con quello virtuale. 
> - La visione del mondo reale è diretta quando avviene attraverso gli occhi (tramite occhiali o lenti) 
> - Visione indiretta quando avviene attraverso uno schermo, come nei visori smart (Apple vision pro)

> [!question] Differenza tra sistemi di riferimento Left handed e right handed
> ![[Pasted image 20250524103016.png#invert|center|300]]
> Riguarda l'orientamento dell'asse Z a partire da X e Y.
> X pollice, Y indice e il medio indica la Z, che è fuori dallo schermo per right handed e dentro lo schermo per left handed. 

> [!question]  In cosa consiste una proiezione assonometrica? A che distanza è posizionato l'osservatore dall'oggetto osservato? 
> - Consente di rappresentare oggetti 3D in 2D senza alcuna distorsione prospettica. Le linee parallele nell'oggetto 3D rimangono parallele nella sua rappresentazione 2D. L'osservatore è posizionato a distanza infinita dal piano di proiezione e le linee di proiezione (i raggi di luce) sono paralleli. 


>[!question] Collocare sull'asse di Milgram le applicazioni di realtà aumentata, virtualità aumentata, realtà virtuale
> ```mermaid
> graph LR
>     MR["Mondo reale"]
>     RA["Realtà aumentata"]
>     VA["Virtualità aumentata"]
>     MV["Mondo virtuale"]
> 
>     MR --> RA --> VA --> MV
> ```
> tra il mondo reale e il mondo virtuale c'è la *realtà mixata*. 

> [!question]+  differenza tra sistemi con marker fiduciari e markerless:
> I sistemi basati su marker fiduciari sfruttano dei disegni creati artificialmente per stabilire la posizione della telecamera nello spazio. I Maker possono essere di diverso tipo:
> - Pattern markers 
> 	- Con un bordo nero spesso, contengono un semplice disegno / forma all'interno, descritta nel file patt
> - Matrix markers
> 	- Simili a codici QR, vengono decodificati e contengono un ID univoco
> - NFT markers 
> 	- Non codificati in modo binario, contengono un'immagine facilmente riconoscibile. 
> I sistemi markerless funzionano in modo simile: 
> Non fanno riferimento a marker artificiali ma sfruttano le feature naturali dell'immagine per capire l'orientamento della camera. vantaggi: qualsiasi oggetto può diventare un marker, a patto che abbia un materiale con feature riconoscibili. Svantaggi: le feature possono cambiare con l'inclinazione e i cambiamenti di luce ed è più propenso ad errori. 
 
> [!question]+  JSARToolkit 
 > La fase di tresholding (sogliatura) consiste nel modificare l'immagine in modo da rilevare meglio il marker fiduciario. L'immagine viene convertita da RGB in binaria. Il valore di tresholding indica la soglia sopra la quale un pixel diventa bianco o nero. è importante trovare il giusto bilanciamento che permetta di visualizzare correttamente il marker. 

 > [!question]+  Una telecamera osserva due oggetti alti 1m. Uno è a 10m dalla telecamera, l'altro a 20m. Come vengono visualizzati da telecamera assonometrica? e prospettica? 
> assumendo che siano posizionati frontalmente rispetto alla camera, risultano uguali e indistinguibili. 
> Infatti l'osservatore è posizionato a distanza infinita e i raggi di luce sono paralleli, quindi non c'è distorsione prospettica. 
> In una telecamera prospettica quello vicino è più grande.  
 
> [!question]+  Geometria e materiale di un oggetto 3D
> Nel mondo 3D una *mesh* è un oggetto che è caratterizzato da materiale e geometria. 
> La geometria consiste in un insieme di punti e vertici (e facce) se modellato in modo poligonale, altrimenti un insieme di equazioni che ne descrivono la sup. 
> Il *materiale* può essere composto da un'immagine che viene mappata sull'oggetto a seconda della mappatura UV e da un insieme di proprietà che descrivono come la superficie riflette la luce: 
> roughness, metallic, transmission...
> 

> [!question]+  Campi applicativi della realtà aumentata
> - Commercio (app ikea) 
> - Intrattenimento (filtri instagram)
> - Turismo (app musei interattivi)
> - Gaming (giochi in ambiente reale (pokemon))
> - Medicina (tool di precisione mostrano dove operare) 
> - Sport (grafiche overlay mostrano dati e statistiche nel campo)
> - Navigazione (indicano la strada)

