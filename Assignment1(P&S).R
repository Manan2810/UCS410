#revision of assignment 1
#Q1 Create a vector c = [5,10,15,20,25,30] and write a program which returns the maximum and minimum of this vector.
a=seq(5,30,by=5)
max1=max(a)
min1=min(a)
print(min1)
print(max1)

#Q2 Write a program in R to find factorial of a number by taking input from user. Please print error message if the input number is negative.
num=as.integer(readline(prompt="enter a number"))
factorial=1
if (num<0){
  print ("The number is negative.")
}else if (num==0){
  print ("The factorial of 0 is 1.")
}else{
  for (i in 1:num) {
    factorial=factorial*i
  }
  print (paste ("the factorial of", num, "is", factorial))
}

#Q3 Write a program to write first n terms of a Fibonacci sequence. You may take n as an input from the user.
n=as.integer(readline(prompt="enter a number"))
num1=0
num2=1
print (paste ("the fibonacci series of first", n,"terms is"," "))
print(num1)
print(num2)
for(i in 3:n){
  num3=num1+num2
  print(num3)
  num1=num2
  num2=num3
}

#Q4 Write an R program to make a simple calculator which can add, subtract, multiply and divide.
n1=as.integer(readline("enter value of first number"))
n2=as.integer(readline("enter value of second number"))
print("enter 1 to add")
print("enter 2 to subtract")
print("enter 3 to multiply")
print("enter 4 to divide")
x=as.integer(readline("enter choice"))
ans=switch(x,n1+n2,n1-n2,n1*n2,n1/n2)
print(paste("answer is ",ans))

#Q5 Explore plot, pie, barplot etc. (the plotting options) which are built-in functions in R.
x=c(1,2,3,4,5)
y=c(4,5,6,7,8)

#plot
plot(x,y,xlab = "x axis",ylab = "y axis",main="my graph",col="red",cex=2,pch=5)
#cex used to change the size
#pch used to change the shape(0-25 is the range)
#type="l" plots a line graph

#pie
x <- c(10,20,30,40)
# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")
# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")
# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")
# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)
legend("bottomright", mylabel, fill = colors)

# barplot
# x-axis values
x <- c("A", "B", "C", "D")
# y-axis values
y <- c(2, 4, 6, 8)
barplot(y, names.arg = x)
#names.arg defines the names of each observation in the x-axis
barplot(y, names.arg = x, col = "red")
# setting the width
barplot(y, names.arg = x, width = c(1,2,3,4))
# horizontal
barplot(y, names.arg = x, horiz = TRUE,col='red')
