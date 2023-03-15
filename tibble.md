https://tibble.tidyverse.org/

Load with `library(tibble)`

##  `tibble` vs `data.frame`?
Tibble is an improvment of dataframe: 
- Never changes an input's type
- Never adjust variables names 
- Evaluates arguments sequentially
The three main differences: 
1. Printing 
	- ...
1. Subsetting
2. Recycling 


---
```R
library(tibble)

t = as_tibble(iris)
str(t)
view(t)


tibble(
x = 1:5
y = 1
z = x^2 + y
)

data.frame(a = 1:10, a = 11:20)

```

