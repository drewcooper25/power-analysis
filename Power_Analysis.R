# OPEN Power Analysis!

# https://www.statmethods.net/stats/power.html
library("pwr")

# using most recent HbA1c (% DCCT) as a metric...
# n = population size, m = mean, s = standard deviation
# group 1 = DIY, group 2 = non-DIY

n1 = x; m1 = y; s1 = z
n2 = x; m2 = y; s2 = z

d = ((abs(m1-m2))/(sqrt((s1+s2)/2)))
pwr.t2n.test(n1,n2,d,0.05,NULL,alternative=c("two.sided"))
# can use "two.sided" or "greater" or "less"

# N's from above are smaller than total counted individuals from enrollment types; not everyone answers w/ HbA1c values...