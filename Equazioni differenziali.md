# Equazioni differenziali
Trova applicazioni soprattutto in fisica e chimica. Sono espressioni che contengono le derivate fino a un ordine $n$ di una certa funzione. Sono equazioni in cui l'incognita è una funzione e i cui termini sono le derivate della funzione stessa. 

<span  style="font-size:23; line-height: 1px;">$$\ddot{x} = g $$
$$\dot{x} = gt \cdot t$$
$$\dot{x}(0) = 0 \to v_0 = 0$$
$$\dot{x}=gt+v_0$$
$$x= \int (gt+v_0)dt $$
$$x = C = y_0$$
Integrale generale: 
$$\ddot{x}=g$$
$$\dot{x}=gt+c$$
</span>
---
$n(x) \cdot y^{n}$ -> derivata ennesima
Soluzione = $f(x)$ derivabile fino ad almeno oridne $n$ e in grado di soddisfare l'equazione differenziale per ogni $x$ nell'ambito di esistenza dell'equazione. 
L' **integrale generale** è l'insieme di tutte le funzioni che sono integrali dell'equazione, ovvero le soluzioni. 
### Equazione differenziale di primo ordine
$y'= a(x) \cdot y + b(x)$ con $A(x)$ = primitiva di $a(x)$
$e^{-A(x)} \cdot y' = e?{-A(x)} \cdot [a(x) \cdot y + b(x)]$ 
$...$
$e^{-A(x)} \cdot y = \int{e^{-A(x)} \cdot b(x) \cdot dx}$
La soluzione quindi è:
$y=F(x) = e^{A(x)} \int e^{-A(x)} \cdot b(x)dx$
---

#### Equazioni differenziali a variabili separabili 
$$ y'= a(x) \cdot b(y) $$
$$\dfrac{dy}{dx}=a(x) \cdot b(y)$$
$$\int \dfrac{dy}{dx}=\int{a(x)dx}$$
$$B(y) = A(x)+c$$





























