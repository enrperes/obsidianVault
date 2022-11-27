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

#### Indicatori di occorrenza
> per definire la numerosità degli elementi contenuti nell'elemento dichiarato. 

Gli indicatori di occorrenza sono: 
> +
> *
> ?

Se il nome di un elemento è senza simboli di occorrenza deve apparire **una sola volta:** 
`<!ELEMENT addres-book (entry)>` 
Un elemento seguito da ==+== deve apparire **una o più volte:** 
`<!ELEMENT address-book (entry+)>`
Un elemento seguito da ==*==  deve apparire **zero o più volte:** 
`<!ELEMENT address-book (entry*)>`
Un elemento seguito da ==?== deve apparire **zero o una volta:** 
`<!ELEMENT address-book (entry?)>` 

#### Indicatori d'ordine 

>   `,`  
>   `|` 

Per definire l'ordine degli elementi 
`,` permette di definire una sequenza di elementi **(l'ordine conta)**
`<!ELEMENT address (street, city, state)>` 

`|` permette di definire elementi da inserire in alternativa : 
`<!ELEMENT address (street | city | state)>` 
Si può solo inserire uno dei tre elementi. 

è possibile usare le parentesi per raggruppare elementi in expr: 
`<!ELEMENT name (Lname, (Fname | title))>`

--- 
Scrivere .dtd per XML di address-book. 
## XML
```xml
<address-book>
    <entry>
        <name>Jack Smith</name>
        <tel>513-555-3465</tel>
        <email address='jsmith@email.com'></email>
    </entry>
    <entry>
        <name>John Doe</name>
        <address>
            <street>34 Fountain Square Plaza</street>
            <region>Cincinnati, OH</region>
            <postal-code>45202</postal-code>
            <country>US</country>
        </address>
        <tel>513-555-8889</tel>
        <tel>513-555-7098</tel>
        <email address='jdoe@email.com'></email>
    </entry>
</address-book>
```
## DTD
```xml
<!ELEMENT address-book (entry+)>
<!ELEMENT entry (name, address?, tel+, email*)>
<!ELEMENT name (#PCDATA)>
<!ELEMENT address (street, region, postal-code, locality?, country)>
<!ELEMENT tel (#PCDATA)>
<!ELEMENT email EMPTY>
<!ELEMENT street (#PCDATA)>
<!ELEMENT region (#PCDATA)>
<!ELEMENT postal-code (#PCDATA)>
<!ELEMENT locality (#PCDATA)> 
<!ELEMENT country (#PCDATA)>
<!ATTLIST email address CDATA #REQUIRED>
```

### Dichiarazione di attributi 

`<!ATTLIST nome_elemento nome_attributo tipo_attributo uso_attributo>` 
- nome_elemento è il nome dell'elemento in cui l'attributo si può usare
- nome_attributo nome attirbuto
- tipo_attributo informazioni su attributo
- Uso_attributo informazioni su utilizzo attributo 

`#REQUIRED`  -> valore attributo deve essere inserito nel documento 
`#IMPLIED` -> attributo opzionale non va fornito valore default
`#FIXED` -> "val" -> il valore dell'attributo è sempre "val" 
`"val"` -> se omesso attributo assume valore "val"

#### Tipi di attributi
 - CDATA
	 - il valore è una sequenza arbitraria di caratteri. (senza cancelletto)
- ID
	- identificatore univoco per l'attributo, il valore è un nome che deve essere unico nel documento. 
- IDREF
	- contiene il riferimento all'attributo ID di un elemento nel documento 
- IDREFS
	- Contiene riferimento a più attributi ID di elementi nel documento 
- NMTOKEN
	- Name Token, il valore dell'attributo è una parola senza spazi che può contenere lettere, numeri e simboli 
- NMTOKENS
	- Il valore dell'attributo deve essere uno fra i 
#todo 


`<!ATTLIST tel preferred (true | false) "false">`


#### Playlist
##### XML
```xml
<?xml version="1.0" ?>
<!DOCTYPE playlist SYSTEM "Playlist.dtd">
<playlist>
    <track id="t01" genre="rock">
        <title>Anchor</title>
        <artist>Skillet</artist>
        <album>Victorious</album>
        <file src="anchor.mp3">
            <encoding>MP3</encoding>
            <bitrate>160kbps</bitrate>
        </file>
    </track>
    <track id="t02">
        ...
    </track>
    ...
</playlist>
```
##### DTD
```xml
<!ELEMENT playlist (track+)>
<!ELEMENT track (title, artist+, album?, file)>
<!ELEMENT title (#PCDATA)>
<!ELEMENT artist (#PCDATA)>
<!ELEMENT album (#PCDATA)>
<!ELEMENT file (encoding, bitrate)>
<!ELEMENT encoding (#PCDATA)>
<!ELEMENT bitrate (#PCDATA)>
<!ATTLIST track id ID #IMPLIED genre (rock | pop | jazz) "other">
<!ATTLIST file src CDATA #REQUIRED>
```

`<!ATTLIST track id ID #IMPLIED` -> id è di tipo ID.  IMPLIED = attributo opzionale, non serve un valore default. 

### Dichiarazione di entità 
`<!ENTITY nome_ent "valore_ent">`
- Ogni occorrenza di nome_ent; nel contenuto viene sostituita dal valore_ent
- + possibile usare eneità definire esternamente con `<!ENTITY nome_ent SYSTEM "path con https://...">`

### Collegare un XML a un DTD
Nel documento XML: 
`<!DOCTYPE elemento_radice DTD>` 

SI può verificare la validità di un file XML con validatori online o direttamente su Visual Studio. 


