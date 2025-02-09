## PROBLEM 1 ##
#Read in target file (ex iris.csv)
filename <- read.csv("iris.csv")

#Specify number of rows to keep (ex 13)
number <- 13

#Return specified number of lines from top of specified file
head(filename, n = number)



## PROBLEM 2 ##
#Read in iris.csv
iris <- read.csv("iris.csv")

#Prints the last 2 columns of the last two rows of iris.csv
last2 <- tail(iris, n = 2)
last2[,4:5]

#Returns the number of observations for each species
x <- sum(iris$Species=="setosa")
print("Observations of setosa:")
sum(iris$Species=="setosa")
print("Observations of versicolor:")
sum(iris$Species=="versicolor")
print("Observations of virginica:")
sum(iris$Species=="virginica")

#Returns rows where sepal width > 3.5
iris[iris[,2]>3.5,]

#Make a csv file for setosa
setosa <- iris[iris[,5]=="setosa",]
write.csv(setosa, "setosa.csv")

#Get mean, min, and max of petal length for virginica
virginica <- iris[iris[,5]=="virginica",]
mean(virginica[,3])
max(virginica[,3])
min(virginica[,3])
