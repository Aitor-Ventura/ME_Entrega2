# Laboratorio 4 ej 1
library(pyramid)
poblacion <- read.table("piramdies.txt", header=T, sep=",")
attach(poblacion)

poblacion_2018 <- poblacion[YEAR=="2018",]
poblacion_2018_c <- poblacion_2018[1:3]
pyramid(poblacion_2018_c)

poblacion_2017 <- poblacion[YEAR=="2017",]
poblacion_2017_c <- poblacion_2017[1:3]
pyramid(poblacion_2017_c)

poblacion_2016 <- poblacion[YEAR=="2016",]
poblacion_2016_c <- poblacion_2016[1:3]
pyramid(poblacion_2016_c)

poblacion_2015 <- poblacion[YEAR=="2015",]
poblacion_2015_c <- poblacion_2015[1:3]
pyramid(poblacion_2015_c)

poblacion_2014 <- poblacion[YEAR=="2014",]
poblacion_2014_c <- poblacion_2014[1:3]
pyramid(poblacion_2014_c)

poblacion_2013 <- poblacion[YEAR=="2013",]
poblacion_2013_c <- poblacion_2013[1:3]
pyramid(poblacion_2013_c)

poblacion_2012 <- poblacion[YEAR=="2012",]
poblacion_2012_c <- poblacion_2012[1:3]
pyramid(poblacion_2012_c)

poblacion_2011 <- poblacion[YEAR=="2011",]
poblacion_2011_c <- poblacion_2011[1:3]
pyramid(poblacion_2011_c)

poblacion_2010 <- poblacion[YEAR=="2010",]
poblacion_2010_c <- poblacion_2010[1:3]
pyramid(poblacion_2010_c)

poblacion_2009 <- poblacion[YEAR=="2009",]
poblacion_2009_c <- poblacion_2009[1:3]
pyramid(poblacion_2009_c)

poblacion_2008 <- poblacion[YEAR=="2008",]
poblacion_2008_c <- poblacion_2008[1:3]
pyramid(poblacion_2008_c)

poblacion_2007 <- poblacion[YEAR=="2007",]
poblacion_2007_c <- poblacion_2007[1:3]
pyramid(poblacion_2007_c)

poblacion_2006 <- poblacion[YEAR=="2006",]
poblacion_2006_c <- poblacion_2006[1:3]
pyramid(poblacion_2006_c)

poblacion_2005 <- poblacion[YEAR=="2005",]
poblacion_2005_c <- poblacion_2005[1:3]
pyramid(poblacion_2005_c)

poblacion_2004 <- poblacion[YEAR=="2004",]
poblacion_2004_c <- poblacion_2004[1:3]
pyramid(poblacion_2004_c)

poblacion_2003 <- poblacion[YEAR=="2003",]
poblacion_2003_c <- poblacion_2003[1:3]
pyramid(poblacion_2003_c)

poblacion_2002 <- poblacion[YEAR=="2002",]
poblacion_2002_c <- poblacion_2002[1:3]
pyramid(poblacion_2002_c)

poblacion_2001 <- poblacion[YEAR=="2001",]
poblacion_2001_c <- poblacion_2001[1:3]
pyramid(poblacion_2001_c)

poblacion_2000 <- poblacion[YEAR=="2000",]
poblacion_2000_c <- poblacion_2000[1:3]
pyramid(poblacion_2000_c)
