# Laboratorio 3 ejercicio 3
n <- 150
p <- 0.02

#b)
dbinom(5,n,p)

#c)
p0 <- dbinom(0,n,p)
p1 <- dbinom(1,n,p)
p2 <- dbinom(2,n,p)
1-(p0+p1+p2)

#d)
qbinom(0.75,n,p)

#e)
log(0.99)/log(0.02)

#f)
qbinom(0.95,n,p)

#g)
muestra <- rbinom(1000,n,p)
mean(muestra)
sd(muestra)

#h)
hist(muestra, freq = F, col = "green", density = 55)
x <- seq(0,(max(muestra)+1))
fx <- dbinom(x,n,p)
points(x,fx,type="b")
