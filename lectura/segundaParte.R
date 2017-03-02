#Define vector
numbers = c(23, 13, 5, 7, 31)
names = c("edwin", "alice", "bob")

#Define Factor: take on a limited number of different values; such variables are often refered to as categorical variables.
v <- c(1,3,5,8,2,1,3,5,3,5)
x <- factor(v)
""  Levels are used when displaying the factor's values  ""
data = c(1,2,2,3,1,2,3,3,1,2,3,3,1)
fdata = factor(data)
"" Change labels  ""
rdata = factor(data,labels=c("I","II","III"))

#"" TEST: time = factor(c("Lunch","Dinner","Breakfast"), levels=c("Lunch","Dinner"))""#

#A data frame is used for storing data tables. It is a list of vectors of equal length
books = data.frame(
    title = c("harry potter", "war and peace", "lord of the rings"),
    author = c("rowling", "tolstoy", "tolkien"),
    num_pages = c("350", "875", "500")
)

#AES Function: Generate aesthetic mappings that describe how variables in the data are mapped to visual properties (aesthetics) of geoms.
#ggplot specify data frame and aesthetics (visual characteristics that represent data)
 #aes fill parameter let the graph a colorful representation depending a variable
   g <- ggplot(data=books, aes(x=title, y=num_pages,fill=title))

#Bar graph
  #bar color parameter border with a specific color the bars
  #bar guides variable delete the aes fill information 
  g + geom_bar(stat="identity",color="green") + guides(fill=FALSE)

#Line
  #aes group attribute: the data points must be grouped so that it knows which points to connect
  h <- ggplot(data=books, aes(x=title, y=num_pages,group=1))
  #Add points 
  h + geom_line() + geom_point()

me = structure( c(prueba3$cuestionario, prueba3$ciudad,prueba3$nse,prueba3$gen,prueba3$edad))

#Pie
 #factor(1) take into account only a column of books table
g <- ggplot(data=books, aes(x=factor(1),fill = factor(num_pages))) + geom_bar(width = 1)
g + coord_polar(theta = "y")


information = data.frame(
cuestionario = prueba3$cuestionario,
ciudad = prueba3$ciudad,
nse = prueba3$nse,
gen = prueba3$gen,
edad = prueba3$edad
)

table(prueba3$ciudad,prueba3$gen)












library(ggplot2)

ggplot(x=numbers,y=names,geom="density")
