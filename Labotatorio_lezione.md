

```r
groups = cut(data, breaks = breaks, ordered_result = TRUE, right = TRUE)     # raggruppa dati in base a 'breaks'
abs_freq = table(groups)                                                     # frequenza assoluta
rel_freq = prop.table(count)                                                 # frequenza relativa
cum_abs_freq = cumsum(abs_freq)                                              # frequenza assoluta cumulata
cum_rel_freq = cumsum(rel_freq)                                              # frequenza relativa cumulata
```


---
## ES 1.2 - Qualitative

![[Pasted image 20231020105320.png|400]]
```r
# absolute frequency
abs_freq_PESTICIDA = table(pesticide)
# relative frequency
rel_freq_PESTICIDA = prop.table(abs_freq_PESTICIDA)
# cumulative frequency
cum_freq_PESTICIDA = cumsum(abs_freq_PESTICIDA)
cum_rel_freq_PESTICIDA = cumsum(rel_freq_PESTICIDA)

#print results
print("Absolute frequency")
print(abs_freq_PESTICIDA)
print("Relative frequency")
print(rel_freq_PESTICIDA)
print("Cumulative frequency")
print(cum_freq_PESTICIDA)
print("Cumulative relative frequency")
print(cum_rel_freq_PESTICIDA)
```
### Plots
```r
# barplot ordered by relative frequency
barplot(rel_freq_PESTICIDA[order(rel_freq_PESTICIDA)], main="Relative frequency", xlab="pesticida", ylab="Relative frequency")
# pie chart
pie(rel_freq_PESTICIDA, main="Relative frequency")
```
![[Pasted image 20231020110844.png|500]]

## ES 1.4 - Qualitative
[...] file rmd 

---
La funzione `sd` (standard deviation) usa $n-1$ al posto di $n$ nella funzione: $$\Large \sigma = \sqrt  {\sigma^2} = \sqrt{\frac 1 n\sum_{i=1}^n (X_i-x)^2}$$ Quindi può variare un po'

20 ottobre 12:15 registrazione :D