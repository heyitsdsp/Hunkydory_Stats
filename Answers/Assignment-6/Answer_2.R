# Clearing the environment
rm(list = ls())
cat("\014")

# Given data
p_1 = 0.2
p_2 = 0.15
n1 = 900
n2 = 1600
sl = 0.05

# Setting up the null and alternate hypothesis
H0 = "The difference between the two proportions is not significant"
H1 = "The difference between the two proportions is significant"
print(sprintf("The null hypothesis is: %s", H0))
print(sprintf("The alternate hypothesis is: %s", H1))

# Calculating the Z-Statistic and p value
x1 = p_1*n1
x2 = p_2*n2
p = (x1 + x2)/(n1 + n2)

z_score = ((p_1 - p_2) - 0)/sqrt(p * (1 - p) * (1/n1 + 1/n2))
p_value = 2 * pnorm(-abs(z_score))

# Performing the hypothesis test
if(p_value > sl)
{
  print(H0)
} else{
  print(H1)
}



