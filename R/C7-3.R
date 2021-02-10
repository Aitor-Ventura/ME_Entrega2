# Lectura 7 cuestión 3

n <- 25
u <- 325.05
o <- 0.5
porc <- (90*u)/100
liminf <- porc-qt(0.975,df=(n-1))*o/sqrt(n)
limsup <- porc+qt(0.975,df=(n-1))*o/sqrt(n)
cat(c("lim.inf (95%) =",as.character(round(liminf,3)), "lim.sup (95%) =", as.character(round(limsup,3))))
