# Lectura 6 cuestión 3

#a)
x <- rnorm(100,900,100)
ux <- mean(x)
ox <- sd(x)
nx <- length(x)
t.test(x,alternative="two.sided",mu=900,conf.level=0.99)
#b)
y <- rnorm(100,900,50)
uy <- mean(y)
oy <- sd(y)
ny <- length(y)
t.test(x,alternative="two.sided",mu=900, conf.level= 0.99)
#c) Teoria
#d)
hist(x,freq=T,main="",labels=T,xlab="Llenado de envases")
hist(y,freq=T,main="",labels=T,xlab="Llenado de envases")
