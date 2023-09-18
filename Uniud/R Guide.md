---
title: "A hasty tour inside R"
author: "Massimo Franceschet"
output:
  ioslides_presentation:
    css: ../style.css
    incremental: yes
editor_options: 
  chunk_output_type: inline
---

[[R in vscode]]

```{r setup, include=FALSE}
knitr::opts_chunk$set(cache = FALSE, message = FALSE, warning = FALSE)
```

# Basics

## R

[R](https://www.r-project.org) is a free software environment for statistical computing and graphics. R is a needful language for the data scientist. Its strengths include:

1. **capability**: It offers a gargantuan set of functionalities
1. **community**: It has an elephantine, ever growing community of users
1. **performance**: It is lightning fast (when running in main memory)

## RStudio

[RStudio](https://www.rstudio.com) is an integrated development environment (IDE) for R. It includes: 

* a console
* syntax-highlighting editor that supports direct code execution
* tools for plotting, history, debugging and workspace management


## Help and packages

> * get help, get help, get help! Use [stack overflow](https://stackoverflow.com) for specific questions

```{r eval = FALSE}
# help on log function
?log
```

> * R comes with a number of **packages**, some of them are loaded by default 

```{r eval = FALSE}
# install or update a package (only once!)
install.packages("igraph")

# load a package (when you need it)
library(igraph)

# list all packages where an update is available
old.packages()

# update all available packages
update.packages()

```



## Basic arithmetic and logic operators

* **arithmetic**: sum (`+`), minus (`-`), product (`*`), division (`/`), integer division (`%/%`), modulus (`%%`), exponent (`^`)
* **comparison**: equal (`==`), different (`!=`), less than (`<`), greater than (`>`), less than or equal to (`<=`), greater than or equal to  (`>=`)
* **logic operators**: conjunction (`&`), disjunction (`|`), negation (`!`), exclusive disjunction (`xor`)

## Play

Explain the following mismatch between math and R:

$$ (\sqrt{2}) ^ 2 \stackrel{?}{=} 2$$

```{r}
sqrt(2) ^ 2 == 2
```



## Solution

The computer uses **finite binary arithmetic** and the binary representation of $\sqrt{2}$ has infinite figures, hence it is rounded. 

## Play

Define the xor operator in terms of conjunction (`&`), disjunction (`|`), and negation (`!`).



## Solution

```{r}
x = TRUE
y = TRUE
# first solution
(x | y) & !(x & y)
# second solution
(x & !y) | (y & !x)

x = TRUE
y = FALSE
(x | y) & !(x & y)
(x & !y) | (y & !x)

```

## Special values

* the value `NA` (not available) is used to represent missing values; 
* the value `NULL`  is the null object (not to be confused with NULL in databases);
* the value `Inf` stands for positive infinity;
* the value `NaN` (not a number) is the result of a computation that makes no sense.

## Special values

```{r}
NA & TRUE
NA & FALSE
NA | TRUE
NA | FALSE
!NA

2^1024
1/0
0 / 0
Inf - Inf
```

## Variables

Of course, you may use **variables** to store values. There are 3 equivalent ways to assign a value to a variable:


```{r}
x = 42  # my favourite
x <- 42 # this is the politically correct one!
42 -> x # used rarely

# print x
x
# print structure of x (with type)
str(x)
```

## Atomic types

R has four main **atomic types**:



```{r}
# double (double-precision number)
x = 108.801
typeof(x)

# integer (integer number)
x = 108L
typeof(x)

# character (a string of characters)
x = "108L"
typeof(x)

# logical (a Boolean, either TRUE or FALSE)
x = TRUE
typeof(x)

```


# Data structures

## Outline
The main data structures used in R include:

> - atomic vector
> - list
> - matrix
> - data frame

<pre>
Dim Homogeneous     Heterogeneous
1d	atomic vector	list
2d	matrix          data frame
</pre>


## Atomic vectors

A **vector** is a sequence of elements with the **same type**. Vector indexes start at 1 (not 0). 


```{r}

# create a vector with c() function
c(1, 3, 5, 7)

# concatenate vectors
c(c(1, 3), c(5, 7))

# element-wise sum
c(1, 2, 3, 4) + c(10, 20, 30, 40)

# recyclying
10 + c(1, 2, 3, 4)

# element-wise product
c(1, 2, 3, 4) * c(10, 20, 30, 40)

# recyclying
10 * c(1, 2, 3, 4)

# scalar product (the result is a 1x1 matrix)
c(1, 2, 3, 4) %*% c(10, 20, 30, 40)

```

## Atomic vectors

```{r}
x = c(TRUE, FALSE, TRUE, FALSE)
(y = !x) # also prints result
x & y
x | y
xor(x, y)

```

## Indexing

You may refer to members of a vector in several ways:

```{r}
primes = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29)
primes[5]
primes[c(1, 5, 10)]
primes[-1]
primes[-c(1, 5, 10)]
primes > 15
primes[primes > 15]
# modify the vector
primes[primes > 15] = Inf
primes
```

## Coercion (type cast)

All elements of an atomic vector must be the same type, so when you attempt to combine different types they will be casted  to the most flexible type (*coercion*). Types from least to most flexible are: logical, integer, double, and character.

```{r}
x = c(TRUE, TRUE, FALSE, FALSE)
# how many TRUE?
sum(x)
# how many TRUE on average
mean(x)
```

## Named vectors

Vector elements can have names:

```{r}
x = c(a = 1, b = 2, c = 3)
# or
x = c(1, 2, 3)
names(x) = c("a", "b", "c")
x["a"]
x[c("a", "b")]
```

## Play

Given a vector of integers from 0 to 100, select all numbers that are (Hint: use the `:` operator to generate the vector):

> * even
> * even or divisible by 5
> * odd and divisible by 7




## Solution


```{r}
# vector
x = 0:100

# even 
x[x %% 2 == 0]

# even or divisible by 5
x[x %% 2 == 0 | x %% 5 == 0]

# odd and divisible by 7
x[x %% 2 == 1 & x %% 7 == 0]
```

## Play

Write a logical condition that is TRUE is the number is prime (Hint: take advantage of the `all` function).


## Solution

```{r}
n = 109
n == 2L || all(n %% 2:(n-1) != 0)

n = 111
n == 2L || all(n %% 2:(n-1) != 0)

```


## Factors


A **factor** is a vector that can contain only predefined values, and is used to store **categorical variables** (for instance sex or religion). 

Factors are built on top of integer vectors using the `levels` attribute, which defines the set of allowed values.

```{r}
x = factor(c("male", "female", "female", "male", "male"))
x
typeof(x)
levels(x)

# if you use values that are not levels 
# a warning is issued and a NA is generated
x[1] = "unknown"
x
```

## Lists

A **list** is a sequence of elements that might have **different types**. 

```{r}
# create a list
l = list(thing = "hat", size = 8.25, female = TRUE)

# print the list
l
str(l)

# an element
l$thing
l[[1]]

# a sublist
l[c("thing", "size")]
l[c(1, 2)]
```

## Lists

>"If list x is a train carrying objects, then x[[5]] is the object in car 5; x[5] is car number 5."



```{r}
# a sublist containing the first element of the list
l[1]
typeof(l[1])

# the first element of the list
l[[1]]
typeof(l[[1]])
```

## Lists

List elements can have any atomic or complex type. Hence a list can contain other lists, making it a **nested list**.

```{r}
l = list(1, list(1, 2, 3), list("a", 1, list("TRUE", "FALSE")))
str(l)
```

## Play

Consider the list:

```{r}
l = list(1, list(1, 2, 3), list("a", 1, list("TRUE", "FALSE")))
```

Find:

> * the list `list(1, 2, 3)`
> * the element `1` of list `list(1, 2, 3)`
> * the element `TRUE` of list `list("TRUE", "FALSE")`








```{r echo=FALSE, eval=FALSE}
l[[2]]
l[[2]][[1]]
l[[3]][[3]][[1]]
```

## Solution

```{r}
l = list(1, list(1, 2, 3), list("a", 1, list("TRUE", "FALSE")))
l[[2]]
l[[2]][[1]]
l[[3]][[3]][[1]]
```

## Play

Write a list containing the information of the Porphyrian Tree. Then select the insensitive part of the tree.  

![[indexRlist.png]]

## Solution
```{r}
substance = 
  list(immaterial = "spirit", 
       material = list(
                   body = list(
                     inanimate = "mineral", 
                     animate = list(
                       living = list(
                         insensitive = "plant", 
                         sensitive = list(
                           irrational = "beast", 
                           rational = 
                             list(human = c("Arendt", "Butler", "Barad"))))))))

str(substance)

substance$material$body$animate$living$insensitive
```


## Matrices

A **matrix** is a 2-dimensional vector, that is a vector of vectors of the same type and length. 

```{r}
# by row
M = matrix(data = 1:9, nrow = 3, byrow = TRUE)
M

# by column (the default)
N = matrix(data = 1:9, ncol = 3)
N

nrow(M)
ncol(M)
dim(M)
```

## Indexing


```{r}
M

# element in row 1 and column 2
M[1, 2]

# first row
M[1, ]

# first column
M[ ,1]

# sub-matrix
M[1:2, 1:2]
M[-3, -3]

# diagonal
diag(M)
```

## Add rows and columns

```{r}
P = matrix(data = runif(9), nrow = 3, byrow = TRUE)
P

# add column
cbind(P, c(0, 0, 0))

# modify matrix
P
P = cbind(P, c(0, 0, 0))
P

# add row
P = rbind(P, c(0, 0, 0, 0))
P

```


## Operations on matrices

```{r}
M
N

# element-wise sum
M + N

# element-wise product
M * N

# matrix product
M %*% N

# matrix transpose
M
t(M)

# matrix inverse
C = matrix(c(1,0,1, 1,1,1, 1,1,0), nrow=3, byrow=TRUE)
D = solve(C)
D
D %*% C
C %*% D

# linear systems C x = b
C
b = c(2, 1, 3)
# the system is:
# x1      + x3 = 2
# x1 + x2 + x3 = 1
# x1 + x2      = 3
x = solve(C,b)
x
C %*% x

# matrix spectrum
spectrum = eigen(C)
# columns are the eigenvectors
spectrum$vectors
# eigenvalues
spectrum$values

# check 
x = spectrum$vectors[, 1]
lambda = spectrum$values[1]
lambda * x
C %*% x




```

## Play

> 1. verify that the trace of a matrix (the sum of the diagonal elements) is the sum of its eigenvalues
> 1. compute the determinant of a matrix as the product of its eigenvalues (use function `prod`)  


## Solution

```{r}
C = matrix(c(1,0,1, 1,1,1, 1,1,0), nrow=3, byrow=TRUE)

(v = eigen(C)$values)

sum(v)
sum(diag(C))

prod(v)

```

## Data frames

A **data frame** is a **list** of vectors (called columns). A data frame is like a **database table**:

> * each column has a name and contain elements of the same type
> * different columns have the same length and may have different types

```{r}
name = c("John", "Samuel", "Uma", "Bruce", "Tim")
age = c(23, 31, 17, 41, 25)
married = c(TRUE, FALSE, FALSE, TRUE, TRUE)

pulp = data.frame(name, age, married)
pulp
```

## Indexing

```{r}
# first row
pulp[1, ]

# first column
# matrix style
pulp[ ,1]
pulp[, "name"]
# list style (remember a data frame is a list)
pulp$name 
pulp[[1]]

# filtering
pulp[pulp$name == "Uma", ]
pulp[pulp$age < 18, ]
pulp[married == TRUE, "name"]

```

## Play

Extract from the `pulp` data frame the names of adult people that are not married.

## Solution

```{r}
pulp[married == FALSE & age >= 18, "name"]

```


## Nested data frames

Since a data frame is a list, and lists can contain other lists as elements, you can create **nested data frames**, that is data frames whose elements are data frames.

```{r}
# a data frame
Venus = data.frame(
  x = c(17, 19), 
  y = c("Hello", "Venus")
)

# a data frame
Jupiter = data.frame(
  x = c(21, 23), 
  y = c("Hello", "Jupiter")
)

# a nested data frame
# I() treats the object â€˜as isâ€™
worlds = data.frame(
  x = I(list(Venus, Jupiter)), 
  y = c("Hello", "Worlds")
)

str(worlds)

worlds$x[[1]]
worlds$x[[2]]

```

# Programming

## Conditional and repetition
R is an Turing-complete (functional) programming language. 

It includes **conditional statements**: 


```{r}
x = 49
if (x %% 7 == 0) x else -x
```


And **loops**:

```{r}
x = 108
i = 2
while (i <= x/2) {
 if (x %% i == 0) print(i)
 i = i + 1;
}  

for (i in 2:(x/2)) {
  if (x %% i == 0) print(i)
}

```

## Kind of loops

```{r}
df = data.frame(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)

# we know the sequence and output lengths
# create a vector of a given size
output = vector("double", ncol(df))  
for (i in 1:ncol(df)) {               
  output[i] = mean(df[[i]])          
}
```

## Kind of loops

```{r}
# we know the sequence length but we do NOT know the output length (slow solution)
means = c(0, 1, 2)
# a vector of doubles of length 0
output = double() 
for (i in 1:length(means)) {
  n = sample(1:100, 1)
  # dynamically increase the vector (slow)
  output = c(output, rnorm(n, means[i])) 
}

# create a list with length(means) elements (faster solution)
output = vector("list", length(means))
for (i in 1:length(means)) {
  n = sample(1:100, 1)
  output[[i]] = rnorm(n, means[i])
}
# unlist the list into a vector
output = unlist(output)  

```



## Kind of loops

```{r}
# we do not know the sequence length
# iterate until a sequence of Heads of length difficulty is found
flips = 0
nheads = 0
difficulty = 10

while (nheads < difficulty) {
  if (sample(c("T", "H"), 1) == "H") {
    nheads = nheads + 1
  } else {
    nheads = 0
  }
  flips = flips + 1
}
flips
```

## Avoid loops (if possible)

Most of the times you can perform your task by applying functions, avoiding loops. This is typically faster.

```{r}
x = 1:100

# compute the sum (bad)
s = 0
for (i in 1:length(x)) {               
  s = s + x[i]
}
s

# compute the sum (good)
sum(x)

# even faster
n = length(x)
n * (n+1) / 2

```


## Functions

You may use **built-in functions**:


```{r}
log
args(log)
log(x = 128, base = 2)
log(base = 2, x = 128)
log(128, 2)
log(2, 128)
log(128)
```

Or define your our functions:

```{r}
euclidean = function(x=0, y=0) {sqrt(x^2 + y^2)}

euclidean(1, 1)
euclidean(1)
euclidean()

```

Or define your own binary operators using functions:


```{r}
# xor
'%()%' = function(x, y) {(x | y) & !(x & y)}

TRUE %()% TRUE 
TRUE %()% FALSE
FALSE %()% TRUE
FALSE %()% FALSE

```


## Functionals  

Functions may be **recursive**:

```{r}
factorial = function(x) {
 if (x == 0) 1 else x * factorial(x-1)
}
factorial(5)
```

You may write **functionals**, that are functions whose arguments are other functions:

```{r}
# compute the sum of applications of f up to n
g = function(f, n) {
 sum = 0
 for (i in 1:n) sum = sum + f(i)
 return(sum)
}
 
g(factorial, 5)

```

## Apply-like functionals

An application of functionals and iteration is the set of **apply-like functionals**:

```{r}
df = data.frame(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)

# apply mean to each column of data frame, returns a list
lapply(df, mean)

# apply mean to each column of data frame, returns an atomic vector
sapply(df, mean)

# apply to a vector
sapply(1:100, function(x) {x^2})

mtx <- cbind(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)


# apply mean to each column of matrix, returns an atomic vector
apply(mtx, 2, mean)

# apply mean to each row of matrix, returns an atomic vector
apply(mtx, 1, mean)



```

## Play

Write a function that, given a square matrix $A$ and an integer $n \geq 0$, computes the power $A^n$ (use `diag` function to build the identity matrix).

## Solution
```{r}
power = function(A, n) {
  k = nrow(A)
  I = diag(k)
  if (n == 0) return(I)
  if (n == 1) return(A)
  B = A
  for (i in 2:n) {
    B = B %*% A 
  }
  return(B)
}

A = matrix(c(1,2,0, 0,3,0, 0,5,1), nrow=3, byrow=TRUE)
power(A, 5)

```

## Play

The determinant of a square matrix is the product of the eigenvalues of the matrix.

>1. write a function that, given a matrix $A$ computes the determinant of $A$ (use the function `prod`)
>2. we know that $$\det(A^n) = \det(A)^n$$ Write a function that, given a matrix $A$ and an integer $n \geq 0$, computes the determinant of $A^n$

## Solution

```{r}
det = function(A) {
  v = eigen(A)$values
  return (prod(v))
}

detn = function(A, n) {
  v = eigen(A)$values
  return (prod(v)^n)
}

(A = matrix(c(1,2,0, 0,3,0, 0,5,1), nrow=3, byrow=TRUE))


det(A)
detn(A, 5)


```




# Plot

## Barplot

```{r echo=TRUE}

# a data matrix
M = matrix(c(
   c(1200, 1190, 1100, 1120, 890),
   c(6200, 6690, 6700, 7120, 7150),
   c(8900, 8790, 8760, 8800, 9010),
   c(3300, 3490, 3660, 4300, 4510),
   c(2190, 2000, 1890, 1740, 1500)), ncol = 5
)  

# give names to rows
rownames(M) = 2014:2018
# give names to columns
colnames(M) = LETTERS[1:5]
M

# barplot
barplot(M[1,])


# stacked barplot
barplot(M, legend=TRUE)

#  juxtaposed barplot
barplot(M, beside=TRUE, legend=TRUE)

```

## Histogram

```{r}
# histogram
x = rnorm(1000)
hist(x, probability=TRUE, main="Histogram of a normal sample")
## add distribution
rug(x)

# density plot
plot(density(x), main="Density of a normal sample")
rug(x)

```

## Boxplot

```{r}
# boxplot
# If range is positive, the whiskers extend to the most extreme 
# data point  which is no more than range times the interquartile 
# range from the box.  A value of zero causes the whiskers to extend 
# to the data extremes.
x = rnorm(1000)
boxplot(x, range = 1.5)
boxplot(x, range = 0)

```

## Scatter plot

```{r}
# scatter plot
x = rnorm(100)
y = rnorm(100)
plot(x, y)

y = x + runif(100)
plot(x, y)


```

## R Markdown 

* **R Markdown** provides an unified authoring framework for data science, combining your **code**, its **results**, and your **prose** commentary 
* R Markdown documents are fully **reproducible** and support many output formats, like HTML, PDF, and slideshows

## R Markdown 

R Markdown files are designed to be used in three ways:

1. for **communicating** to decision makers, who want to focus on the conclusions, not the code behind the analysis
1. for **collaborating** with other data scientists (including future you!), who are interested in both your conclusions, and how you reached them (the code)
1. as an **environment** in which to do data science, as a modern day **lab notebook** where you can capture not only what you did, but also what you were thinking

## Play

> 1. open in RStudio a new R Markdown document
> 1. generate an output document clicking on the Knit button
> 1. read the source R Markdown document and compare it with the rendered output document
> 1. modify the source R Markdown with something new you've learnt


## Dig deeper

>* [R Cookbook](http://users.dimi.uniud.it/~massimo.franceschet/ns/plugandplay/biblio/RCookbook.pdf)