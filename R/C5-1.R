# Lectura 5 cuestion 1
u <- 176.5
o <- 7.1

#a)
p_160 <- (160-u)/o
pnorm(p_160)

#b)
p_180 <- (180-u)/o
p_171.5 <- (171.5-u)/o
pnorm(p_180)-pnorm(p_171.5)

#c)
p_175 <- (175-u)/o
p_175

#d)
p_190 <- (190-u)/o
1-pnorm(p_190)

#e)
p <- c("P(X<160)","P(171.5 < X < 180)","P(X=175)","P(X=>190)")
r <- c(0.01006426, 0.4483326, 0, 0.02862427)
barplot(r,width=1,space=NULL,names.arg=p,col="green",main="Comparativa de probabilidades",ylim=c(0,0.5))
