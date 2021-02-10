# A un operador de lavado de coches se le paga en función del número de vehículos que lava.
# Supóngase que las probabilidades de que entre las 17:00 y 18:00 de cualquier jueves cobre una
# cierta cantidad C en euros que vienen dadas por la siguiente tabla:
#
# C |   7  |   9  | 11  | 13  | 15  | 17  |
# P | 1/12 | 1/12 | 1/4 | 1/4 | 1/6 | 1/6 | 
#
# Calcular la ganancia esperada del operador para este tramo horario y establecer una medida coherente
# de su variabilidad. 

prob <- c(1/12, 1/12, 1/4, 1/4, 1/6, 1/6)
dinero <- c(7,9,11,13,15,17)
ganancia <- sum(dinero*prob)
ganancia

# El valor esperado de cualquier variable aleatoria discreta se puede obtener multiplicando cada uno
# de los valores x1, x2, ..., xn de la variable aleatoria X por su probabilidad correspondiente f(x)
# y sumando los productos.

variabilidad <- 1/4 - 1/12
variabilidad

# La variabilidad se puede obtener con la diferencia del valor más alto con el valor más bajo.