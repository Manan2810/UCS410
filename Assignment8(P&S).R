data <- read.csv(file = "/Users/mananmehra/Downloads/Clt-data.csv")
head(data)
#A pipe manufacturing organization produces different kinds of pipes. We are given
#the monthly data of the wall thickness of certain types of pipes (data is available on
#                                                                  LMS Clt-data.csv).
#The organization has an analysis to perform and one of the basic assumption of that
#analysis is that the data should be normally distributed.
#You have the following tasks to do:
#  (a) Import the csv data file in R.
data <- read.csv(file = "/Users/mananmehra/Downloads/Clt-data.csv")
#(b) Validate data for correctness by counting number of rows and viewing the top
no_of_rows=nrow(data)
head(data,10)
#ten rows of the dataset.
#(c) Calculate the population mean and plot the observations by making a histogram.
mean(data$Wall.Thickness)
hist(data$Wall.Thickness)
#(d) Mark the mean computed in last step by using the function abline.
abline(v = mean(data$Wall.Thickness), col = "red", lwd = 2)
#See the red vertical line in the histogram? That’s the population mean. Comment on
#whether the data is normally distributed or not?
#  Now perform the following tasks:
#  (a) Draw sufficient samples of size 10, calculate their means, and plot them in R
#by making histogram. Do you get a normal distribution.
n <- 9000
s10 <- c()
for (i in 1:n)
{
  s10[i] <- mean(sample(data$Wall.Thickness, 10, replace = TRUE))
}

hist(s10)
abline(v = mean(s10), col = "red", lwd = 2)
#(b) Now repeat the same with sample size 50, 500 and 9000. Can you comment on
#what you observe.
"For size 50"
n <- 9000
s50 <- c()
for (i in 1:n)
{
  s50[i] <- mean(sample(data$Wall.Thickness, 50, replace = TRUE))
}

hist(s50)
abline(v = mean(s50), col = "red", lwd = 2)

"For size 500"
n <- 9000
s500 <- c()
for (i in 1:n)
{
  s500[i] <- mean(sample(data$Wall.Thickness, 500, replace = TRUE))
}

hist(s500)
abline(v = mean(s500), col = "red", lwd = 2)

"For size 9000"
n <- 9000
s9000 <- c()
for (i in 1:n)
{
  s9000[i] <- mean(sample(data$Wall.Thickness, 9000, replace = TRUE))
}

hist(s9000)
abline(v = mean(s9000), col = "red", lwd = 2)
#Here, we get a good bell-shaped curve and the sampling distribution approaches
#normal distribution as the sample sizes increase. Therefore, we can recommend the
#organization to use sampling distributions of mean for further analysis.
