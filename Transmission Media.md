# Transmission media
Cables divided in three types: 
- ###### Twisted pair 
	- twisted to prevent interference. 
	- rj45 connector (ethernet)
- ###### Coaxial 
	- central conductor surrounded by insolitor material + copper mesh + insulation2. Very resistant. 
- ###### Fibre
	- Mad from glass / plastic with small silicone core. 

Also divided between Guided Media and Unguided Media 
##### Guided Media 
###### Twisted pair 
10mbps to 10gbps. Used in LAN and telephone lines, can carry voice and data signals. Uses copper insulated wires, twisted to reduce interference. 
UTP = Unshielded Twisted Pair 
STP = Shielded Twisted Pair 
It's inexpensive and easy to install
Unsuitable for long distances
###### Coaxial cable (coax)
10mbps to 100mbps
Used for video transmission for televisions and long distances lines. 
Single copper wire covered by insulated layers. 
Copper mesh used to protect from electromagnetic waves. 
Used for High frequency signals. 
Very robust but expensive
###### Fiber Optics
100gbps+ 
Used for internet or long distance communication. Signal is light. 
Fine glass strands surrounded by glass and protective layer. 
Low signal loss, very fast, no interference. 
Very expensive and fragile.
- **Single Mode**: smaller core, more expensive, for longer distances due to the low attenuation. 
- **Multimode**: Bigger core, attenuation is higher, suitable for shorter distances, <400m. Can transmit more light signals. 


##### Unguided Media
(Wireless media)
###### Microwave
1mbps to 10gbps 
used for high speed transmission 
send via microwaves from ground based transmitting and receiving stations. 
Repeaters are needed every 50km. 
Cannot pass through obstacles and only limited bandwidth. 
###### Radio wave
1mbps - 10mbps 
AM and FM radio transmission, cordless phone. 
long distances, receiver needs antenna to receive the signal. 
Bluetooth. 
######  Cellular 
4G. 10mbps - 1gbps. Used in cellular telephones. Uses high frequency radio waves. Requires complex infrastructures. 
######  Infrared 
up to 1gbps - 115kbps bandwidth 
Uses infrared light. 
Line Of Sight transmission and limited bandwith. 
######  Satellite
1mbps - 10gbps
Used for global communication. Communication satellites orbit around the Earth receive microwave signals and retransmit them back amplified. Data transfer speed is very high. 
Earth -> satellite = uplink 
Satellite -> Earth = downlink 
very expensive 

---

#### Transmission Media Parameters
##### Attenuation: 
###### $A=20 \cdot Log_{10} \cdot (\dfrac{V_{in}}{V_{out}}) \;\;\;[dB]$

(Input voltage / Output voltage)
Attenuation in a coaxial cable is a function of the materials anche the construction. 

##### Cross-talk 
###### $XT=20 \cdot Log_{10} (V_1/V_2) \;\;\; [dB]$
A signal transmitted on one circuit of a transmisssion system creates an undesired effect in another circuit or channel. Often caused by undesired capacitive, inductive, conductive coupling from one circuit to another. It's a significant issue in audio electronics, integrated circuit dsign, wireless communication etc. 
Unshielded twisted pair are much more affected. 

##### Bandwidth (signal processing)
>Bandwidth is **the data transfer capacity of a computer network in bits per second (Bps)**.

> Difference between the upper and lower frequencies in a continuous band of frequencies. Measured in Hertz. 

### Multiplexing 
#### MUX
Process of consolidating multiple signals (channels) digital or analog, into a single composite signal, transported over a single medium. Performed at [[Computer Networks#4-Transport|Layer 4]] ![[378FC133-70DA-45BB-BDAD-F5B70FCFA574.png|300]]
#### DMUX 
Demultiplexing: the opposite process.
