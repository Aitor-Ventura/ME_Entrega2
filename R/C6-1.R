# Lectura 6 cuestión 1

#a) Teoria
#b) Teoria
#c)
plot(c(0,32),c(0,15),type="n",xlab="Tamaño de la muestra",ylab="Varianza")
for(n in seq(3,31,2)){
  for(i in 1:30){
    x <- rnorm(n,mean=10,sd=2)
    points(n,var(x),col="red")
  }
}
abline(a=4,b=0,col="blue")

