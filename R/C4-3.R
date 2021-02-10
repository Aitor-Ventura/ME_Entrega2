# De acuerdo con un estudio sociológico realizado por investigadores de la ULPGC, aproximadamente un
# 45% de los consumidores de tranquilizantes en la provincia de Las Palmas empezaron a consumirlos
# por problemas psicológicos. Calcular la probabilidad de que entre los 10 consumidores entrevistados
# de la provincia de Las Palmas:

# a) Exactamente 4 comenzaron a consumir tranquilizantes por problemas psicológicos
p_4 <- dbinom(4,10,0.45)
p_4
# b) Al menos 6 comenzaron a consumir tranquilizantes por problemas psicológicos
p_0 <- dbinom(0,10,0.45)
p_1 <- dbinom(1,10,0.45)
p_2 <- dbinom(2,10,0.45)
p_3 <- dbinom(3,10,0.45)
p_4 <- dbinom(4,10,0.45)
p_5 <- dbinom(5,10,0.45)
F_6 <- p_0 + p_1 + p_2 + p_3 + p_4 + p_5
p_6 <- 1-F_6
p_6

# c) Analizar la distribución de probabilidad sbyacente y sus características principales

# d) Visualizar la función de densidad
dist_bin <- dbinom(0:10,10,0.45, log = F)
plot(dist_bin, xlab = "Numero de intentos", ylab = "Probabilidad", col = "blue", type = "h")
points(1:11, dist_bin, col = "brown")

