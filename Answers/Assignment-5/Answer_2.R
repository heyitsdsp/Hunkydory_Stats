# Clearing the environment
rm(list = ls())
cat("\014")

x = c(34, 45, 26, 45, 56, 32, 44, 23)
y = c(46, 35, 67, 34, 78, 66, 30, 76)


sd_x = sd(x)
sd_y = sd(y)

mean_x = mean(x)
mean_y = mean(y)

cv_x = (sd_x/mean_x)*100
cv_y = (sd_y/mean_y)*100

if(cv_x > cv_y)
{
  print("Player Y is the more consistent player")
} else {
  print("Player X is the more consistent player")
}

