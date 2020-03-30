# Lesson 7: Specification & Functional Form

someFactor = 500
x = c(1:250)
y = x^-.25 * someFactor

model1<-lm(log(y) ~ log(x))
summary(model1)

model2<-lm(y ~ x)
summary(model2)

model3<-lm(log(y) ~ x)
summary(model3)

model4<-lm(y~log(x))
summary(model4)

###plot(x, y, log="xy")
###lines(x, exp(predict(model, newdata=list(x=x))) ,col="red")

