# The purpose of this script is to plot the total population infected by
# Influenza for each week in the past twenty years, as recorded by the CDC.

# Set working directory to SIV_infectionDynamics
library(readr)
dat <- read_csv("Data/chronoDat.csv")
plot(dat$Week, dat$totalPop, main = 'Influenza Infections by Week from 1998 to 2018',
     xlab = 'Week', ylab = 'Number of Infected Individuals')
x <- dat$Week
y <- dat$totalPop
