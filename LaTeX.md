
# $\Huge\LaTeX$



$$
c = \frac{f(a+h) - f(a)}{h} - \frac{r(h)}{h}\\ \Rightarrow \\
\lim_{h \to 0} c = \lim_{h \to 0}\left(\frac{f(a+h) - f(a)}{h} - \frac{r(h)}{h}\right) \Rightarrow \\
c = \lim_{h \to 0}\frac{f(a+h) - f(a)}{h} - \lim_{h \to 0}\frac{r(h)}{h} = \lim_{h \to 0}\frac{f(a+h) - f(a)}{h}
$$

---

```tikz
\usetikzlibrary{arrows.meta}
\usepackage{pgfplots} 
\begin{document} 
\begin{tikzpicture}[scale=1.5]
Grid \draw[very thin] (0,0) grid (8,5); 
Arrows 
\draw[very thick, -{>[scale=2, width=7, length=10]}] (0,1)--(8,1) node[right, scale=2] {$x$}; 
\draw[very thick, -{>[scale=2, width=7, length=10]}] (1,0)--(1,5) node[above, scale=2] {$f(x)$}; 
\begin{axis}[ xmin=-1, xmax=7, ymin=-1, ymax=4, y=1cm, x=1cm, xtick={-1,...,7}, hide axis] 
\addplot[thick, color=red, domain=-1:7, smooth] {0.03*(x^3-8*x^2+7*x+73)+1}; 
\end{axis} \draw[very thick] (2,4.19) circle (0.05 and 0.05) node[scale=2] at (2.15,4.35) {$a$}; 
\draw[very thick] (4,3.47) circle (0.05 and 0.05) node[scale=2] at (4.15,3.63) {$b$}; 
\draw[very thick, domain=0:8, color=orange, nearly opaque] plot (\x, {-0.36*\x+4.91}); 
\draw node[scale=1.75] at (4,-0.5) {$f(x)=0.03\left({x}^{3} - 8{x}^{2} + 7 x + 73\right) + 1$}; 
\draw node[scale=2] at (4,-1.25) {$\mathrm{Tvm}(f[a,b])=\frac{f(b)-f(a)}{b-a}$}; \end{tikzpicture} 
\end{document}
```

 $$\Huge \color{yellow}\LaTeX $$
 $$\Huge \color{green}\LaTeX $$
 $$\Huge \color{red}\LaTeX $$
 $$\Huge \color{blue}\LaTeX $$
 $$\Huge \color{cyan}\LaTeX $$
 $$\Huge \color{lime}\LaTeX $$
 $$\Huge \color{teal}\LaTeX $$
 $$\Huge \color{orange}\LaTeX $$
 $$\Huge \color{olive}\LaTeX $$
 $$\Huge \color{black}\LaTeX $$
![[Pasted image 20230804193327.png]]