
[[R in vscode]]
[[Fondamenti di Scienza dei Dati e Laboratorio-info|Course info]]
[[R Guide|R Guide markdown file]]

# [[Data Mining]]
# [[Blockchain]]

# [[DAO]]
---

### Slide usate a lezione: 
[Course Log](https://users.dimi.uniud.it/~massimo.franceschet/ds/plugandplay/log.html)

1. [Hasty tour inside R](http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/R/R.html#1)
2. [READR](http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/import/import.html#1)
3. [Tidy](http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/tidyr/tidyr.html#1)
4. [DPLYR](http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/dplyr/dplyr.html#1)
5. [ggplot2](http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/ggplot/ggplot.html#1)
6. [Elo - chess](https://users.dimi.uniud.it/~massimo.franceschet/ds/plugandplay/challenges/elo/elo.html)

---
# [[R language]]
# [[R programming]]
# [[R visualization]]
# [[R import]]
# [[Tidy]]
# [[Dplyr]]
# [[chess]]
# [[Animated graphics]]


---
### Projects
[[WHO_dataset]]
[[ItalianSoccer]]
[[chess]]
[[animated-lifeexp]]

---
## Packages 
(check installed ones)
- [ ] [[Tidyverse]]
- [ ] R Markdown 
	- il codice finale sarà un insieme di codice R e MarkDown
	- `install.packages("rmarkdown)"` 
	- Usage
		- *file > New File > R Markdown* 
		- Estensione `.rmd` 
		- Render and preview output with `Ctrl + Shift + K` 
		- Add code chunks with `Ctrl + Alt + I`
- [ ] [[tibble]]
- [ ] `View()` function used to invoke a spreadsheet-style data viewer in Rstudio
---

# Definizioni 
### Media
> Rapporto tra la somma dei dati numerici e il numero dei dati. 

Gli *outlayers* influenzano molto la media, ma è generalmente pià accurata per rappresentare il valore medio di un insieme di dati. 
### Mediana
> Valore centrale tra i dati numerici disposti in ordine crescente o decrescente.

In caso di numero pari di dati, la median è data dalla media aritmetica dei due valori centrali. 
La presenza di *outlayers* (=valori distanti dalla media) non influenza necessariamente la mediana. 

### Moda
> Valore che si presenta con maggiore frequenza

Quindi, se ogni valore è presente una volta, non esiste una moda. 
