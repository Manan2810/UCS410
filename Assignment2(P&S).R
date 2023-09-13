#Q1(a) Suppose there is a chest of coins with 20 gold, 30 silver and 50 bronze coins.
#You randomly draw 10 coins from this chest. Write an R code which will give us the
#sample space for this experiment. (use of sample(): an in-built function in R)

gold=20
silver=30
bronze=50
drawing_coins=10
data=c(rep("gold",20),rep("silver",30),rep("bronze",50))
samplespace=sample(data,drawing_coins,replace = FALSE)
print(samplespace)

#Q1(b)In a surgical procedure, the chances of success and failure are 90% and 10%
#respectively. Generate a sample space for the next 10 surgical procedures performed.
#(use of prob(): an in-built function in R)

surgery=c("success","fail")
print(surgery)
sample(surgery,10,replace = TRUE,prob=c(0.9,0.1))

#Q2 A room has n people, and each has an equal chance of being born on any of the 365
#days of the year. (For simplicity, we’ll ignore leap years). What is the probability
#that two people in the room have the same birthday?
#(a) Use an R simulation to estimate this for various n.
n<-23
prod<-1
for (i in 1:n-1){
  prod=prod*(1-(i/365))
}
#probability of none of them have same birthday
print (prod)
#probability of have bday on same day
print(1-prod)

#Q2(b) Find the smallest value of n for which the probability of a match is greater than .5.
n<-c(1:1000)
prod<-1
for(i in n[1]:n[length(n)-1]){
  prod<-prod*(1-(i/365))
  if((1-prod)>=0.5){
    print(n[i+1])
    break
  }
}

#Q3 Write an R function for computing conditional probability. Call this function to do
#the following problem:
#Suppose the probability of the weather being cloudy is 40%. Also suppose the prob-
#ability of rain on a given day is 20% and that the probability of clouds on a rainy day
#is 85%. If it’s cloudy outside on a given day, what is the probability that it will rain
#that day?
A=0.4
B=0.2
pAB=0.85
bayes=function(A,B,pAB){
  pBA=(B*pAB)/A
  return(pBA)
}

pBA=bayes(A,B,pAB)
print(pBA)

#The iris dataset is a built-in dataset in R that contains measurements on 4 different
#attributes (in centimeters) for 150 flowers from 3 different species. Load this dataset
#and do the following:
#(a) Print first few rows of this dataset.
head(iris)
#(b) Find the structure of this dataset.
dim(iris)
str(iris)
#(c) Find the range of the data regarding the sepal length of flowers.
print(max(iris$Sepal.Length, na.rm=TRUE)-min(iris$Sepal.Length, na.rm=TRUE))
#(d) Find the mean of the sepal length.
print(mean(iris$Sepal.Length))
#(e) Find the median of the sepal length.
print(median(iris$Sepal.Length))
#(f) Find the first and the third quartiles and hence the interquartile range.
print(quantile(iris$Sepal.Length,probs = c(.25,.75)))
print(IQR(iris$Sepal.Length))
#(g) Find the standard deviation and variance.
sd(iris$Sepal.Length)
var(iris$Sepal.Length)
#(h) Use the built-in function summary on the dataset Iris.
summary(iris)
