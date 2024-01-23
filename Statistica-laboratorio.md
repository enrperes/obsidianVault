[[Labotatorio_lezione]]

---

# Riassunto 
 
`summary(data)`

Tabella frequenze relative di diametro per macchinario: 
```r
req.rel = freq.ass/apply(freq.ass, 1, sum)
barplot(freq.rel, beside=T, names.arg=c("fine", "ok", "spesso"), legend.text = c("M1", "M2", "M3"), cex.axis=2, cex.names=2)
```

---

1. **Skewness:**
    
    - Skewness measures the asymmetry of a distribution. In a symmetrical distribution, the mean, median, and mode are all equal, and the skewness is close to zero.
    - A positive skewness indicates that the distribution has a longer right tail, meaning that the right side of the distribution is stretched out more than the left.
    - Conversely, a negative skewness indicates a longer left tail, implying that the left side of the distribution is stretched out more than the right.
2. **Kurtosis:**
    
    - Kurtosis measures the "tailedness" of a distribution. It describes the distribution's tail extremeness or the degree of outliers.
    - A high kurtosis value indicates a distribution with heavy tails and a peak that is sharper and narrower than a normal distribution. This is called leptokurtic.
    - Low kurtosis indicates light tails and a flatter, more spread-out peak than a normal distribution. This is called platykurtic.
    - A normal distribution has a kurtosis of 3. A distribution with kurtosis less than 3 is called platykurtic, and a distribution with kurtosis greater than 3 is called leptokurtic.

* Si studi la relazione tra le due variabili.
```r
cor(Peso_corporeo,Peso_cervello)
plot(log(Peso_corporeo),log(Peso_cervello))
```

---
Per: 
- Analisi delle variabili 
- Studio della relazione tra le due variabili 
- interpretazione dei risultati
Si usa: 
- `summary` 
- `skewness()` 
- `kurtosis()` 
- `par()`
- `qqnorm()` 
- `qqline()` 
- `mod = lm()` 
- `summary(mod)` 
- `abline()` 
Per: 
	