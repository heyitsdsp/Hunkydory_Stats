# Clearing the environment
rm(list = ls())
cat("\014")

# Initializing the variables
m = 15
sdev = 0.8

# Finding the z score for the given probability
zw = qnorm(0.25, mean = m, sd = sdev)

# Finding the value of the weight
w = (zw*sdev) + m

print(sprintf("The net weight of the boxes of soap is %#.3f ounces", w))


