# Clearing the environment
rm(list = ls())
cat("\014")

P <- function(x)
{
  value <- exp(-1.5)*(1.5^x)/factorial(x)
  return(value)
}

# Neither car is used
prob = P(x=0)
prop_of_days = prob*100;
print(sprintf("The proportion of days when neither car is used is %#.3f %% ", prop_of_days))

# At most one car is used
prob = P(x=0)+P(x=1)
prop_of_days = prob*100;
print(sprintf("The proportion of days when at most one car is used is %#.3f %% ", prop_of_days))

# Some demand of car is not fulfilled
prob = 1-(P(x=0) + P(x=1) + P(x=2))
prop_of_days = prob*100;
print(sprintf("The proportion of days when some demand of the car is not fulfilled is %#.3f %% ", prop_of_days))


