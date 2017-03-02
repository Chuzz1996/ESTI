# Generar matrix aleatoria de 30x3
# rnorm(x,y,z) donde x, la cantidad de datos a generar
# y, la media de la distribucion normal que se quiere
# z, la desviacion estandar de la distribucion normal que se quiere
# matriz(datos,filas,columnas) , donde datos sera los datos que se almacenan en la matriz
# filas, la cantidad de filas que va a tener la matriz
# columnas, la cantidad de columnas que va a tener la matriz

m <- matrix(data=cbind(rnorm(30, 0), rnorm(30, 2), rnorm(30, 5)), nrow=30, ncol=3)

# La funcion apply genera un resultado bajo la funcion dada
# apply(datos,x={1 | 2 | 1:2}, funcion)
# datos, los datos a revisar
# x, este solo toma como valor 1, 2 o 1:2 que significa
# filas, columnas y ambas respectivamente
# funcion, la forma de ajustar los datos obtenidos
 
apply(m, 1, mean)
apply(m, 2, mean)
apply(m, 2, function(x) length(x[x<0]))
apply(m, 2, function(x) is.matrix(x))
apply(m, 2, is.vector)
apply(m, 2, length(x[x<0]))
apply(m, 2, function(x) mean(x[x>0]))

# sapply(datos, funcion), forma mas general de apply y siempre lo retorna como un vector
# datos, los datos a revisar
# funcion, la forma de ajustar los datos obtenidos
#
# lapply(datos, funcion), forma general de apply pero retorna una lista
# datos, los datos a revisar 
# funcion, la forma de ajustar los datos obtenidos

sapply(1:3, function(x) x^2)
lapply(1:3, function(x) x^2)
sapply(1:3, function(x) x^2, simplify=F)
unlist(lapply(1:3, function(x) x^2))
sapply(1:3, function(x) mean(m[,x]))
sapply(1:3, function(x, y) mean(y[,x]), y=m)

