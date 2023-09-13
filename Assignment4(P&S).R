#Q1 The probability distribution of X, the number of imperfections per 10 meters of a
#synthetic fabric in continuous rolls of uniform width, is given as
#x 0 1 2 3 4
#p(x) 0.41 0.37 0.16 0.05 0.01
#Find the average number of imperfections per 10 meters of this fabric.
#(Try functions sum( ), weighted.mean( ), c(a %*% b) to find expected value/mean.

x=c(0,1,2,3,4)
px=c(0.41,0.37,0.16,0.05,0.01)
sum(x*px)
weighted.mean(x,px)
c(x%*%px)

#Q2 The time T, in days, required for the completion of a contracted project is a random
#variable with probability density function f(t) = 0.1 e(-0.1t)
#for t > 0 and 0 otherwise. Find the expected value of T.
#Use function integrate( ) to find the expected value of continuous random variable T.

func<-function(t){
  0.1*exp(-0.1*t)*t
}
integrate(func,lower=0,upper=Inf)

#Q3 A bookstore purchases three copies of a book at $6.00 each and sells them for $12.00
#each. Unsold copies are returned for $2.00 each. Let X = {number of copies sold} and
#Y = {net revenue}. If the probability mass function of X is
#x 0 1 2 3
#p(x) 0.1 0.2 0.2 0.5
#Find the expected value of Y.

x<-c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)
cp<-18
sp<-(10*x+6)
y<-10*x-12
py=px
sum(y*py)

#Q4Find the first and second moments about the origin of the random variable X with
#probability density function f(x) = 0.5e^-|x|, 1 < x < 10 and 0 otherwise. Further use the
#results to find Mean and Variance.
#(kth moment = E(X^k), Mean = first moment and Variance = second moment – Mean^2.

func<-function(x){
  0.5*exp(-abs(x))*x
}
first_moment=integrate(func,lower=1,upper=10)$value
m=first_moment
print(m)
func2<-function(x){
  0.5*exp(-abs(x))*x*x
}
second_moment=integrate(func2,lower=1,upper=10)$value
Variance<-second_moment-(m*m)
Variance



#Q5Let X be a geometric random variable with probability distribution
#f(x) =3/4(1/4)^x−1, x = 1,2,3, ...
#Write a function to find the probability distribution of the random variable Y = X2
#and
#find probability of Y for X = 3. Further, use it to find the expected value and variance of
#Y for X = 1,2,3,4,5.

func<-function(y){
  (3/4)*((1/4)^(sqrt(y)-1))
}
x=3
y=x*x
func(y)

x<-c(1,2,3,4,5)
y=x*x
func(y)
sum(y*func(y))
var<-sum(y*y*func(y))-(sum(y*func(y))*sum(y*func(y)))
var
