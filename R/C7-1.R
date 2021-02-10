# Lectura 7 cuestión 1

#a)
linf <- 780-qt(0.96, df=(29))*40/sqrt(30)
lsup <- 780+qt(0.96, df=(29))*40/sqrt(30)
cat(c("lim.Inf (96%) =", as.character(round(linf,3)), " lim.Sup.(96%) =", as.character(round(lsup,3))))

#b) Teoria
#c) Teoria
#d) Teoria
#e)
u <- 780
o <- 40
n <- 30
x <- rnorm(n,u,o)
qchisq(0.02,n-1)
qchisq(0.96,n-1)

pt <- seq(-0.4,60,0.001)
alpha <- 0.04
s2 <- 0.376
dp <- dchisq(pt, n-1)
plot(pt,dp,type="l",col="red",ylab="Densidad de probabilidad",xlab="Estadístico")
xliminf <- (n-1)*s2/qchisq((1-alpha/2),n-1)
xlimsup <- (n-1)*s2/qchisq(alpha/2,n-1)
chixliminf <- (n-1)*s2/xlimsup
chixlimsup <- (n-1)*s2/xliminf
grid()
xv <- pt[pt>=chixliminf&pt<=chixlimsup]
yv <- dp[pt>=chixliminf&pt<=chixlimsup]
xv <- c(xv,chixlimsup,chixliminf)
yv <- c(yv,dp[1],dp[1])
polygon(xv,yv,col="green",density=30,border="red")+abline(v=chixlimsup,col="blue",lty=2)+
  abline(v=chixliminf,col="blue",lty=2)

