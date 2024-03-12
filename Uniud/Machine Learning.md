[[Machine Learning-info]]

---

### Artificial Intelligence
> Any technique which enables computers to mimic human behavior 

### Machine Learning
> Subset of AI techniques which use statistical methods to enable machines to improve with experience. 

> Field of study that gives computers the ability to learn without being explicitly programmed.

> A computer is said to learn from experience E with respect to a task T and some performance measure P, if its performance on T, as measured by P, improves with experience E. 

### Deep Learning
> Subset of ML which make the computation of multi - layer neural networks feasible. 

---

# Supervised Learning
## [[Classification]]
Positive examples vs Negative examples 


---
# Linear Regression
[...]

# Gradient Descent Algorithm 
> General algorithm to minimize a function.
> It's a method for unconstrained optimization that finds a local minimum of a differentiable multivariate function 

[Wiki Article](https://en.wikipedia.org/wiki/Gradient_descent)

![[Pasted image 20240312114235.png|500]]
Repeat until convergence: 
$$
\Large
\theta_{j} := \theta_{j} - \alpha \left( \frac{\partial}{\partial \theta_{j}}\right) J(\theta_{0}, \theta_{1}) 
$$
for j=0 and j=1

![[Pasted image 20240312115429.png|400]]

La funzione deve essere derivabile 
Per un $\alpha$ sufficientemente piccolo, $J(\theta )$ dovrebbe diminuire ad ogni iterazione 
Se $\alpha$ è troppo piccolo, la funzione può essere troppo lenta a convergere
Quindi $\alpha$ viene calcolato in maniera empirica con test preliminari 






