# Laboratorio 4 ej 4

library(knitr)
library(mgcv)
datos_empleo <-read.table ("Empleos_Informatica_Canarias_2009-19.csv", header = TRUE, sep = ";")
str(datos_empleo)
names(datos_empleo)
kable (datos_empleo[1:24,])
attach (datos_empleo)

#a)
canarias_62 <- datos_empleo[TRIMESTRES == "CNAE_62", 2]
index <- seq(length(canarias_62),1,-1)
canarias_ord_62 <- canarias_62 [index]
tenerife_62 <- TENERIFE [TRIMESTRES == "CNAE_62"]
granca_62 <- GRAN.CANARIA [TRIMESTRES == "CNAE_62"]
plot(1:length(canarias_ord_62),canarias_ord_62,type="l", col="blue",
     lwd=2,lty=3,xlab="Años",ylab="Número de empleados en CNAE62",xaxt = "n")
grid()
years <- c ("2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")
axis (side=1, at=seq(1,length(canarias_ord_62), 4),labels=years)

kable (canarias_ord_62 [1:6],)

canarias_63 <- datos_empleo[TRIMESTRES == "CNAE_63", 2]
index <- seq(length(canarias_63),1,-1)
canarias_ord_63 <- canarias_63 [index]
plot(1:length(canarias_ord_63),canarias_ord_63,type="l", col="blue",
     lwd=2,lty=3,xlab="Años",ylab="Número de empleados en CNAE63",xaxt = "n")
years <- c ("2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")
axis (side=1, at=seq(1,length(canarias_ord_63), 4),labels=years)
grid()

canarias_95 <- datos_empleo[TRIMESTRES == "CNAE_95", 2]
index <- seq(length(canarias_95),1,-1)
canarias_ord_95 <- canarias_95 [index]
plot(1:length(canarias_ord_95),canarias_ord_95,type="l", col="blue",
     lwd=2,lty=3,xlab="Años",ylab="Número de empleados en CNAE95",xaxt = "n")
years <- c ("2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019")
axis (side=1, at=seq(1,length(canarias_ord_95), 4),labels=years)
grid()

#b)
x <- 1:length(canarias_ord_62)
y <- canarias_ord_62
modelo1 <- gam(y~x+I(x^2)+I(x^3))
xv <- x
yv <- predict(modelo1, list(x=xv))
lines(xv, yv, col="red", lwd=2)
yv2018 <- predict(modelo1, list(x=x[2]))
points(x[2], yv2018, pch=16, col="green")
lines(c(x[2], x[2]), c(0, yv2018), col="red", lty=3, lwd=3)
#c)
max(TENERIFE)
max(GRAN.CANARIA)
max(LA.PALMA)
max(EL.HIERRO)
max(FUERTEVENTURA)
max(LANZAROTE)
max(LA.GOMERA)
#d) Viendo la tabla

