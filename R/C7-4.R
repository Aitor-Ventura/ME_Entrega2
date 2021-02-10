# Lectura 7 cuestión 4
#a)
n1 <- 100
u1 <- 12.2
o1 <- 1.1
n2 <- 200
u2 <- 9.1
o2 <- 0.9
x <- rnorm(n1,u1)
y <- rnorm(n2,u2)
t.test(x,y,alternative=c("two.sided"),mu=u1-u2,)
#b) Teoria
