# Clearing the environment
rm(list = ls())
cat("\014")

x = c(80, 78, 75, 75, 68, 67, 60, 59)
y = c(12, 13, 14, 14, 14, 16, 15, 17)

rank_x = rank(x)
rank_y = rank(y)
n = length(x)
d = rank_x-rank_y
old_d2 = d^2

# Correction factors
cf1 = 2*(2^2 - 1)/12
cf2 = 3*(3^2 - 1)/12

new_d2 = sum(old_d2) + cf1 + cf2

# Calculation of rank correlation coefficient
rcc = 1 - (6*sum(new_d2)/(n*(n^2 - 1)))

print(sprintf("The rank correlation coefficient is %#.3f", rcc))

