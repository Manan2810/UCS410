#(1) Use the rt(n, df) function in r to investigate the t-distribution for n = 100 and df = n − 1 and plot
#the histogram for the same.
n <- 100
df <- n-1
tdist <- rt(n, df)
print(tdist)
hist(tdist, main = "T distribution", xlab = "Input")
#(2) Use the rchisq(n, df) function in r to investigate the chi-square distribution with n = 100 and df = 2, 10, 25.
n <- 100
df <- c(2, 10, 25)
chisqdist <- rchisq(n, df)
print(chisqdist)
#(3) Generate a vector of 100 values between -6 and 6. Use the dt() function in r to find the values of a
#t-distribution given a random variable x and degrees of freedom 1,4,10,30. Using these values plot
#the density function for students t-distribution with degrees of freedom 30. Also shows a comparison
#of probability density functions having different degrees of freedom (1,4,10,30).
x <- seq(-6, 6, length = 100)
df <- c(1, 4, 10, 30)
tdist1 <- dt(x, df[1])
tdist4 <- dt(x, df[2])
tdist10 <- dt(x, df[3])
tdist30 <- dt(x, df[4])
plot(x, tdist30, xlab = "Input", ylab = "Distribution", , main = "T Distribution", type = "l")

plot(x, tdist30, xlab = "Input", ylab = "Distribution", , main = "T Distribution", type = "l")
lines(x, tdist10, col="blue")
lines(x, tdist4, col="red")
lines(x, tdist1, col="green")
legend(x = "topleft", legend = c("DF1","DF4","DF10","DF30"), fill = c("green","red","blue","black"), bg = "lightblue")

#(4) Write a r-code
#(i) To find the 95th percentile of the F-distribution with (10, 20) degrees of freedom.
x <- 0.95
df1 <- 10
df2 <- 20
qfdist1 <- qf(x, df1, df2, lower.tail = TRUE)
print(qfdist1)
#(ii) To calculate the area under the curve for the interval [0, 1.5] and the interval [1.5, +∞) of
#a F-curve with v1 = 10 and v2 = 20 (USE pf()).
x <- 1.5
df1 <- 10
df2 <- 20
ar1 <- pf(x, df1, df2, lower.tail = TRUE)
print(ar1)
ar2 <- pf(x, df1, df2, lower.tail = FALSE)
print(ar2)
print(ar1+ar2)
#(iii) To calculate the quantile for a given area (= probability) under the curve for a F-curve
#with v1 = 10 and v2 = 20 that corresponds to q = 0.25, 0.5, 0.75 and 0.999. (use the qf())
P <- c(0.25, 0.5, 0.75, 0.999)
df1 <- 10
df2 <- 20
qfdist2 <- qf(P, df1, df2)
print(qfdist1)
#(iv) To generate 1000 random values from the F-distribution with v1 = 10 and v2 = 20 (use rf())and plot a histogram.
n <- 1000
df1 <- 10
df2 <- 20
fdist <- rf(n, df1, df2)
hist(fdist, main = "F distribution", xlab = "Input")
