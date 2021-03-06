# Se est�n analizando las proporciones del presupuesto que una empresa industrial del
# Pol�gono de Arinaga destina a controles medioambientales y de contaminaci�n. Para ello
# se lleva a cabo un proyecto de recopilaci�n de datos t�pico de Data Science. En el desarrollo
# de este se determina que la distribuci�n de tales proporciones est� dada por:
#
# f(y) = (5(1-y)^4 0 <= y <= 1) && (0 y != primer caso)
#
# a) Verificar que la funci�n de densidad anterior es v�lida
# b) �Cu�l es la probabilidad de que una empresa elegida al azar gaste menos del 10%
#    de su presupuesto en controles medioambientales y de contaminaci�n?
# c) �Cu�l es la probabilidad de que una empresa elegida al azar gaste m�s del 50% de
#    su presupuesto en controles medioambientales y de contaminaci�n?
# d) Visualizar gr�ficamente los apartados b) y c)

#a) es definida
#b)
p_m_10 <- function(x) 5*(1-x)^4
integral_10 <- integrate(p_m_10, lower = 0, upper = 0.1)
integral_10

#c)
p_M_50 <- function(x) 5*(1-x)^4
integral_50 <- integrate(p_M_50, lower = 0.5, upper = 1)
integral_50

#d)
p <- c("P(X<0.1)","P(X>0.5)")
integrales <- c(0.40951, 0.03125)
barplot(integrales,width = 1,space = NULL,names.arg = p, col = "green", main = 
          "Comparativa de probabilidades", ylim = c(0,0.5))
