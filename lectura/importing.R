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
install.packages("RJDBC")
install.packages("DBI")

##Import excel files
#Se importa la libreria readxl para leer archivos de excel
library(readxl)
divipola <- read_excel("~/Documents/ESTI-Master/archivos/Listado_2012.xlsx")
#View se usa para mostrar prueba en pantalla
View(divipola)

##Import csv files
#Se importa la libreria readr para leer archivos csv
library(readr)
prueba2 <- read_csv("~/Documents/ESTI-Master/archivos/EncuestaTransporte.csv")
View(prueba2)

##Import txt files
hola <- read.table("~/ESTI-Master/archivos/Hola.txt")
View(hola)

##Importy sav files
#Se importa la libreria foreign para leer archivos sav
library(foreign)
prueba3 <- read.spss("~/ESTI-Master/archivos/base.sav")
View(prueba3)

##Export xlsx files
#Se importa la libreria xlsx para exportar archivos de excel
library(xlsx)
write.xlsx(prueba2, "~/ESTI-Master/archivos/pruebaExport.xlsx")

##Export txt files
## Se usa write.table para escribir archivos planos
write.table(hola,"~/ESTI-Master/archivos/prubeaExport1.txt")

##Export csv files
## Se usa write.csv para escribir archivos de formato csv
write.csv(hola,"~/ESTI-Master/archivos/pruebaExport.csv")

##Export sav files
##Se usa la libreria foreign para exportar archivos de formato sav
library(foreign)

#Conecci??n a DB
Sys.setenv(JAVA_HOME='/path/to/java_home')
options(java.parameters="-Xmx2g")
library(rJava)

.jinit()

library(DBI)
library(RJDBC)
drv <- JDBC("oracle.jdbc.OracleDriver","/Users/JuanHerrera/Documents/ESTI-Master/ojdbc6.jar")
con <- dbConnect(drv, "jdbc:oracle:thin:@//granate.is.escuelaing.edu.co:1521", "bd2103021","bd2103021")


dbWriteTable(con, "TEST_TABLE", test_table)
dbGetQuery(con, "select count(*) from MUNICIPIO")
d <- dbReadTable(con, "TEST_TABLE")
dbDisconnect(con)