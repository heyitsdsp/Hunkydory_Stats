# Clearing the environment
rm(list = ls())
cat("\014")

u = 1000
sd = 200
n = 10000

# Lamps expected to fail in the first 800 hours
prob = pnorm(800, mean = u, sd = sd, lower.tail = TRUE)
num = floor(prob*n)
print(sprintf("The number of lamps expected to fail in the first 800 hours is %i", num))

# Lamps expected to fail between 800 and 1200 hours
prob = pnorm(1200, mean = u, sd = sd, lower.tail = TRUE) - prob
num = floor(prob*n)
print(sprintf("The number of lamps expected to fail between 800 hours and 1200 hours is %i", num))


