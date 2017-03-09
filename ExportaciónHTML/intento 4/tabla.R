library(tableHTML)
#create an html table as string
tableHTML(mtcars)

#and to export in a file
write_tableHTML(tableHTML(mtcars), file = 'tabla.html')