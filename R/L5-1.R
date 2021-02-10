# Laboratorio 5 ej 1
library(knitr)
library(MASS)

alturas <- read.table("Alturas_Estudiantes_EII.txt", header = T, sep =",")
attach(alturas)

#a)
parametro <- fitdistr(Alturas, "normal")
parametro

#b)
hist(Alturas, col ="green", density = 25, freq = F, ylim = c(0, 0.025))
M <- parametro$estimate[1]
O <- parametro$estimate[2]
X <- seq(min(Alturas),max(Alturas),5)
points(X,dnorm(X,M,O),col="blue",type="l",lwd=2)
abline(v=M, col="blue", lty = 3)
