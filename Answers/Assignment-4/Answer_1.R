# Clearing the environment
rm(list = ls())
cat("\014")

# Probability that all 30 switches work
p = dbinom(0, size = 30, prob = 0.1)
print(sprintf("The probability that all 30 switches work is %#.4f", p))

# Probability that at most 2 of the circuits work
p = pbinom(2, size = 30, prob = 0.1)
print(sprintf("The probability that at most 2 switches work is %#.4f", p))



