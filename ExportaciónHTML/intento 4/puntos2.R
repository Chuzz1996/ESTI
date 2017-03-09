library(ggplot2)
library(plotly)

d <- diamonds[sample(nrow(diamonds), 500), ]
plot_ly(d, x = d$carat, y = d$price, 
        text = paste("Clarity: ", d$clarity),
        mode = "markers", color = d$carat, size = d$carat)

saveWidget(plot_ly(d, x = d$carat, y = d$price, 
                   text = paste("Clarity: ", d$clarity),
                   mode = "markers", color = d$carat, size = d$carat), file="barras.html")
