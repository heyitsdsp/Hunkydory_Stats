# Clearing the environment
rm(list = ls())
cat("\014")

# Given data
pop_diff = 0.08
x1 = 42
n1 = 200
x2 = 18
n2 = 100
sl = 0.05

# Setting up the null and alternate hypothesis
H0 = "The claim that brand A outsells brand B by 8% is true"
H1 = "The claim that brand A outsells brand B by 8% is false"
print(sprintf("The null hypothesis is: %s", H0))
print(sprintf("The alternate hypothesis is: %s", H1))

# Calculation of the z Statistic
p = (x1 + x2)/(n1 + n2)
p1 = x1/n1
p2 = x2/n2

z_score = ((p1 - p2) - (0.08))/sqrt(p * (1 - p) * (1/n1 + 1/n2))
p_value = 2 * pnorm(-abs(z_score))

# Performing the hypothesis test
if(p_value > sl)
{
  print(H0)
} else{
  print(H1)
}



