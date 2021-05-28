# Clearing the environment
rm(list = ls())
cat("\014")

# Probability that the job arrival stream will be at 0 jobs
p = ppois(0, lambda = 2)
print(sprintf("The probability that the job arrival stream will be at 0 jobs is %#.4f", p))

# Probability that the job arrival stream will be at exactly 3 jobs
p = ppois(3, lambda = 2) - ppois(2, lambda = 2)
print(sprintf("The probability that the job arrival stream will be at exactly 3 jobs is %#.4f", p))

# Probability that the job arrival stream will be at most 3 jobs
p = ppois(3, lambda = 2)
print(sprintf("The probability that the job arrival stream will be at most 3 jobs is %#.4f", p))


