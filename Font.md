
# Risorse Multimediali - Parte 1
2022-10-20 10:30


[[Risorse Multimediali - Parte 1.pdf]]

## Digitalizzazione: 
Processo di conversione da *analogico* a *digitale*. Da valori continui a valori discreti. 
La conversione porta una perdita di informazioni: spesso non percettibili. 

Testi alfanumerici sono costituiti da elementi atomici discreti. (in codice ==ASCII==)
C'è una **legge di corrispondenza** (codice) tra i caratteri astratti (alfabeto) e un insieme di configurazioni di bit (codici binari) 
Per codificare un alfabeto da 200 caratteri servono 8 bit: 2^8 = 256 > 200.


## ASCII
*American Standard Code for Information Interchange*  (1963 da ANSI)
è un codice per codifica dei caratteri 
Si usano ==7 bit== (0-127)
non 8 perchè i primi 32 codici numerici sono per i caratteri di controllo: 
- Carriage return, line feed, backspace, cancel, escape... 
- 127 = delete
**Extended ASCII** Si usano *8 bit* (estende ASCII ai caratteri usati in europa occidentale)

### UTF-8
Unicode Transformation Format è la codifica principale di **Unicode** per internet e W3C. 
Assegna un numero univoco ad ogni carattere usato per la scrittura di testi. 
www.home.unicode.org
Usa da **1 a 6 byte** per rappresentare un carattere.  è retrocompatibile con la codifica ASCII 
UTF-8: 127 caratteri (ASCII standard)
UTF-16: 2^11 caratteri (estensioni ASCII, alcuni ideogrammi)
I primi 128 sono lo standard ASCII.
UTF è la codifica di caratteri più diffusa.

>[!danger]+  Microtipografia
>Riguarda le famiglie di caratteri 
>ogni carattere astratto deve essere associato a una specifica rappresentazione grafica visiva: **==glifo==**
>I glifi sono memorizzati come mappe di **bit** (**raster**) o in forma vettoriale (**vector**)
>La corrispondenza caratteri - glifi è data dal **==font==**

## Font

Corrispondenza *triangolare* tra: 
- Carattere Astratto (es. T)
- Codice numerico ASCII (es. 84)
- Glifo (es. *T*)

#### Famiglie di typeface
- **Roman**
	- Caratteri che hanno dei trattini di completamento nel glifo (dette grazie) -> serif. Usati per stampa su carta. 
- **Gothic**
	- Comprende i **sans serif**. Caratteri detti bastoni, usati per visualizzazione a schermo.
- **Script**
	- Caratteri che limitano l a scrittura a mano libera
- **Blackletter**
	- Caratteri ispirati a manoscritti antichi

#### Attributi grafici del glifo
- Dimensione del carattere
- Larghezza del carattere
- Spessore del tratto
- Inclinazione del tratto

Le dimensioni dei caratteri si misurano in punti. Un punto corrisponde a 1/72 inch. 1 inch = 2.54cm

#### Mesotipografia
> Configurazioni di glifi in linee e blocchi di testo 

- **Spacing**
	- spazio fra lettere
- **Kerning**
	- Spazio tra coppie di lettere specifiche. Usata per conferire aspetto equilibrato ai carattteri. 
- **justify**
	- lunghezza delle righe di testo
- **Interlinea**
	- Spazio sotto e sopra la riga di testo. 