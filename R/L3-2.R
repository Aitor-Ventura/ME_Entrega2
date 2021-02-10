# Laboratorio 3 ej 2
puromicina <- read.table("Puromicina.txt", sep = ",", dec = ".", header = T)
attach(puromicina)

#a)
media <- aggregate(velocidad_reaccion~Puromicina, puromicina, mean)
media

#b)
sd(velocidad_reaccion)

#c)
plot(concentracion[Puromicina=="treated"], velocidad_reaccion[Puromicina=="treated"], col="green",
     pch=20, xlab="Concentracion de sustrato", ylab="Velocidad de reaccion enzimatica")
points(concentracion[Puromicina=="untreated"], velocidad_reaccion[Puromicina=="untreated"], col="blue")

#d)
ord_vr <- puromicina[order(velocidad_reaccion),]
ord_vr

#e)
yt <- velocidad_reaccion[Puromicina=="treated"]
xt <- concentracion[Puromicina=="treated"]
model <- lm(yt~xt + I(xt^(1/2)))

xv <- seq(0,1.1, 0.01)
yv <- predict(model, list(xt = xv))
lines(xv,yv,col="dark green")


ynt <- velocidad_reaccion[Puromicina=="untreated"]
xnt <- concentracion[Puromicina=="untreated"]
model_n <- lm(ynt~xnt + I(xnt^(1/2)))
ynv <- predict(model_n,list(xnt=xv))
lines(xv,ynv,col="dark blue")

#f)
library(DMwR2)
puromicina_NA <- read.table("Puromicina_NA.txt", sep = ",", dec =".", header=T)
puromicina_sinNA <- na.omit(puromicina_NA)
attach(puromicina_sinNA)
media2 <- aggregate(velocidad_reaccion~Puromicina, puromicina_sinNA, mean)
media2

cI <- centralImputation(puromicina_NA)
cI

kI <- knnImputation(puromicina_NA)
kI

media_cI <- aggregate(cI$velocidad_reaccion~cI$Puromicina, cI, mean)
media_cI

media_kI <- aggregate(kI$velocidad_reaccion~kI$Puromicina, kI, mean)
media_kI

