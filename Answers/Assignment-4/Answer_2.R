# Clearing the environment
rm(list = ls())
cat("\014")

# Probability that exactly 2 screws are defective
p = dbinom(2, size = 20, prob = 0.1)
print(sprintf("The probability of exactly two defective screws is %#.4f", p))

# Probability that at least two screws are defective
p = 1 - (dbinom(0, size = 20, prob = 0.1) + dbinom(1, size = 20, prob = 0.1))
print(sprintf("The probability of at least two screws being defective is %#.4f", p))

# Probability that there are between 1 and 3 defective switches
p = pbinom(3, size = 20, prob = 0.1) - dbinom(0, size = 20, prob = 0.1)
print(sprintf("The probability that there are between 1 and 3 defective screws in %#.4f", p))


