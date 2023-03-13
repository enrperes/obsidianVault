## Conditional and repetition

It includes **conditional statements**:

```R
x = 49
if (x %% 7 == 0) x else -x
```

And **loops**:

```R
x = 108
i = 2
while (i <= x/2) {
 if (x %% i == 0) print(i)
 i = i + 1;
}
```
**For loops**
```R
for (i in 2:(x/2)) {
  if (x %% i == 0) print(i)
}
```

### Kind of loops 

[...]

### Apply like functionals 
Applica una funzione ad ogni elemento di un array. 

>`lapply` returns a list of the same length as X, each element of which is the result of applying FUN to the corresponding element of X.

>`sapply` is a user-friendly version and wrapper of lapply by default returning a vector, matrix or, if simplify = "array", an array if appropriate, by applying simplify2array(). sapply(x, f, simplify = FALSE, USE.NAMES = FALSE) is the same as lapply(x, f).

>`vapply` is similar to sapply, but has a pre-specified type of return value, so it can be safer (and sometimes faster) to use.



```
# apply to a vector
sapply(1:100, function(x) {x^2})
# Eleva al quadrato ogni elemento del vettore
```

##### Play:
Write a function that, given a square matrix $A$ and an integer $n≥0$, computes the power $A^n$
 (use `diag` function to build the identity matrix).

>[!done]- Solution
> ![[squarematrixRsolution]]
> ok 

### Det 
`det` calculates the determinant of a matrix. determinant is a generic function that returns separately the modulus of the determinant, optionally on the logarithm scale, and the sign of the determinant.

[[R visualization]]
