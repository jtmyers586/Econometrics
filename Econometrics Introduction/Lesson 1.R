# Lesson 1: RStudio Overview & Download.
# Overview of Regression Analsis

# Download URL to Rstudio: https://rstudio.com/products/rstudio/


# The datasets package needs to be loaded to access our data 
# For a full list of these datasets, type library(help = "datasets")
library(datasets)
data(iris)
summary(iris)
table(iris)

# Univariate: Septal.Length = F(Petal.Length)
lm1<-lm(Sepal.Length ~ Sepal.Width, data = iris)
summary(lm1)

# Multivariate: Septal.Length = F(Sepal.Width, Petal.Length, Petal.Width)
lm2<-lm(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width, data = iris)
summary(lm2)

#actual values:
iris$Sepal.Length

#predicted values:
predict(lm2)

#residual values:
lm2$residuals

# Plot line of best fit on regression
plot(iris$Sepal.Length, iris$Sepal.Width)
abline(lm(iris$Sepal.Width ~ iris$Sepal.Length))
# notice with abline: x ~ y (other way around!) for plotting.