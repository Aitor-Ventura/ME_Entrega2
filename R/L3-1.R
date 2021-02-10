empleo <- read.table("Empleo.txt", header = T, dec = ".", sep = ",")

#a)
attach(empleo)
empleo_a <- empleo[order(Pais),]
empleo_a

#b)
mean(Duracion)
median(Duracion)
quantile(Duracion)

#c)
sd(Duracion)

#d)
empleo_b <- empleo[order(Duracion),]
empleo_b

#e)
boxplot(Duracion, xlab = "Países UE", ylab = "Duracion media en semanas", col = "white")

#f)
abline(h = Duracion[Pais == "España"], col = "green")

#g)
par(mar = c(5,5,1,1) + 0.1)
plot(1: nlevels(Pais), empleo_b$Duracion, xaxt = "n", type = "h", col = "blue", xlab =
       "Paises UE", ylab = "Duracion media en semanas")
axis(side = 1, at = 1 : length(Pais), labels = F)
points(which(Pais == "España"), Duracion[Pais == "España"], type = "h", col = "red")
text(1: nlevels(Pais), par("usr")[3] - 0.1, labels = Pais, srt = 30, pos = 2, cex = 0.5, xpd = T)

par(mar = c(5,5,1,1) + 0.1)
plot(1: nlevels(Pais), Duracion, xaxt = "n", type = "h", col = "dark blue", xlab = 
       "Paises UE", ylab = "Trabajo semanal en horas")
axis(side = 1, at = 1 : length(Pais), labels = F)
text(1: nlevels(Pais), par("usr")[3] - 0.1, labels = Pais, srt = 30, pos = 2, cex = 0.5, xpd = T)
points(which(Pais=="España"), Duracion[Pais=="España"], type = "h", col = "red")
