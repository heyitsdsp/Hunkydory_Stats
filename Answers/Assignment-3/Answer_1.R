# Clearing the environment
rm(list = ls())
cat("\014")

P <- function(x)
{
  value <- choose(20,x)*(0.05^x)*(0.95^(20-x))
  return(value)
}

n = 1000

# At least 2 
prob = 1-(P(x=0)+P(x=1)+P(x=2))
qty = floor(prob*n)
print(sprintf("The number of packets containing at least 2 defects is %i", qty))

# Exactly 2
prob = P(x=2)
qty = floor(prob*n)
print(sprintf("The number of packets containing exactly 2 defects is %i", qty))

# At most 2
prob = P(x=0)+P(x=1)+P(x=2)
qty = floor(prob*n)
print(sprintf("The number of packets containing at most 2 defects is %i", qty))




