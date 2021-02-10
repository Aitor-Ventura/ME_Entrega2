# Lectura 7 cuestión 5

#a)
n <- 12
uA <- 36300
uB <- 38100
oA <- 5000
oB <- 6100
muestra <- uA-uB
o <- oA-oB
liminf <- muestra-qt(0.975, df=(n-1))*o/sqrt(n)
limsup <- muestra+qt(0.975, df=(n-1))*o/sqrt(n)
cat(c("lim.Inf. (95%) =", as.character(round(liminf,3)), " lim.Sup. (95%) =", as.character(round(limsup,3))))
#b)
x <- rnorm(n, uA)
y <- rnorm(n, uB)
t.test(x,y,alternative=c("two.sided"),mu=uA-uB,paired=T,var.equal=F,conf.level=0.95)
t.test(x,y,alternative=c("two.sided"),mu=uA-uB,paired=T,var.equal=T,conf.level=0.95)

