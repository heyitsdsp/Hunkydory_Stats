# Clearing the environment
rm(list = ls())
cat("\014")

# Number of bulbs likely to burn for more than 2150 Hours
p = pnorm(2150, 2040, 60, lower.tail = FALSE)
print(sprintf("The number of bulbs likely to burn for more than 2150 Hours is %1.0f", p*2000))

# Number of bulbs likely to burn for less than 1950 hours
p = pnorm(1950, 2040, 60)
print(sprintf("The number of bulbs likely to burn for less than 1950 hours is %1.0f", p*2000))

# Number of bulbs likely to burn for more than 1920 but less than 2160 hours
p = pnorm(2160, 2040, 60) - pnorm(1920, 2040, 60)
print(sprintf("The number of bulbs likely to burn for more than 1920 but less than 2160 hours is %1.0f", p*2000))


