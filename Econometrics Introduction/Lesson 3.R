# Lesson 3: Learn to Use Regression Analysis

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y~x)

print(relation)
summary(relation)
summary(relation)$coefficients

a<-data.frame(x=170)
result<-predict(relation, a)

png(file="linearregression.png")
plot(y,x,col="blue",main="Height & Weight Regression")
abline(lm(x~y),cex=1.3,pch=16,xlab="Weight in Kg",ylab="Height in cm")
dev.off()