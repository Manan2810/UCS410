#Q1 Roll 12 dice simultaneously, and let X denotes the number of 6’s that appear. Calcu-
#late the probability of getting 7, 8 or 9, 6’s using R. 
#(Try using the function pbinom;
#If we set S = {get a 6 on one roll}, P(S) = 1/6 and the rolls constitute Bernoulli trials; 
#thus X ∼ binom(size=12, prob=1/6) and we are looking for P(7 ≤ X ≤ 9).

# Parameters of the binomial distribution
n <- 12  # Number of trials (rolling 12 dice)
p <- 1/6  # Probability of success (getting a 6)

# Calculate the cumulative probability
prob_7_to_9 <- pbinom(9, size = n, prob = p) - pbinom(6, size = n, prob = p)

# Print the result
print(prob_7_to_9)

#using dbinom 
prob_7_to_9 <- dbinom(9, size = n, prob = p) + dbinom(8, size = n, prob = p)+ dbinom(7, size = n, prob = p)
print(prob_7_to_9)

#Q2 Assume that the test scores of a college entrance exam fits a normal distribution.
#Furthermore, the mean test score is 72, and the standard deviation is 15.2. What is
#the percentage of students scoring 84 or more in the exam?

#approach 1

# Given parameters
mean_score <- 72
std_dev <- 15.2
score_threshold <- 84
# Calculate the z-score for the score_threshold
z <- (score_threshold - mean_score) / std_dev
# Use the pnorm function to find the cumulative probability
probability_above_threshold <- 1 - pnorm(z)
# Convert the probability to a percentage
percentage_above_threshold <- probability_above_threshold * 100
# Print the result
print(percentage_above_threshold)

#approach 2
a=pnorm(84,mean=72,sd=15.2,lower.tail=FALSE)
#percentage(p)
p=a*100
print(p)

#Q3 On the average, five cars arrive at a particular car wash every hour. Let X count the
#number of cars that arrive from 10AM to 11AM, then X ∼Poisson(λ = 5). What is
#probability that no car arrives during this time. 

ppois(0,5)

#Next, suppose the car wash above
#is in operation from 8AM to 6PM, and we let Y be the number of customers that
#appear in this period. Since this period covers a total of 10 hours, we get that Y ∼
#Poisson(λ = 5×10 = 50). What is the probability that there are between 48 and 50
#customers, inclusive?

lambda=50
ppois(50,lambda)-ppois(47,lambda)

#Q4Suppose in a certain shipment of 250 Pentium processors there are 17 defective pro-
#cessors. A quality control consultant randomly collects 5 processors for inspection to
#determine whether or not they are defective. Let X denote the number of defectives
#in the sample. Find the probability of exactly 3 defectives in the sample, that is, find
#P(X = 3).

dhyper(3,250,17,5)

#Q5 A recent national study showed that approximately 44.7% of college students have
#used Wikipedia as a source in at least one of their term papers. Let X equal the
#number of students in a random sample of size n = 31 who have used Wikipedia as a
#source.

# Define the parameters
n <- 31
p <- 0.447

#(a) How is X distributed?
#(b) Sketch the probability mass function.
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)
plot(x, pmf, type = "h", lwd = 3, xlab = "Number of students using Wikipedia as a source", ylab = "Probability", main = "Probability mass function")
#(c) Sketch the cumulative distribution function.
cdf <- pbinom(x, size = n, prob = p)
plot(x, cdf, type = "s", lwd = 3, xlab = "Number of students using Wikipedia as a source", ylab = "Cumulative probability", main = "Cumulative distribution function")
#(d) Find mean, variance and standard deviation of X.
mean1=n*p
variance=n*p*(1-p)
standard_deviation=variance^0.5
cat(mean1,variance,standard_deviation)





