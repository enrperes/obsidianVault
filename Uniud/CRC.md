(CRC)

Controllo ridondanza ciclica (4byte) 
Consente alla scheda di rete di rilevare presenza di errori nei bit dei frame



**Funzionamento**
• Consideriamo N bit costituenti i dati D da trasmettere e 
supponiamo che sorgente e destinazione si siano accordate su una
stringa dir + 1 bit, conosciuta come generatore, che indicheremo
con G.
• Dato un blocco di dati, D, il mittente sceglierà r bit addizionali, R, e
li unirà a D in modo da ottenere una stringa did + r bit che,
interpretata come numero binario, sia esattamente divisible per G
(nell'aritmetica modulo 2). Il processo di controllo del CRC è
semplice: se la divisione (d + r)/G ha un resto diverso da O, il
ricevente sa che si è verificato un errore; altrimenti i dati sono
accettati come corretti.

![[DF3AFE9F-1779-458E-8FA1-A7CA09C34203.jpeg]]

#todo 

