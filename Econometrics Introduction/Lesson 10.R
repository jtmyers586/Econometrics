# Lesson 10: Heteroskedasticity

library(lmtest)

lmMod<-lm(dist~speed, data = cars)
par(mfrow = c(2,2))
plot(lmMod)

lmtest::bptest(lmMod)

car::ncvTest(lmMod)

distBCMod <- caret::BoxCoxTrans(cars$dist)
print(distBCMod)

cars <- cbind(cars, dist_new=predict(distBCMod, cars$dist)) # append the transformed variable to cars
head(cars) # view the top 6 rows

lmMod_bc <- lm(dist_new ~ speed, data=cars)
bptest(lmMod_bc)

plot(lmMod_bc)
