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

[[Machine Learning Esercizi]]

---
# Supervised Learning
## [[Classification]]
Positive examples vs Negative examples 


---
# Linear Regression
[...]



# Overfitting
> Overfitting occurs when an algorithms fits too closely (or exactly) to its training data, resulting in a model that can't make accurate predictions or conclusions from any data other than the training data. 

Overfitting defeats the purpose of the machine learning model. 
Can happen when the model trains too much on sample data or when the model is too complex. 
**Low error rates and high variance** are good indicators of overfitting. 

## Avoid overfitting 

- Early stopping 
	- Pause training before the model starts learning the noise within the data. 
- Train with more data
	- Expand the training set to include more data -> increase the accuracy by allowing the model to parse out the dominant relationships among the I/O variables. 
- Data augmentation
	- Add noisy data to make a model more stable. Not widely used. 
- Feature selection
	- Reduce the number of features
- Regularization
	- When you don't know which inputs to eliminate during feature selection process -> Apply a penalty to the input parameters with the largest coeff. There are multiple ways to achieve regularization. 
- Combination of the above

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


# Holdout Method and Regularization


Technique to evaluate a performance of a machine learning model. 
1. Split the data
	-  split the dataset in 2: training set and test set (70%-30%)
	- Test set kept hidden from the model during training 
2. Train the model
	- Training set fed into the model 
3. Test the model 
	- After training, test the model with the test set. 


## K-Fold Cross Validation
You evaluated the model only once using the test set. You are not sure if the result is by luck or not. You want to evaluate multiple times to make sure -> K-fold

Single parameter $k$ that refers to the number of groups that a given data sample is split into. 

#### General procedure: 
1. Shuffle dataset randomly
2. Split dataset into $k$ groups. 
3. For each unique group: 
	1. Take the group as a holdout or test data set 
	2. Take the remaining groups as a training data set 
	3. Fit a model on the training set and evaluate it on the test set. 
	4. Retain the evaluation score and discard the model 
4. Summarize the skill of the model using the sample of model evaluation scores. 

Each observation in the data sample is assigned to an individual group and stays in that group for the duration of the procedure.
So each sample can be used in the holdout set one time and used to train the model k-1 times. 

The result of k-fold cross-validation runs are often summarized with the mean of the model skill scores. Good practice to include variance, standard deviation or standard error. 

#### Configuration of $k$
To keep in mind when choosing k: 
- Representative
	- The value for k is chosen such that each train / test group of data samples is large enough to be statistically representative of the broader dataset 
- k=10
	- The value for k is fixed to 10, a value that has been found to generally result in a model skill estimate with low bias and modest variance. 
- k=n
	- where n = size of the dataset to give each test sample an opportunity to be used in the hold out dataset. 

#### Cross-Validation API 
```py
# KFold()

#scikit-learn k-fold cross-validation
from numpy import array
from sklearn.model_selection import KFold
# data sample
data = array([0, 1, 2, 3, 4, 5])
# prep cross validation
kfold = KFold(3, True, 1)
# enumerate splits 
for train, test in kfold.split(data):
	print("train: %s, test: %s" %(train, test))
```


```py
train: [0.1 0.4 0.5 0.6], test: [0.2 0.3]
train: [0.2 0.3 0.4 0.6], test: [0.1 0.5]
train: [0.1 0.2 0.3 0.5], test: [0.4 0.6]
```

## Regularization
> A set of methods for reducing overfitting in machine learning models, trading a marginal decrease in accuracy for an increase in generalizability. 

> Less accurate predictions on training data but more accurate predictions on test data. 

The concession of increased training error for decreased testing error is called **bias-variance trade-off**. 

**Bias**: Measures the average difference between predicted values and true values. As it increases, a model predicts less accurately on the training set. High bias -> High training error

**Variance:** measures the difference between predictions across various realizations of a model. As variance increases, a model predicts less accurately on unseen data. High variance -> High error during testing and validation. 

Bias and Variane inversely represent model accuracy on training and test set respectively. 

> Regularization decreases model variance at the cost of increased bias. 

### Ridge Regression (L2)
Penalizes high-value coefficients by introducing a penalty t term in the SSE loss function. 

RSS = Residual Sum of Squares: measures how well a lineare regression model matches training data. If RSS = 0, the model fits perfectly to the training data, which is not always desirable (overfitting)

$$
\Large RSS= \sum_{i=1}^{n}(y_{i}-\hat{y}_{l})^{2}
$$
OLS = Ordinary Least squares, matrix coefficient estimator: 
$$
\Large B = (X^{T}X)^{-1}X^{T}y
$$
The L2 penalty is inserted at the end of the RSS function, resulting in the **ridge regression estimator**. 



Minimization problem: 
$$
\Large J(\Theta) = \frac{1}{2m} \left[ \sum_{i=1}^m (h_{\theta}(x^{(i)})-y^{(i)})^{2} + \lambda \sum_{{j=1}}^{n} \theta_{j}^{2}\right]
$$
$$
\Large min_{(\theta)} \;\;\;\; J(\theta)
$$

The penalty term in Ridge Regression is the squared sum of coefficients rather than the absolute value. It also only shrinks feature weights towards zero but never to zero. 

#### Ridge Regression in machine learning 

Helps reduce overfitting that comes from model complexity, that can be due to: 
- Too many features (parameters)
- Features possessing too much weight
	- Feature weight refers to a given predictor's effect on the model output.

#### Real Estate example
Many predictors determine a house's sale price: number of bedrooms, bathrooms, location... 
Highly correlated features lead to high regression coefficients and overfitting on training data. 
Ridge regression corrects this form of model complexity by reducing the number of total feature weights on the model final predicted value. 
