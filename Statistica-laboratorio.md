```r
groups = cut(data, breaks = breaks, ordered_result = TRUE, right = TRUE)     # raggruppa dati in base a 'breaks'
abs_freq = table(groups)                                                     # frequenza assoluta
rel_freq = prop.table(count)                                                 # frequenza relativa
cum_abs_freq = cumsum(abs_freq)                                              # frequenza assoluta cumulata
cum_rel_freq = cumsum(rel_freq)                                              # frequenza relativa cumulata
```

