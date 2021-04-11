# Clearing the environment
rm(list = ls())
cat("\014")

x = c(4.7, 8.2, 12.4, 15.8, 20.7, 24.9, 31.9, 35.0, 39.1, 38.8)
y = c(4.0, 8.0, 12.5, 16.0, 20.0, 25.0, 31.0, 36.0, 40.0, 40.0)

relation <- lm(y~x)
coeffs = coef(relation)

# Set file name for graph
png(file = 'LinearRegression.png')

# Plotting the chart
plot(y, x, col = 'green', main = 'Linear Regression',
     abline(lm(y~x)), cex = 1.7, pch = 16, xlab = 'X', ylab = 'Y')

# Save the file
dev.off()

# Printing the equation of the line
print(sprintf("The equation of the line is y = %#.3fx + (%#.3f)", coeffs[2], coeffs[1]))


