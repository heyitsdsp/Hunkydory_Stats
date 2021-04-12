# Clearing the environment
rm(list = ls())
cat("\014")

quart <- function(x, f, h, lou)
{
  cf = cumsum(f)
  n = sum(f)
  
  if(lou == 'l')
  {
    for (i in seq(1, length(x), by = 1))
    {
      if((n/4)>cf[i] && (n/4)<cf[i+1])
        break
    }
    
    Q1 = (x[i+1]-(h/2)) + (h/f[i+1])*(n/4 - cf[i])
    return(Q1)
  }
  
  if(lou == 'u')
  {
    for (i in seq(1, length(x), by = 1))
    {
      if((3*n/4)>cf[i] && (3*n/4)<cf[i+1])
        break
    }
    
    Q3 = (x[i+1]-(h/2)) + (h/f[i+1])*(3*n/4 - cf[i])
    return(Q3)
  }
}

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

# Calculation of quartile deviation
q1 = quart(x, f, 10, 'l')
q3 = quart(x, f, 10, 'u')

qd = (q3-q1)/2

print(sprintf("The quartile deviation for the given frequency distribution is: %#.3f", qd))
print(sprintf("The mean deviation for the given frequency distribution is: %#.3f", md))
print(sprintf("The standard deviation for the given frequency distribution is: %#.3f", sd))


