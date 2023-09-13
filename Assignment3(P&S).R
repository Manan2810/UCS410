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
p=a*100
print(p)






