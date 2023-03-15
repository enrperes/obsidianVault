[[Fondamenti di Scienza dei Dati e Laboratorio-info]]

### Slide usate a lezione: 
1. https://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/R/R.html#1
2. https://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/import/import.html#1
### [[R Guide]]

---
# [[R language]]
# [[R programming]]
# [[R visualization]]


---

## Packages 
(check installed ones)
- [x] [[Tidyverse]]
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
