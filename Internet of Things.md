---
tags:
  - materia
---
[[info - Internet of Things]]

## Lezione 1 - Intro
### Origini
Termine coniato da Kevin Ashton nel 1999. Usa il termine per descrivere il collegamento di oggetti a internet tramite RFID
In realtà nasce ancora prima. 
Tra le prime invenzioni ci sono: 
- Codice a barre 
- Wearable computer 
- Head mounted display (bike simulator)

Nel 1969 nasce ArpaNet, precursore di internet. 1973 nasce RFID passivo, leggibile e scrivibile. 

> [!abstract]+  **Definizione** 
 > IoT is a system of interrelated computing devices, mechanical and digital machines, objects, animals or people that are provided with unique ids (UIDs) and the ability to transfer data over a network without requiring human-to-human or human to computer interaction. 
 
 ### "Things"
 Caratteristiche: 
 1. Devono avere un ricevitore / trasmettitore 
 2. Devono possedere un IP univoco
 3. Devono essere dotati di un sensore o di HW che svolge qualche compito 
 4. Deve avere la capacità di Store-and-forward (mem interna)
 5. Low-power e low-bandwith
Quindi possono essere anche entità animate dotate di impianti. 

## Lezione 2 - GPS 
Sensore: ricevitore GPS 
Procedura: 
- Connessione al sensore tramite porta USB (seriale) oppure simulazione software del sensore
- Lettura dati in formato **NMEA 0183**
- Parsing dei dati per estrazione delle informazioni di interesse
- Logging dei dati su filesystem
- Creazione di un **socket** server multi thread per la diffusione delle informazioni di interesse in formato JSON
- Utilizzo delle API di Google Maps per visualizzare su mappa la posizione rilevata. 

#### Lettura dati 
Usando Python con modulo pySerial si accede alla porta seriale (USB) e si leggono i dati. 
#### Emulazione
![[Pasted image 20250318161542.png#invert|center|500]]

### Formato NMEA
National Marine Electronics Association. 
Solitamente usato da ricevitori GPS (in versione 0183 o 2000). Standard di comunicazione fra dispositivi a bordo di veicoli marini

Ci interessano due tipi di dati: 
GNRMP: Presenza simultanea di più costellazioni GNSS.
GPRMC: Usa solo una connessione a GPS. 
#### Salvataggio dati
Conviene implementare il salvataggio in un thread separato, entra in funzione periodicamente ogni x secondi prendendo i dati da scrivere dalla lista (struttura dati) 

### API di Google Maps
Con Xampp si costruisce una piccola webapp che si connetta alla socket per recuperare le coordinate dell'oggetto. 


## Lezione 3 - Applicazioni

**Dispositivi (smart devices):** con sensori, ricevitori/trasmettitori, raccolgono e inviano dati. 
**Network Backbone** collega i componenti
**Applicazione software** elabora i dati e prende decisioni

### Sensori vs Attuatori
Sensori $\Large \to$ input, monitora
	- Semplici o composti
Attuatori $\Large \to$ Output, modifica
![[Pasted image 20250318163048.png]]

## Lezione 4 - Pubblicazione (comunicazione) dati 

I dati vengono scritti in un socket server, tramite UDP o TCP. 
Le socket sono usate come meccanismo di comunicazione tra sensori e attuatori per inviare i dati al server. Metodo di basso livello difficilmente espandibile. 

In Python, occorre importare `socket`.

### MQTT Message Queueing Telemetry Transport
Protocollo leggero che si fonda su TCP/IP. 
Entità coinvolte sono: 
- **Broker** 
	- Intermediario centralizzato 
	- Server che gestisce il flusso di messaggi. Riceve messaggi dai publisher e li inoltra ai subscriber
- **Publisher**
	- Invia messaggi al broker 
	- Client che invia (pubblica) i messaggi a uno o più topic. Non conosce i destinatari (subscriber) ma invia semplicemente i dati al broker. 
- **Subscriber**
	- Ricevono dal broker solo i messaggi rilevanti. 
	- Client  che si iscrive a uno o più topic per ricevere messaggi di suo interesse. 
Quando il broker riceve un messaggio su un topic a cui il subscriber è iscritto, glielo inoltra. 

I *topic* possono essere semplici (temperatura) o strutturati (casa/cucina/forno/temperatura)


Ogni connessione al broker può specificare una QoS: 
- at most once
	- messaggio inviato una volta e non ci sono conferme 
- At least once
	- Si riprova a inviare il messaggio fino quando non viene ricevuto correttamente 
- Exactly once
	- C'è garanzia che il messaggio venga ricevuto una sola volta. 


Il broker usato è Eclipse Mosquitto, ideale per piccoli progetti e prototipi. 
mosquitto.org/download

## Lezione 5 - Architettura e Protocolli
