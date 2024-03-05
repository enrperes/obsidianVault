
[OUTDATED] See [[Classification]]

1. Decision Tree 
2. Naive Bayes
3. K-nearest Neighbors

## Decision Tree
> Classification Algorithm that works for both categorical and continuous input 

Composed by: 
- Root Node, related to an attribute and the entire dataset (splitting point)
- A set of **Decision Nodes** related to an attribute and a sub-set of the dataset (splitting points)
- Terminal Nodes (leaves) also related to sub-sets (Prediction points)
A path from the root to a leaf is called Branch. 
A connected component in the Tree is called a sub-tree


Splitting is the process of dividing the Dataset related to a parent node into more datasets related to che child nodes according to the parent value. 

![[Pasted image 20230515143022.png|400]]

## Naive Bayes

- Probabilty is a number assigned to an event: "how likely" the event will occur when a random experiment is performed
- A probability law for a random experiment is a rule that assigns probabilities to the events in the experiment. 

## K-Nearest Neighbors  (KNN)
> Lazy algorithm: there is no parameter estimation.

It requires the number *k* of neighbors to consider and a distance function.