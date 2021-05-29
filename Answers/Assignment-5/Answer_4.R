# Clearing the environment
rm(list = ls())
cat("\014")

x = c(25, 28, 35, 32, 31, 36, 29, 38, 34, 32)
y = c(43, 46, 49, 41, 36, 32, 31, 30, 33, 39)

# For x on y regression line
relation <- lm(y~x)
coeffs = coef(relation)

# Printing the equation of the line
print(sprintf("The equation of the line is y = %#.3fx + (%#.3f)", coeffs[2], coeffs[1]))

# For y on x regression line
relation <- lm(x~y)
coeffs = coef(relation)

# Printing the equation of the line
print(sprintf("The equation of the line is x = %#.3fy + (%#.3f)", coeffs[2], coeffs[1]))



