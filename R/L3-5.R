#Laboratorio 3 ej 5
#N(200,25)
u <- 200
o <- 25
#a) P(150 < W <= 250)
pnorm(250,u,o) - pnorm(150,u,o)

#b) P(W => 255)
1-pnorm(255,u,o)

#c)
qnorm(0.95,u,o)
qnorm(0.05,u,o)

#d)
muestra <- rnorm(1000,u,o)
muestra
whist <- hist(muestra, freq = F, density = 25,
              col = "brown")
x <- seq(150,245,0.1)
fx <- dnorm(x,u,o)
points(x,fx,col="black")

#e)
whist2 <- hist(muestra)
whista <- cumsum(whist2$counts)/sum(whist2$counts)
whistb <- whist2$breaks
iniv <- length(whistb)
plot(whistb[2:iniv],whista,type="h",lwd=5)
fx <- pnorm(whistb,u,o)
points(whistb,fx,type="l")

#f)
library(e1071)
skewness(whista)
kurtosis(whista)
