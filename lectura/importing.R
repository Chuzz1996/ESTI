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
library(readxl)
prueba <- read_excel("~/Documents/ESTI/prueba.xlsx")
View(prueba)

##Import csv files
library(readr)
prueba2 <- read_csv("~/Documents/ESTI/prueba2.csv")
View(prueba2)

##Import txt files
hola <- read.table("~/Documents/ESTI/hola.txt")
View(hola)

##Export xlsx files
library(xlsx)
wb <- createWorkbook(type = "xlsx")
saveWorkbook(wb,"~/Documents/ESTI/pruebaExport.xlsx")

##Export txt files
write.table(hola,"~/Documents/ESTI/prubeaExport1.txt")

##Export csv files
write.csv(hola,"~/Documents/ESTI/pruebaExport.csv")
