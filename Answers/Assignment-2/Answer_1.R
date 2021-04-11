# Clearing the environment
rm(list = ls())
cat("\014")

x = c(21, 23, 30, 54, 57, 58, 72, 78, 87, 90)
y = c(60, 71, 72, 83, 110, 84, 100, 92, 113, 135)

N = length(x)
sum_xy = sum(x*y)
sum_x = sum(x)
sum_y = sum(y)
sum_x2 = sum(x**2)
sum_y2 = sum(y**2)

# Calculating the coefficient of correlation
r = (sum_xy - (sum_x * sum_y / N))/sqrt((sum_x2 - ((sum_x**2)/N)) * (sum_y2 - ((sum_y**2)/N)))

# Printing
print(sprintf("The coefficient of correlation is: %#.3f", r))

