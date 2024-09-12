#Codigo para problema 1

#problema1

##pregunta 1
mis_dades <- mtcars #asignamos la base de datos al nombre mis_dades
mis_dades
mis_dades$qsec #extraemos la fila de la base de datos
mean(mis_dades$qsec) #para hacer la mediana artmetica se usa mean 
#17.84875
##

hist(mis_dades$qsec, breaks=9) #es la representacion grafica de los datos en la que se basa
#en la cantidad de veces que se ha repetido un intervao de numeros 
table(cut(mis_dades$qsec,9)) #te dice cuantas observaciones ha tenido cada intervalo. Te da la frequencia absoluta

table(cut(mis_dades$qsec,9))/32 #dividiendo entre el total de las observaciones obtenemos la frequencia relativa de las observaciones
ni<-table(cut(mis_dades$qsec,9))#frequencia absoluta
fi<-table(cut(mis_dades$qsec,9))/32#frequencia relativa
Ni<-cumsum(table(cut(mis_dades$qsec,9))) #frequencia absoluta acumulada
Fi=cumsum(table(cut(mis_dades$qsec,9))/32)#frequencia relativa acumulada
tabla<- data.frame(ni,fi,Ni,Fi) #con el comando data.frame creamos una base de daatos 
tabla

##pregunta 2
median(mis_dades$drat) # encontramos la mediana de la variable drat 
#3.695

hist(mis_dades$drat)
sort(mis_dades$drat) #ordeno la lista de menor a mayor

## pregunta 3
quantile(mis_dades$drat)#te dice en el porcentaje que quieras (0,25,50,75,100 por defecto) cual es el numero que corta el intervalo. el quantil
#3.080

##pregunta 4
quantile(mis_dades$mpg,0.18)
#15.116 

##pregunta 5
IQR(mis_dades$cyl)
quantile(mis_dades$cyl)

##pregunta6
sd(mis_dades$qsec)
#1.786943

#pregunta7
var(mis_dades$cyl)
#3.189516