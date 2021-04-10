# CTRL+L to clear the console
# Clearing the environment
rm(list = ls())

# Function for calculating the correlation coefficient
calc_corr_coeff <- function(a, b)
{
  N = length(a)
  sum_ab = sum(a*b)
  sum_a = sum(a)
  sum_b = sum(b)
  sum_a2 = sum(a**2)
  sum_b2 = sum(b**2)
  
  # Calculating the coefficient of correlation
  r = (sum_ab - (sum_a * sum_b / N))/sqrt((sum_a2 - ((sum_a**2)/N)) * (sum_b2 - ((sum_b**2)/N)))
  
  return(r)
}

x = c(4.7, 8.2, 12.4, 15.8, 20.7, 24.9, 31.9, 35.0, 39.1, 38.8)
y = c(4.0, 8.0, 12.5, 16.0, 20.0, 25.0, 31.0, 36.0, 40.0, 40.0)

r = calc_corr_coeff(x, y)

# Calculating regression coefficient
b_xy = r*(sd(x)/sd(y))

# Forming the equation of the line
print(sprintf("The equation of the line is: x-%#.2f = %#.3f(y-%#.2f)", mean(x), b_xy, mean(y)))

