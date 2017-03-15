#Importacion de librerias

#Para trazos de graficos
library(ggplot2)

#Para la transformación del marco de los datos
library(reshape2)

#Para personalizar los fondos
library(ggthemes)

#Para insertar anotaciones y leyendas
library(directlabels)

#Para manipulación de cadenas
library(stringr)


#Define el marco en el cual se trabajara, los rangos de edades y los valores
suicides <- data.frame(age_group = c('15-24', '25-44', '45-64', '65-74', '75+'),t1999 = c(15,21,20,25,42),t2014 = c(18,23,30,26,39))

#Asigna nombre a las filas de la tabla creada anteriormente, esto se realiza en variables
#melt crea filas para cada variable
suicides <- melt(suicides, id.vars = "age_group", variable.name = "year", value.name = "deaths")

#Convierten los datos en numero para ser analizados
suicides$year <- as.numeric(substr(suicides$year, 2,5))

#Busca el paquete instalado ggthemes en el equipo donde esta corriendo
ls("package:ggthemes")[str_detect(ls("package:ggthemes"), "theme_")]

#Crea la interfaz geometrica de los datos a agregar
#Selecciona cual seran los ejer, colores, formas
g <- ggplot(data = suicides, aes(x = year, y = deaths, color = age_group)) + geom_line(size = 1.2, alpha = 0.7) + geom_point()

#Añade el color segun la escala a utilizar
g <- g + scale_color_manual(values = c("45-64" = "black", '15-24' = "darkturquoise", '25-44' = "darkturquoise",'65-74' = "darkturquoise", '75+' = "darkturquoise"))

#Limita los espacios de los datos a analizar
g <- g + scale_x_continuous(breaks = c(1999, 2014), limits = c(1999, 2014.5), expand = c(0, 1)) + theme_wsj() 

#Lomota los espacios donde se colocan los datos en los ejes
g <- g + scale_y_continuous(breaks = c(20, 30, 40))

#Añade texto al grafico
g <- g + annotate("text", x = 2000.5, y = 38, label = "suicides per\n 100,000 people")

#Agrupa los datos del grafico
g <- g + annotate("text", x = 2014, y = 43, label = "Age\nGroup", size = 3, fontface = "bold", hjust = .2)

#Le da color a al fondo de los graficos creados, parte trasera no donde se dibujaron los graficos
g <- g + theme(legend.position = "none", plot.background = element_rect(fill = "white"), panel.background = element_rect(fill = "white"))

#Designa espacio a los graficos dentro de la imagen mostrada
g <- g + geom_dl(aes(label = age_group, x = year + 0.2), method = "last.qp", cex = 0.5)

#Selecciona las medidas que se estan tomando
g <- g + theme(axis.ticks.x = element_line(size = 1), axis.ticks.length=unit(0.2,"m"))

#muestra la imagen creada
print(g)

#Define el tamano del grafico
ggsave(filename = "NYT_Suicide_Rates.png", plot = g, width = 4, height = 4)

