# Lectura 7 cuestión 2
#a)
muestra <- c(1.01, 0.97, 1.03, 1.04, 0.99, 0.98, 0.99, 1.01, 1.03)
n <- length(muestra)
sigma <- sd(muestra)
u <- mean(muestra)
t.test(x = muestra,y = NULL,alternative=c("two.sided"),mu=u,paired=F,var.equal=F,conf.level= 0.99)

#b)
muestra <- c(1.01, 0.97, 1.03, 1.04, 0.99, 0.98, 0.99, 1.01, 1.03)
o <- sd(muestra)
o
