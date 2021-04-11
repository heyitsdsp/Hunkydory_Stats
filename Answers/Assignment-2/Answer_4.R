# Clearing the environment
rm(list = ls())
cat("\014")

x1 = c(30, 40, 20, 50, 60, 40, 20, 60)
x2 = c(11, 10, 7, 15, 19, 12, 8, 14)
y = c(110, 80, 70, 120, 150, 90, 70, 120)

relation <- lm(y ~ x1+x2)
coeffs = coef(relation)

print(sprintf("The equation of the regression plane is y = (%#.3f)x1 + (%#.3f)x2 + (%#.3f)", 
              coeffs[2], coeffs[3], coeffs[1]))


