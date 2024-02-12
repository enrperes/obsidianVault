![[Pasted image 20240212175751.png|300]]
Parte dalla cifra meno significativa, ordina con [[Counting Sort]], passa alla seconda cifra meno significativa...
### Complessità
$$
\Large
\Theta(d \cdot n+b)
$$
Con d = numero di digits. Se d è costante allora 
$$
\Large \Theta(n)
$$
Mentre se $\Large d<\log(\log n)$ allora $$
\Large
\Theta(\log(\log n)n)
$$