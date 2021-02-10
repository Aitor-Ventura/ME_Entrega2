# Laboratorio 5 ej 3

library(knitr)
datos<-read.table("sueldos_hosteleria.txt",header = TRUE, sep = ",", dec = ".")
str(datos)
kable(datos[1:7,])
attach(datos)
t.test(Sueldos, alternative = "two.sided", mu = 18510)