#Lesson 2: Ordinary Least Squares
# from https://www.r-bloggers.com/ordinary-least-squares-ols-linear-regression-in-r/

library(dplyr)
library(ggplot2)

mtcars %>%
  ggplot(aes(x = disp, y = mpg)) +
  geom_point(colour = "red")

cor(mtcars$disp, mtcars$mpg)

mtcars %>%
  ggplot(aes(x = sqrt(disp), y = sqrt(mpg))) +
  geom_point(colour = "red") 

cor(sqrt(mtcars$disp), sqrt(mtcars$mpg))

mtcars %>%
  ggplot(aes(x = sqrt(disp), y = sqrt(mpg))) +
  geom_point(colour = "red") +
  geom_smooth(method = "lm", fill = NA)


lmodel <- lm(sqrt(mpg) ~ sqrt(disp), data = mtcars)

lmodel$coefficients
summary(lmodel)

