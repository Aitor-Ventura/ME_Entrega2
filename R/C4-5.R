# Cuestionario 4 pregunta 5
#a)
r <- dgeom(15, 0.035)
r

#b)
num_personas <- (1-0.035)/0.035^2
num_personas

#c) geometrica
#d)
p_c <- 120*0.035
p_c
p_nc <- 120-p_c
p_nc
tiempo <- (p_c*5)+p_nc
tiempo

#e)
dist_geom <- dgeom(0:50, 0.035, log = F)
plot(dist_geom, xlab = "Num de intentos", ylab = "Probabilidad", col = "black", type = "h")
points(1:51, dist_geom, col = "brown")

nombres <- c("Pasajeros cuestionables", "Demás pasajeros", "Tiempo")
d <- c(p_c, p_nc, tiempo)
barplot(d, width = 1, space = NULL, names.arg = nombres, col = "green", main =
          "Comparativa de pasajeros y el tiempo que generan", ylim = c(0,140))
