# Clearing the environment
rm(list = ls())
cat("\014")

# Setting up the frequency distribution
x = seq(5, 65, 10)
f = c(6, 5, 8, 15, 7, 6, 3)
fr_dist = data.frame(x, f)

# Calculating the mean
mean = sum(x*f)/sum(f)

# Calculating the standard deviation
sd = sqrt((sum(f*((x-mean)**2)))/sum(f))

# Calculation of mean deviation
md = sum(f*abs(x-mean))/sum(f)

# Calculation of quartile deviation using mean deviation
qd_md = (5/6)*md

# Calculation of quartile deviation using standard deviation
qd_sd = (2/3)*sd

# Calculation of mean deviation using standard deviation
md_sd = (4/5)*sd

print(sprintf("The quartile deviation using the mean deviation is: %#.3f", qd_md))
print(sprintf("The quartile deviation using the standard deviation is: %#.3f", qd_sd))
print(sprintf("The mean deviation is: %#.3f", md))
print(sprintf("The mean deviation using the standard deviation is: %#.3f", md_sd))