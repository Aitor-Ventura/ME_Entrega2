# Laboratorio 3 ej 4
#a) 
1-ppois(5.5,3)

#b)
F1 <- ppois(1,3)
F6 <- ppois(6,3)
F6-F1

#c)
qpois(0.75,3)

#d)
qpois(0.05,3)

#e)
muestra <- rpois(500,3)
muestra
hist(muestra, freq = F, col = "green", density = 55)
mean(muestra)
sd(muestra)
x <- seq(0,(max(muestra)+1))
fx <- dpois(x,3)
points(x,fx,type="b")

#f)
lambda <- 3
x <- seq(0,30)
fx <- dpois(x, lambda)
plot(x,fx,type="h",col="black")
points(x,fx,col="brown")

lambda <- 5
x <- seq(0,30)
fx <- dpois(x, lambda)
plot(x,fx,type="h",col="black")
points(x,fx,col="brown")

lambda <- 20
x <- seq(0,30)
fx <- dpois(x, lambda)
plot(x,fx,type="h",col="black")
points(x,fx,col="brown")
