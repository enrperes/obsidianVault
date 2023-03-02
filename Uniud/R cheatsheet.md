http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/R/R.html#11

# Packages

```R
# help on log function
?log

# install or update a package 
install.packages("igraph")


#load a package 
library(igraph)

#list packages that need to be updated
old.packages()

#update all packages
update.packages()
```

# Basic arithmetic and logic operators
#### Arithmetic: 
- sum: `+`
- minus: `-`
- product: `*`
- division: `/`
- integer division: `%/%`
- modulus: `%%`
- exponent: `^`
#### Logic 
- And: `&`
- Or `|`
- Not `!`
- Xor `xor`

---
Operatore XOR: 
 ```R
 X = TRUE
 Y = FALSE
(X | Y) & !(X & Y)

# True
 ```

Print structure of X with type: str(x) --> num 42

## Atomic types 

# 