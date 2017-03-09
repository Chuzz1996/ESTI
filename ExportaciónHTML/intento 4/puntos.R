
# Sample Session 
install.packages('R2HTML')
install.packages('threejs')
install.packages('htmlwidgets')
install.packages('manipulate')


library(htmlwidgets)
library(threejs)
library(R2HTML)

# Create the data
data <- rnorm(100, sd=15)+1:100
# Create a simple scatterplot
# with long labels to enhance 
# size comparison
my_sc_plot <- function(data){
  par(cex.lab=1.5, cex.main=2)
  plot(data, 
       main="A simple scatterplot", 
       xlab="A random variable plotted", 
       ylab="Some rnorm value",
       col="steelblue")
  x <- 1:100
  abline(lm(data~x), lwd=2)
}
my_sc_plot(data)
puntos <- my_sc_plot(data)

saveWidget(puntos, file="puntos.html")
    