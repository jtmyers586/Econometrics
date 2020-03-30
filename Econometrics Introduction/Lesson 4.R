#Lesson 4: the Classical Model

library(tidyverse)
#download data using github: marketing data from kassambra/datarium

head(marketing, 4)
model <- lm(sales ~ youtube + facebook + newspaper, data = marketing)
summary(model)

summary(model)$coefficient

model  <- lm(sales ~ youtube + facebook, data = marketing)
summary(model)

confint(model)

sigma(model)/mean(marketing$sales)

model <- lm(sales ~., data = marketing)

model <- lm(sales ~. -newspaper, data = marketing)

model1 <- update(model,  ~. -newspaper)
summary(model1)
