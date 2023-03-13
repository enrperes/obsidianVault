```R
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