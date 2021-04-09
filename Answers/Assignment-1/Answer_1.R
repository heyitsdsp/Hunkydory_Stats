# Perform a CTRL+L to clear the console
# Clearing the environment
rm(list = ls())

# Setting up the frequency distribution
mid = seq(22.5, 62.5, 5)
f = c(30, 160, 210, 180, 145, 105, 70, 60, 40)
fr_dist = data.frame(mid, f)

# Mean
mean = (sum(mid * f)/sum(f))

# Median
cf = cumsum(f) 
N = sum(f)
mc = min(which(cf>=N/2))
h = 5
f_mc = f[mc]
c_mc = cf[mc-1]
l = mid[mc]- h/2
median = l + (((N/2) - c_mc)/f_mc)*h

# Mode
m = which(f == max(f))
fm = f[m]
f1 = f[m - 1]
f2 = f[m + 1]
l = mid[m] - h/2
mode = l + ((fm - f1)/(2*fm-f1-f2))*h

# Printing everything on the console
print(sprintf("The mean of the given frequency distribution is: %#.3f", mean))
print(sprintf("The median of the given frequency distribution is: %#.3f", median))
print(sprintf("The mode of the given frequency distribution is: %#.3f", mode))
