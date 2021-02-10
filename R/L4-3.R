# Laboratorio 4 ej 3
library(knitr)
germinacion <- read.table("germination.csv", header = T, sep = ",")
attach(germinacion)

#a)
proporcion <- 100*count/sample
no_germinados <- sample-count
germinados <- cbind(germinacion, proporcion, no_germinados)
attach(germinados)

#b)
media_proporciones <- aggregate(proporcion~Orobanche+extract,germinacion,mean)
boxplot(100*proporcion~Orobanche+extract, xlab = "Genotipo y Planta Huésped",
        ylab = "Proporcion semillas germinadas", col = "green")
abline(h=100*media_proporciones[4,3], col="red", lwd=2, lty=3)
abline(h=100*media_proporciones[2,3], col="red", lwd=2, lty=3)

#c)
boxplot(proporcion[extract == "judia"]~Orobanche[extract == "judia"],
        xlab = "Genotipo", ylab = "Proporcion semillas germinadas", col = "green",
        ylim = c(0,100))
modelo1 <- lm(proporcion[extract=="judia"]~Orobanche[extract == "judia"])
abline(modelo1, col = "red", lwd = 2)
modelo2 <- lm(proporcion[extract=="pepino"]~Orobanche[extract=="pepino"])
abline(modelo2, col="red", lwd = 3, lty=3)
boxplot(proporcion[extract=="pepino"]~Orobanche[extract=="pepino"], col = "aquamarine",
        ylim=c(0,100), add = T)
text(1,80,labels="pepino",col="red")
text(1.5,35,labels="judia",col="red")

