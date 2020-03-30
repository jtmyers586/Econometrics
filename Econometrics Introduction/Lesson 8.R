# Lesson 8: Multicollinearity

#Need the "olsrr" package
library(olsrr)


#VIF
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
ols_vif_tol(model)

#Condition Index
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
ols_eigen_cindex(model)

#Collinearity Diagnostics
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
ols_coll_diag(model)

#Residual Fit Spread Plot
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
ols_plot_resid_fit_spread(model)

#partial correlations
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
ols_correlations(model)

#Observed vs. Predicted Plot
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
ols_plot_obs_fit(model)

#Lack of fit F Test
model <- lm(mpg ~ disp, data = mtcars)
ols_pure_error_anova(model)