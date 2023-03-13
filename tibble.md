https://tibble.tidyverse.org/

- [ ] `tibble` vs `data.frame`?

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

