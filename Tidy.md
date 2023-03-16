https://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/tidyr/tidyr.html#10

https://r4ds.had.co.nz/tidy-data.html (dal libro )
![[tidy.png|600]]

- **Gathering**  (*funzione deprecata*)
![[gathering.png|500]]
```R
#normalizzazione dati tabelle
pivot_longer(table4a, c(`1999`, `2000`), names_to = "year", values_to = "cases")
pivot_longer(table4b, c(`1999`, `2000`), names_to = "year", values_to = "population")
library(dplyr)
#unione tabelle
left_join(gather(table4a, `1999`, `2000`, key = "year", value = "cases"), 
          gather(table4b, `1999`, `2000`, key = "year", value = "population"))
```
input: due colonne di partenza. names_to = colonna, values_to = [...]

- **Spreading**
> Spreading makes long tables shorter and wider.
```R
separate(table3, rate, into = c("cases", "population"), 
         sep = "/", convert = TRUE)
```
- Separate
- Tidy
- Unite

#todo, slides

### Forma normale
- Variabili nelle colone
- Valori nelle righe 
- No ripetizioni 
- Solo un valore per ogni cella
- 