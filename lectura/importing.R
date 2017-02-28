## ~ Se usa para moverse en todos los directorios hasta la carpeta Documents
## <- Se usa para asignar lo que lee a la variable prueba

##Set the working directory
setwd("/Users/JuanHerrera/Documents/ESTI")
##Get current working directory
getwd()
##Code install packages
install.packages("xlsx")
install.packages("csv")
install.packages("sas7bdat")
install.packages("rJava")
install.packages("xlsxjars")

##Import excel files
#Se importa la libreria readxl para leer archivos de excel
library(readxl)
prueba <- read_excel("~/Documents/ESTI/archivos/prueba.xlsx")
#View se usa para mostrar prueba en pantalla
View(prueba)

##Import csv files
#Se importa la libreria readr para leer archivos csv
library(readr)
prueba2 <- read_csv("~/Documents/ESTI/archivos/prueba.csv")
View(prueba2)

##Import txt files
hola <- read.table("~/Documents/ESTI/archivos/Hola.txt")
View(hola)

##Importy sav files
#Se importa la libreria foreign para leer archivos sav
library(foreign)
prueba3 <- read.spss("~/Documents/ESTI/archivos/base.sav")
View(prueba3)

##Export xlsx files
#Se importa la libreria xlsx para exportar archivos de excel
library(xlsx)
write.xlsx(prueba2, "~/Documents/ESTI/archivos/pruebaExport.xlsx")

##Export txt files
## Se usa write.table para escribir archivos planos
write.table(hola,"~/Documents/ESTI/archivos/prubeaExport1.txt")

##Export csv files
## Se usa write.csv para escribir archivos de formato csv
write.csv(hola,"~/Documents/ESTI/archivos/pruebaExport.csv")

##Export sav files
##Se usa la libreria foreign para exportar archivos de formato sav
library(foreign)
