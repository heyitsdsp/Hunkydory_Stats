# Clearing the environment
rm(list = ls())
cat("\014")

# Number of workers whose weekly wages is between 69 Rs and 72 Rs
p = pnorm(72, 70, 5) - pnorm(69, 70, 5)
print(sprintf("The number of workers whose weekly wages is between 69 Rs and 72 Rs is %1.0f", p*1000))

# Number of workers whose weekly wages are below 69 Rs
p = pnorm(69, 70, 5)
print(sprintf("The number of workers whose weekly wages are below 69 Rs is %1.0f", p*1000))

# Number of workers whose weekly wages are above 72 Rs
p = pnorm(72, 70, 5, lower.tail = FALSE)
print(sprintf("The number of workers whose weekly wages are above 72 Rs is %1.0f", p*1000))


