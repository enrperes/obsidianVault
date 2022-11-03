[[5-XML.pdf]]

> eXtensible Markup Language 

Linguaggio formale che permette di specificare come comporre un documento 
Le informazioni sul significato sono fornite tramite annotazioni in **Markup**
L'insieme dei tag può essere esteso
XML è un meta-linguaggio: è un linguaggio per la costruzione di linguaggi di **markup** più specifici, come HTML 

#### XML non è
- Un linguaggio di presentazione come SMI, SVG, HTML 
	- Non fornisce info sullo stile della presenttazione
- Un linguaggio di programmazione
	- Non effettua nessun tipo di computazi9ne
- Un protocollo di trasmissione (HTTP) 
	- Non fornisce indicazioni su come trasferire info attraverso la rete
- Database Management System come MySQL, Oracle... 
	- non fornisce funzioni per archiviazione e recupero di dati. 

## Elementi

Sono contenitori che incapsulano altri elementi intesi come stringhe di caratteri 

XML è **CASE SENSITIVE**. 

File XML per descrivere una playlist musicale: 
```xml
<playlist>
	<track id="t01" genre="rock">
		<title>Marisi</title>
		<artist>Cantoma</artist>
		<album>Essentials</album>
		<file src="marisi.mp3">
		<encoding>MP3</encoding>
		<bitrate>160kbs</bitrate>
	</file>
</track>
```

I caratteri possono essere sostituiti dal rispettivo codice UNICODE (formato decimale o esadecimale )
` à = &#x00E0 ` La codifica UNICODE è dichiarata in testa al file: `<?XML version = "1.0" encoding="ISO-8859-1" standalone="yes"?>` Non obbligatoria ma consigliata. 
i ==commenti== hanno la forma: `<!-- commento --> `  
### Documento XML ben formato 
- Ogni tag di inizio ha un tag di finie
- I valori degli attributi sono delimitati da apici o doppi apici 
- Un elemento non può avere due attributi con lo stesso nome
- Gli elementi sono correttamente annidati
- **C'è un solo** "elemento radice"
	- Radice = primo elemento del documento 
	- Rami = sottoelementi che hanno elementi figli 
	- Foglie = elementi che non contengono altri elementi 

2022-11-03 10:35

## DTD = Document Type Definition -> file.dtd   


Dichiara come un documento XML deve essere scritto: quali attributi si possono usare, che contenuti possono avere...
Se un documento rispetta le regole di un DTD si dice ==valido== rispetto al DTD. 
#### Composizione DTD
- Formato da una lista di dichiarazioni
- Ogni dichiarazione è relativa ad un oggetto contenuto nel file XML
- **Ogni oggetto del file XML va definito**
- Il DTD segue una sintassi ben definita. 

##### Dichiarazione elementi 
` <!ELEMENT nome_elemento contenuto_elemento> ` Contenuto_elemento specifica il tipo del contenuto: **vuoto, testo o altri elementi.** La parola chiave **ANY** permette di avere qualunque altro elemento dichiarato. Testo o EMPTY non valgono. 
(expr) dichiara un elemento che deve contenere altri elementi in un certo ordine e numero definiti dall'**espressione regolare** ==expr==

```xml
--- dtd
<!ELEMENT email EMPTY> 
--- xml: 
<email> </email> 
<email> email@gmail.com </email> ;; Non corretto! (perchè è emtpy)
```

Dichiarazione elemento email: 
` <!ELEMENT mail (#PCDATA)>` dichiara un elemento che può contenere solo testo. 


