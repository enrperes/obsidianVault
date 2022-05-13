[[ComputerNetworks-pdf]]
[[Transmission Media]]

---

- PAN (Personal Area Network)
- LAN (Local)
- MAN (Metropolitan)
- WAN (Wide)
- Internet

###### LAN: 
Communication system between autonomous computers within a limited area (building). Must be reliable with low error rate. 

---
#### Topology

###### Bus topology 
The transmission medium is shared by all devices. 
CSMA/CD Protocol to avoid collisions. (Carrier Sense with Multiple Access with Collision Detection). 
- Ring topology 
- Star topology 
- Tree topology 

---

ARPA (cold war)
Advanced Research Projects Agencyi

plan to create a communication Network which would not be vulnerable to nuclear attacs. 

1969 ArpaNET - connecting computers across the country

Using **Packet Switching approach**: messages broken up into packets, routet across the network. The final point must then reassemble the message. 

1974 -> became TCP (Transmission control protocol)

IP (internet protocol) to ensure packets were delivered to the right destination. 
1982 combined TCP and IP adopted as commmunication standard for different networks. 
Internet became wildly used to describe the concept of a WWN. 
High speed backbone for supercomputers. 

Internet mostly used for University research and defend contractors. Early 1990s also private companies. 
TCP/IP became standard  in 1982 between different networks

E-mails -> mid 1960s 

---
##### Computer vs Mainframes 
Big, powerful, reliable computer. Non scalable. 


### OSI Model 
**Open System Interconnection**

Standard definined by ISO (Internetional Standard Organization)
Aimed at proposing a reference standard for different network designs. So computers belonging to different networks can communicate. 


> _Please Do Not Throw Sausage Pizza Away_

#### 1-Physical 
Responsable for the connection (physical or wireless) between network nodes. It defines the connections between the devices and is responsable for transmission of raw data.
Digital data is converted into an analog signal (signaling). Voltage difference for cables or electromagnetic waves at specific frequency. Frames are seen as bits. 

#### 2-Data-link 
Estabilishes a connection between two nodes on a network. **Breaks packets into frames** and sends them from source to destination. LLC (Logical-link-control) identifies network protocols, performs error checking and MAC (Media Access Control): uses MAC addresses to connect devices and define permissions to send and receive data. 
**MAC Address:** every network device has one (Hardware-coded) Used within a local area network (**LAN**). IP address belongs to layer 3, can be used between remote devices. 
Also checks if there are errors. (CRC)

#### 3-Network
**Breaks up segments into network packets** and reassembles them on the receiving end. It uses network addresses (Logical address = IP. Identifies devices within a Internetwork) to route packets to the destination node. 
Routing = selecting the best route for the packets in the network. Performed by the router. 
Routing tables to store best routes for every IP address. 
[http

#### 4-Transport 
Takes the **data and breaks it into segments**, passed to layer 3. Responsible for reassembling the segments in the receiving end. Error control - check if data is received correctly.
Also handles [[Transmission Media#Multiplexing|MUX and DMUX]]
CONS service: Connection Oriented Network Services:> Reliable data transmission (raccomandata)
CONS = reliable. CLNS (Connection-less network services)-> not reliable. 
#### 5-Session
Creates communication channels (sessions) between devices. Responsible for opening and closing them. Checkpoints: during data transfer if the session is interrupted, devices can resume data transfer from the last checkpoint. 
#### 6-Presentation 
Prepares the data for the application layer. Defines how the devices should encode, encrypt, compress data. Takes data transmitted by the application layer and prepares it for transmission over the session layer. 
#### 7-Application
Used by the end user software (Browser, Email client). Provides protocols that allow software to send and receive information: HTTPS (HyperText Transfer Protocol Secure), FTP (File Transfer Protocol) DNS(Domaing Name System) SMTP(Simple Mail Transfer Protocol)

---

##### Interconnection devices: 
Between sender and receiver device. 

- Network Interface Cart
- Repeater 
- Hub
- Bridge


