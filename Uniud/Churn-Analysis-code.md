
```R
# Load data
df <- read.csv("churn.csv")
print(head(df, n = 3))
print(colnames(df))

# Plot class distribution
class.dist = table(df$Churn)
barplot(class.dist)
print("Absolute frequencies")
print(class.dist)
print("Relative frequencies")
print(class.dist/sum(class.dist))

for(i in 1:ncol(df)) {
  print(colnames(df)[i])
  print(sum(is.na(df[,i])))
}

# Attribute Distributions
plotter <- function(df, i) {
  name = colnames(df)[i]
  print(name)

  if (is.numeric(df[,i])) {
    ggplot(df, aes(df[,i], fill = Churn, main = name)) +
      geom_histogram(bins = 50)
  } else {
    ggplot(df, aes(df[,i], fill = Churn, main = name)) +
      geom_bar(stat = "count")
  }
}

scale_plotter <- function(df, i) {
  name = colnames(df)[i]
  print(name)
  
  if (is.numeric(df[,i])) {
    ggplot(df, aes(df[,i], fill = Churn, main = name)) +
      geom_histogram(bins = 50, position = "fill")
  } else {
    ggplot(df, aes(df[,i], fill = Churn, main = name)) +
      geom_bar(stat = "count", position = "fill") +
      scale_y_continuous(labels = scales::percent)
  }
}

library(ggplot2)

plotter(df, 1)
plotter(df, 2)
plotter(df, 3)
plotter(df, 4)
plotter(df, 5)
plotter(df, 6)
plotter(df, 7)
plotter(df, 8)
plotter(df, 9)
plotter(df, 10)
plotter(df, 11)
plotter(df, 12)
plotter(df, 13)
plotter(df, 14)
plotter(df, 15)
plotter(df, 16)
plotter(df, 17)
plotter(df, 18)
plotter(df, 19)
plotter(df, 20)
plotter(df, 21)

scale_plotter(df, 1)
scale_plotter(df, 5)
scale_plotter(df, 6)
plotter(df[df$VMail.Message > 0, ], 7)
scale_plotter(df, 18)
scale_plotter(df, 20)

table(df$State, df$Area.Code)

df1 = subset(df, select = -c(State, Area.Code, Phone))

numeric_cols <- unlist(lapply(df1, is.numeric))
my_cols <- c("red", "blue")
color_id <- c("True"=2, "False"=1)
pairs(df1[, numeric_cols], pch = 19,  cex = 0.5, col = my_cols[color_id[df1$Churn]])


ggplot(df1,aes(x=Day.Mins,y=Day.Charge, group=Churn)) + geom_point(aes(color=Churn))
ggplot(df1,aes(x=Eve.Mins,y=Eve.Charge, group=Churn)) + geom_point(aes(color=Churn))
ggplot(df1,aes(x=Night.Mins,y=Night.Charge, group=Churn)) + geom_point(aes(color=Churn))
ggplot(df1,aes(x=Intl.Mins,y=Intl.Charge, group=Churn)) + geom_point(aes(color=Churn))

df2 = subset(df1, select = -c(Day.Charge, Eve.Charge, Night.Charge, Intl.Charge))

library(caTools)

#make this example reproducible
set.seed(17)

#use 70% of dataset as training set and 30% as test set
split <- sample.split(df2, SplitRatio = 0.7)
train_cl <- subset(df2, split == "TRUE")
test_cl <- subset(df2, split == "FALSE")

library(rpart)
library(cluster)
library(maptree)

# creation of an object 'model' using rpart function
decision.tree = rpart(Churn ~ ., data = train_cl, method = 'class')
draw.tree(decision.tree, cex=1)

library(lattice)
library(caret)

dt_pred <- predict(decision.tree, test_cl, type = "class")

# Confusion Matrix
dt_cm <- table(test_cl$Churn, dt_pred)
dt_cm

# Model Evaluation
confusionMatrix(dt_cm, positive = "True")

# Naive Bayes
library(e1071)

nb <- naiveBayes(Churn ~ ., data = train_cl)
nb

# Predicting on test data
nb_pred <- predict(nb, newdata = test_cl)

# Confusion Matrix
nb_cm <- table(test_cl$Churn, nb_pred)
nb_cm

# Model Evaluation
confusionMatrix(nb_cm, positive = "True")```
