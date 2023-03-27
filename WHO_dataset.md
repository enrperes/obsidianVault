> The `tidyr::who` dataset contains tuberculosis (TB) cases broken down by year, country, age, gender, and diagnosis method. The data comes from the 2014 [World Health Organization Global Tuberculosis Report](http://www.who.int/tb/country/data/download/en/).



## Tidy: 

Riordinare dataset per arrivare a una tabella con: 
- Country
- Year
- Type
- Sex
- Age_low
- Age_high
- Cases

#### Gather: 
Gather together all the columns from `new_sp_m014` to `newrel_f65`. Use the variable `key` for the gathered columns and variable `cases` for the values. Notice there are a lot of missing values in the current representation, so use `values_drop_na` to remove them.

```R
who1 <- who %>% 
  pivot_longer(___, names_to = ___, values_to = ___, values_drop_na = ___)
who1
```

`stringr::str_replace()` = utilizza la funzione `str_replace()` della libreria `stringr`, senza **importare** tutta la libreria. La libreria deve essere già installata. 

