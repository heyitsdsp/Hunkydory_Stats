# CTRL+L to clear the console
# Clearing the environment
rm(list = ls())

x = c(10, 15, 12, 17, 13, 16, 24, 14, 22)
y = c(30, 42, 45, 46, 33, 34, 40, 35, 39)

n = length(x)
rank_x = rank(x)
rank_y = rank(y)

d = rank_x-rank_y

# Calculating the rank correlation

rc = 1 - (6*sum(d**2)/ (n*((n**2)-1)))

print(sprintf("The rank correlation of the given data is: %#.2f", rc))


