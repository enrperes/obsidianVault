# Programmazione e laboratorio

[[Programmazione e laboratorio-info]]
[[Programmazione e laboratorio-pdf]]


---

http://users.dimi.uniud.it/~claudio.mirolo/teaching/programmazione/presentations/introduzione/start.html
2022-10-07
#### Espressioni
Superficie totale di un cilindro 
$(2 \pi r^2) + 2\pi r$

-> $2 \cdot \pi \cdot r \cdot (r+h)$ 

---
## Scheme
![[8C49591B-8A2A-490B-8180-099BB148A01F.jpeg|450]]

Language: Intermediate Studente with Lambda 

###### Espressione che calcola la superficie totale di un cilindro. 
```scheme
(*(*(*2 3.1415)5.0)(+ 5.0 11.8))
=
(* 2 3.1415 5.0 (+ 5.0 11.8))
```
= 527.7
https://replit.com/@enrperes/First-Test


###### Espressione che declini al plurale i sostantivi della lingua italiana

```scheme
(string-append (substring "protiro" 0 (- (string-lenght "protiro") 1)) "i")
```

![[Untitled_Artwork.png|400]]

string-append ha 2 argomenti
Substring ha 3 argomenti: Stinga; a partire dal carattere n; 

