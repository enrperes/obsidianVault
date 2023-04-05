[ggplot](https://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/ggplot/ggplot.html#3)

You provide:
-   the data,
-   what graphical primitives to use,
-   tell how to map variables to aesthetics,

#### Template: 
```R
ggplot(data = <DATA FRAME>) + 
  <GEOMETRIC OBJECT>(mapping = aes(<MAPPINGS>))
```

`aes` stands for *aesthetics*. 

`library(ggplot2)`

## Dataset mpg
hwy = miles per gallon highway
cty = mpg city

```R
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv))
```

## The diamonds dataset

A dataset diamonds contains the prices and other attributes of almost 54,000 diamonds. The main attributes are:

-   **price**: price in US dollars
-   **carat**: weight of the diamond
-   **cut**: quality of the cut (Fair, Good, Very Good, Premium, Ideal)
-   **color**: diamond colour, from D (best) to J (worst)
-   **clarity**: a measurement of how clear the diamond is (I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best))

```R
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
```
Con `geom_bar`  non serve per forza mettere l'asse y, viene automaticamente mappata come un "count".

```R
ggplot(data = filter(diamonds, carat <= 2.5)) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.01)
```


