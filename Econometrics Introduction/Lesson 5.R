#Lesson 5: Hypothesis Testing



# one sample t-test
t.test(iris$Sepal.Length,iris$Sepal.Width) # where y is numeric and x is a binary factor

# one sample t-test
t.test(iris$Sepal.Length,mu=3) # Ho: mu=3
