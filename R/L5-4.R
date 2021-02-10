# Laboratorio 5 ej 4
library(knitr)
datos <- read.table("plantas_poda.txt", header = T, dec = ".", sep = ",")
str(datos)
kable(datos[1:7,])
attach(datos)
boxplot(Biomasa~Tipo_Poda, col = "green", ylab = "Biomasa", xlab = "Tipo Poda")
grid()

ANOVA <- aov(Biomasa~Tipo_Poda, data = datos)
summary(ANOVA)