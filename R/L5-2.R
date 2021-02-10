library(knitr)
sueldos <- read.table("sueldos_hosteleria.txt", header = T, sep = ",")
attach(sueldos)

#a)
xmedia <- mean(Sueldos)
s <- sd(Sueldos)
n <- length(Sueldos)
t <- qt(0.95, n-1)

xmedia - t*s/sqrt(n)
xmedia + t*s/sqrt(n)

#b)
x2inf <- qchisq(0.05, n-1)
x2sup <- qchisq(0.95, n-1)

sqrt(((n-1)*(s*s))/x2sup)
sqrt(((n-1)*(s*s))/x2inf)

#c)
salarios <- seq(15500,25500,100)
plot(salarios,dnorm(salarios,18510,850), type = "l", col = "blue", lwd = 2)
abline(v=18510, col = "green", lty=3)

Sueldos2 <- sort(Sueldos)
points(Sueldos2,dnorm(Sueldos2,18510,850), col = "brown", type ="h", lwd = 2, lty = 3)
