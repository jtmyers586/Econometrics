# Lesson 14: Statistical Principles

install.packages("Hmisc", "corrgram")
library("Hmisc", "corrgram")
# using the dataset: mtcars
head(mtcars)

# get means & standard deviations for variables
sapply(mtcars, mean)
sapply(mtcars, sd)

# mean,median,25th and 75th quartiles,min,max
summary(mtcars)

# n, nmiss, unique, mean, 5,10,25,50,75,90,95th percentiles
# 5 lowest and 5 highest scores
describe(mtcars)

# Correlations/covariances among numeric variables in
# data frame iris Use listwise deletion of missing data.
cor(mtcars, method="kendall")
cov(mtcars)

#mtcars data frame 
rcorr(as.matrix(mtcars)) # type can be pearson or spearman

library(corrgram)
corrgram(mtcars, order=TRUE, text.panel=panel.txt,
         main="Car Milage Data in PC2/PC1 Order")

# one sample t-test
t.test(iris$Sepal.Length,iris$Sepal.Width) # where y is numeric and x is a binary factor

# one sample t-test
t.test(iris$Sepal.Length,mu=3) # Ho: mu=3

pnorm(0.1,0,1)

# Display the Student's t distributions with various
# degrees of freedom and compare to the normal distribution

x <- seq(-4, 4, length=100)
hx <- dnorm(x)

plot(x, hx, type="l", lty=2, xlab="x value",
     ylab="Density", main="Comparison of t Distributions")


# Confidence Intervals
t.test(iris$Sepal.Length,conf.level=0.9)

