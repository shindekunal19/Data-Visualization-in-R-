plot(1,3)                          #plot() using two values
plot(c(1,2,3,4),c(9,8,7,6))        #plot() using multiple values 

#using variables x & y
x <- c(1,3,4,5)
y <- c(7,4,3,2)
plot(x,y)

#Sequence of point 
plot(1:10,type = "l")         #"l" to draw line 

#using xlab & ylab to specify x and y axis 
plot(1:10,main = "My Graph",xlab = "The x-axis",ylab = "The y=axis",cex=2)

#col to add colour to the point
plot(1:10,col = "red")

#cex 1 ia default, 0.5 is 50% small, 2 is 100% large
plot(1:10,main = "My Graph",xlab = "The x-axis",ylab = "The y=axis",cex=2)

#Double line, plot() to plot line 1 and lines() to plot line2 
line1 <- c(1,2.5,3,4)
line2 <- c(1,1,3.5,4)
plot(line1,type="l",col="blue")
lines(line2,type="b",col="red")

#Scatter Plot
x <- c(20,30,51,45,66,74)
y <- c(32,55,74,33,21,80)
plot(x,y,main = "Observation of cars",xlab = "Cars age",ylab = "Cars Speed",col="orange")

#Pie Chart
#Create a vector of pie
x <- c(20,40,55,80)
#Create a vector of label
mylabel <- c("Apple","Banana","Mango","Grapes")
#Create a vector of colour
color <- c("red","yellow","orange","green")
#Display the pie chart with labels 
pie(x,label=mylabel,main="Fruits",col = color)
#Diplay the legend
legend("bottomright",mylabel,fill = color)

#Bar Chart 
Name <- c("Kunal","Sarath","Justin","Elroy","Alita")
Age <- c(22,23,21,22,20)
barplot(Age,names.arg = Name,col = "yellow" )

#Horizontal Bar 
x <- c("Male","Female")
y <- c(20,30)
barplot(y,names.arg = x,col = "red", horiz = TRUE)

#Create a Histogram
v <- c(9,13,15,5,22,14,55,65,22,32,41,61)
hist(v,xlab = "Weight", col="green", border = "red" , xlim = c(0,70), ylim = c(0,5),
breaks = 5)

#Box plot
mtcars
View(mtcars)
boxplot(mpg~cyl, data = mtcars, xlab = "Number of Cylinder",
        ylab = "Miles per Gallon",main = "Mileage Data")


# Data Visualization using Libraries
library(ggplot2)
data()
#Iris Dataset 
data(iris)
View(iris)
head(iris)
dim(iris)
summary(iris)

#Scatter plot
library(ggplot2)
ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,col=Species,shape=Species))+geom_point()


#mtcar DataSet
#Barchart
library(ggplot2)
ggplot(mtcars,aes(x = gear,fill = "gear"))+geom_bar()

#histogram plot\
library(ggplot2)
ggplot(mtcars,aes(x=mpg))+geom_histogram()

#BoxPlot
library(ggplot2)
ggplot(mtcars,aes(x=as.factor(cyl),y=mpg,col = "cyl"))+geom_boxplot()

#Pie Chart
library(ggplot2)
ggplot(mtcars,aes(x = "",y = mpg, fill = as.factor(cyl)))+geom_bar(stat = "identity", width = 1) + coord_polar("y",start = 0)


View(IT_sector_Finance)
library(ggplot2)
ggplot(IT_sector_Finance,aes(x= "",y= "P/E",fill = Company))+geom_bar(stat = "identity", width = 1) + coord_polar("y",start = 0)

library(ggplot2)
ggplot(IT_sector_Finance,aes(x="",y="Company",col= Company))+geom_point()


library(ggplot2)
ggplot(IT_sector_Finance,aes(x = Company,y = "Mar Cap Rs.Cr.",fill = Company)) +geom_boxplot()


library(ggplot2)
ggplot(IT_sector_Finance,aes(x=Company,fill = Company))+geom_bar+coord_flip()


getwd()
setwd("C:\\Users\\Kunal shinde\\OneDrive\\Documents\\R basic")


data <- read.csv("sample_csv.csv")
print(data)


#bar chart
library(ggplot2)
ggplot(data,aes(x = Region,fill = "Region"))+geom_bar()


library(ggplot2)
ggplot(data,aes(x=as.factor(Units),y=Region,col = "Units"))+geom_boxplot()


#histogram plot\
library(ggplot2)
ggplot(data,aes(x=Region))+geom_histogram()


#Pie Chart
library(ggplot2)
ggplot(mtcars,aes(x = "",y = Region, fill = Units))+geom_bar(stat = "identity", width = 1) + coord_polar("y",start = 0)




