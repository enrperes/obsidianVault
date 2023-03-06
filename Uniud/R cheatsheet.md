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
- Or `|` `||` con due barrette la seconda condizione non viene valutata se la prima è vera. Stessa cosa con and
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

---
## Array

```R

# create a vector with c() function
c(1, 3, 5, 7)

# concatenate vectors
c(c(1, 3), c(5, 7))

# element-wise sum
c(1, 2, 3, 4) + c(10, 20, 30, 40)

# recyclying
10 + c(1, 2, 3, 4) 
c(10, 5) + c(1, 2, 3, 4) # -> c(10, 5, 10, 5) --> (11, 7, 13, 9)

# element-wise product
c(1, 2, 3, 4) * c(10, 20, 30, 40)

# recyclying
10 * c(1, 2, 3, 4) 

# scalar product (the result is a 1x1 matrix)
c(1, 2, 3, 4) %*% c(10, 20, 30, 40)
```

## Atomic Vectors 
Vettori con elementi Booleani 
```R
x = c(TRUE, FALSE, TRUE, FALSE)
(y = !x) # also prints result. Le parentesi permettono di visualizzare il valore dell'assegnazione. Y diventa il vettoe X ma negato 
x & y # AND 
x | y # OR
xor(x, y)
```

## Indexing 
==Array starts at 1==

```R
primes = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29)
primes[5] ## [1] 11
primes[c(1, 5, 10)] ## [1] 2 11 29
primes[-1] # stampa tutto tranne elemento in posizione 1
primes[-c(1, 5, 10)] # stampa tutto tranne gli elementi 1, 5, 10. 
primes > 15 # stampa array booleano tale che: TRUE per tutti gli elementi che soddisfano la condizione; FLASE per tutti gli elementi che non la soddisfano. 
## [1] FALSE FALSE FALSE FALSE FALSE FALSE TRUE TRUE TRUE... 
primes[primes > 15] # Prende tutti i valori TRUE di primes (ovvero il vettore booleano) e stampa solo quelli. Usa un vettore booleano come indice 
# modify the vector
primes[primes > 15] = Inf # applica il valore inf (infinito) ai valori superiori a 15 del vettore prime 
primes
```

## Coercion 

```R
x = c(TRUE, TRUE, FALSE, FALSE)
# how many TRUE?
sum(x) ## [1] 2 --> vettore di dimensione [1] con elemento 2. [T, T, F, F] -> ci sono due TRUE
# how many TRUE on average
mean(x) # --> Media aritmetica di 1, 1, 0, 0 = 0.5 --> ## [1] 0.5
```

## Named Vectors
Simile ai dictonary di Python 
```R
x = c(a = 1, b = 2, c = 3) # assegna un nome ad ogni elemento del vettore
# or
x = c(1, 2, 3)
names(x) = c("a", "b", "c")

x["a"] # stampa elemento di x con nome "a"
x[c("a", "b")] # prende solo gli elementi "a" "b" del vettore c
```

# Play
> Given a vector of int from 0 to 100, select all numbers that are: 
> * even `x [x %% 2 == 0]`
> * even or divisible by 5 `x[x %% 2 == 0 | x %% 5 == 0]`
> * odd and divisible by 7 `x[x %% 2 == 1 & x %% 7 == 0]`

> Write a logical condition that is TRUE is the number is prime (Hint: take advantage of the `all` function).
> > `all`
> >The value returned is TRUE if all of the values in x are TRUE (including if there are no values), and FALSE if at least one of the values in x is FALSE. 
> 
> **Solution:**
> ```
> n = 109 
> n == 2L || all(n %% 2:(n-1) != 0) # Controlla se n = 2. OR crea un vettore booleano con "all" partendo da 2 a n-1. Per ogni elemento controlla che il resto della divisione per n sia !=0. Se solo uno di questi risulta FALSE, la funzione all ritorna FALSE. 
> ```

## Factors 
> A **factor** is a vector that can contain only predefined values, and is used to store **categorical variables** (for instance sex or religion). 
> Factors are built on top of integer vectors using the `levels` attribute, which defines the set of allowed values.

```R
x = factor(c("male", "female", "female", "male", "male"))
x
typeof(x) # [1] "integer" -> in pratica viene eseguito un mapping, assegnazione di valori 0, 1... al posto di ogni valore 
levels(x) # [1] "female" "male"

# if you use values that are not levels 
# a warning is issued and a NA is generated
x[1] = "unknown" ## [1] <NA> --> impossibile assegnare valori al di fuori dei possibili valori 

```

## Lists
> sequence of elements that might have different types 

```
# create a list
l = list(thing = "hat", size = 8.25, female = TRUE)

# print the list
l # --> $thing
[1] "hat"

$size
[1] 8.25

$female
[1] TRUE

str(l)

# an element
l$thing
l[[1]]

# a sublist
l[c("thing", "size")]
l[c(1, 2)]
```

[...] 

# Play 
Consider the list:

```{r}
l = list(1, list(1, 2, 3), list("a", 1, list("TRUE", "FALSE")))
```

Find:

> * the list `list(1, 2, 3)`
> 	* `l[[2]]` --> elemento lista posizione 2 
> * the element `1` of list `list(1, 2, 3)`
> 	* `l[[2]][[1]]` --> dalla lista in posizione 2, prende elemento in posizione 1 
> * the element `TRUE` of list `list("TRUE", "FALSE")`
> 	* `l[[3]][[3]][[1]]` -> il primo elemento del terzo elemento del terzo elemento della lista 

## Matrices
A **matrix** is a 2-dimensional vector, that is a vector of vectors of the **same type and length.** 
```R
# by row
M = matrix(data = 1:9, nrow = 3, byrow = TRUE)
```
![[Pasted image 20230306120316.png]]


```
# by column (the default)
N = matrix(data = 1:9, ncol = 3)
N

nrow(M)
ncol(M)
dim(M)
```
