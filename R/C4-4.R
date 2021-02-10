#Cuestionario 4 pregunta 4

#a)
p_10 <- dpois(10,15)
p_10

#b)
p_x_m_5 <- dpois(0:4,5)
p_sum <- sum(p_x_m_5)
p_sum

#c)
6*5

#d)
x <- dpois(0:20,5)
plot(x, col = "black", xlab = "Numero de clientes", ylab = "Probabilidad", type = "h")
points(1:21,x,col="red")
