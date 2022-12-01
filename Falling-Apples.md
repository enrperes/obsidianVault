## Creazione del ground plane
![[Pasted image 20221201231206.png|500]]
Modificato con **Proportional editing** per creare la collinetta. 
![[Pasted image 20221201231317.png|500]]
Applicazione texture di base tramite l'addon Node Wrangler. Materiale scaricato da polyhaven.com
![[Pasted image 20221201233159.png|500]]

---
## Inserimento modelli da internet 
![[Pasted image 20221201231402.png|500]]
![[Pasted image 20221201231535.png|500]]
![[Pasted image 20221201231702.png|500]]
## Modellazione cassetta 
![[Pasted image 20221201232111.png|500]]
## Erba
![[Pasted image 20221201232219.png|500]]
Inserita tramite l'addon Grasswald GScatter (https://www.graswald3d.com/gscatter) con opzione [Camera Culling](https://docs.blender.org/manual/en/latest/render/cycles/render_settings/simplify.html#culling) attiva. 
## Posizionamento asset manualmente
![[Pasted image 20221201232430.png|500]]
## Camera
![[Pasted image 20221201232517.png|500]]
## Depth of Field
![[Pasted image 20221201232538.png|500]]
Il focus della camera è centrato su un oggetto Empty (cubo)
## Animazione camera
![[Pasted image 20221201232640.png|500]]
## Animazione Mele 
![[Pasted image 20221201232718.png|500]]
Le mele che cadono hanno la proprietà **Rigid body** (*active*), con un keyframe sull'opzione **Dynamic**, sfasato di qualche frame per ogni mela in modo da farle cadere in momenti diversi. 
![[Pasted image 20221201232848.png|500]]
Il ground plane è di tipo **rigid body** *passive*, per permettere alle mele di rimbalzare. Stessa cosa per la cassetta e le altre mele per terra. 

## Illuminazione
![[Pasted image 20221201233055.png|500]]
La luce è gestita da un HDRI

![[Pasted image 20221201233259.png|500]]
La scena finale è così

## Render
![[Pasted image 20221201233345.png|500]]
Le impostazioni del render. 

## Compositing
![[Pasted image 20221201233432.png|500]]
**Glare node** per aggiungere glare, **Lens distortion** per aggiungere abberrazione cromatica**Color Balance** per correggere leggermente i colori. 