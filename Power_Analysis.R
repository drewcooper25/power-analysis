# OPEN Power Analysis!

# Normally Distributed Data
library("pwr")

# using most recent HbA1c (% DCCT) as a metric...
# x = DIY, y = non-DIY
nx = 317; mx = 6.22; sdx = 0.99
ny = 78; my = 6.67; sdy = 1.05

d = ((abs(mx-my))/(sqrt((sdx+sdy)/2)))
# can use "two.sided" or "greater" or "less"
pwr.t2n.test(nx,ny,d,0.05,NULL,alternative=c("greater"))

# Non-normally distributed data
library(MKpower)

nx = 317; ny = 78;
rx <- rnorm
ry <- function(x) rnorm(x, mean = 6.67)

# MKpower::
sim.power.wilcox.test(nx, rx, rx.H0 = NULL, ny, ry, ry.H0 = NULL,  alternative = c("two.sided"), sig.level = 0.05, conf.int = FALSE, approximate = FALSE, ties = FALSE, iter = 10000, nresample = 10000, parallel = "no", ncpus = 1L, cl = NULL)

# minx = 4.8; maxx = 14.9; # for seq()?
# miny = 4.5; maxy = 12.2; # for seq()?
# rnorm(n=100, mean=6.22, sd=0.99) // rnorm(n=100, mean=6.67, sd=1.05)