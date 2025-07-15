[[Pasted image 20250704103652.png]]

Video-to-rig: https://move.ai

Images to 3d model: https://3d.hunyuan.tencent.com/ (Character & borsone)

Sedia arbitro: https://www.ethimo.com/it/collezione/ace

Materiali: https://polyhaven.com

---

## Animazione
1. Ho caricato il video su move.ai e ho scaricato il rig in formato .fbx
2. Lungo lavoro di pulizia dell'animazione
	1. Nel Graph editor, usando operazioni come Smooth, Bake, proportional editing... 
	2. Alcune parti sono state animate manualmente (specialmente le braccia) 

## Character
1. Ho scattato 4 foto di me stesso (frontale, laterali, da dietro) e poi le ho caricate su hunyuan.com per la generazione del modello 3d.
2. Scaricato il modello in formato .glb
3. Fase di pulizia della geometria: 
	1. remesh, per avere topologia quads (con addon Quad Remesher) 
	2. Bake della texture del modello originale su quello "remeshato"
	3. Pulizia della texture (Texture paint): alcune parti erano state renderizzate male dall'AI. 
4. Assegnamento del rig al modello (con automatic weights) 
5. La racchetta è in relazione con la mano destra tramite un Constraint "Child of"

## Pallina
1. Modellata partendo da una sfera UV, tagliata a metà e ruotata. 
2. la peluria è realizzata con due particle systems, uno per i peli corti e uno per quelli lunghi 
3. Come per la racchetta, inizialmente è attaccata alla mano sinistra con un Constraint "Child of". 
4. Viene poi disattivato con un keyframe ed entra in gioco l'animazione "manuale", con keyframe su posizione e rotazione aggiunti manualmente
5. Poco dopo il primo rimbalzo, si attiva il **Rigid Body** con il keyframe su Animated, così può rimbalzare contro il muro posteriore e il terreno. 

## Tubi
1. Modellati partendo da un cilindro 
2. Hanno, come la pallina, il **Rigid body** attivo. 
3. Le collisioni avvengono con il campo, rigid body di tipo passivo. 

## Rete / Recinzione
Setup in Geometry Nodes per creare sia la rete del campo che le recinzioni intorno. 
Funzionamento GN: 
- Viene creato il nastro dalla primitiva *Curve Line* + *Resample Curve*. 
- Viene salvato l'attributo Factor con *Store Named Attribute* per poterlo usare dopo. 
- La forma del nastro è ottenuta con un *Curve to mesh*, con profilo una primitiva *Quadrilateral* + *Fillet Curve*. 
- La curva originale del nastro viene duplicata con *Duplicate Elements*. Il *Set Position* sposta le righe duplicate verticalmente, di un valore pari al duplicate index diviso il parametro di densità verticale. 
- Di nuovo vieen salvato l'attributo Factor. 
- Le linee verticali sono istanziate *Instance on Points* sui punti ottenuti dal *Curve to Points* con la curva originale del nastro come input. Il parametro densità verticale è collegato direttamente all'input "Count". 
- I due set di curve vengono uniti da un *Join Geometry* dopo essere passate attraverso un *Set Position* con un noise sull'Offset. 
- Il nastro intero e i due insiemi di curve vengono uniti con un altro JG, e poi un Set position ne modifica l'Offset con il valore curve_factor, precedentemente salvato.
- Questo fattore è stato ottenuto con l'equazione $(\text{factor}-0.5)^{2} \cdot \text{tensione nastro}\cdot -1$, che assomiglia all'equazione di una parabola. 
- I pali di supporto, attivabili con un toggle su uno *Switch*, sono dei cilindri istanziati sui punti generati con un *Curve to Points* partendo dalla curva del nastro, in modo simile alle righe verticali. La distanza tra un palo e l'altro è data dalla lunghezza della rete fratto il valore di distanza, collegato al Count. 

## Luci 
- Modellato un lampione con forme base 
- Posizionato uno, gli altri con Mirror Modifier 
- Per posizionare le luci (Area lights) ho posizionato un vertice singolo (con array modifier) su ogni lampione, poi ho usato la funzione Instancing (vertex) 

## Spalti
- Partendo da un cubo allungato 
- Bevel su un edge con profilo custom "Stairs"
- Poi qualche loop cut per aggiungere dettagli 
- Array modifier per gradini e luci 