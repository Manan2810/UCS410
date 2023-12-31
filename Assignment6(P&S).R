library(pracma)
# The joint probability density of two random variables X and Y is 
# f(x,y) = 
# 0;
#  2(2x+3y)/5;
# 0≤x,y≤1 elsewhere
func1 <- function(x, y) 2*(2*x + 3*y)/5
# Then write a R-code to
# (i) check that it is a joint density function or not? (Use integral2()) 
I <- integral2(func1, 0, 1, 0, 1)
print(I$Q)
if(I$Q == 1){
  print("As value of integral is equal to 1, therefore it is a joint density function")
} else {
  print("As value of integral is not equal to 1, therefore it is not a joint density function")
}
#(ii) find marginal distribution g(x) at x = 1.
gfunc1_x <- function(y) func1(1, y)
I_mdofxequal1 <- integral(gfunc1_x, 0, 1)
print(I_mdofxequal1)
# (iii) find the marginal distribution h(y) at y = 0.
gfunc1_y <- function(x) func1(x, 0)
I_mdofyequal0 <- integral(gfunc1_y, 0, 1)
print(I_mdofyequal0)
# (iv) find the expected value of g(x, y) = xy.
gfunc1_xy <- function(x, y) x*y*2*(2*x + 3*y)/5
I_mdofxy <- integral2(gfunc1_xy, 0, 1, 0, 1)
print(I_mdofxy$Q)
# Ques2 The joint probability mass function of two random variables X and Y is f(x,y)={(x+y)/30; x=0,1,2,3; y=0,1,2}
func2 <- function(x, y) (x + y)/30
x <- c(0:3)
y <- c(0:2)
#(i) display the joint mass function in rectangular (matrix) form.
mat <- matrix(c(func2(0, 0:2), func2(1, 0:2), func2(2, 0:2), func2(3, 0:2)), nrow = 4, ncol = 3, byrow = TRUE)
print(mat)
#(ii) check that it is joint mass function or not? (use: Sum())
s <- sum(mat)
print(s)
if(s == 1){
  print("As value of sum is equal to 1, therefore it is a joint density function")
} else {
  print("As value of sum is not equal to 1, therefore it is not a joint density function")
}
#(iii) find the marginal distribution g(x) for x = 0, 1, 2, 3. (Use:apply())
gx_mdofxequal0to3 <- apply(mat, 1 , sum)
print(gx_mdofxequal0to3)
#(iv) find the marginal distribution h(y) for y = 0, 1, 2. (Use:apply())
gy_mdofyequal0to2 <- apply(mat, 2 , sum)
print(gy_mdofyequal0to2)
#(v) find the conditional probability at x = 0 given y = 1.
CP <- mat[1,2]/gy_mdofyequal0to2[2]
print(CP)
#(vi) find E(x), E(y), E(xy), V ar(x), V ar(y), Cov(x, y) and its correlation coefficient.
"E(x)"
Ex <- sum(gx_mdofxequal0to3*x)
print(Ex)

"E(y)"
Ey <- sum(gy_mdofyequal0to2*y)
print(Ey)

Ex2 <- sum(gx_mdofxequal0to3*x*x)
"Var(x)"
Vx <- Ex2 - (Ex*Ex)
print(Vx)

Ey2 <- sum(gy_mdofyequal0to2*y*y)
"Var(y)"
Vy <- Ey2 - (Ey*Ey)
print(Vy)

"E(xy)"
func2xy <- function(x, y) x*y*(x + y)/30
matxy <- matrix(c(func2xy(0, 0:2), func2xy(1, 0:2), func2xy(2, 0:2), func2xy(3, 0:2)), nrow = 4, ncol = 3, byrow = TRUE)
Exy <- sum(matxy)
print(Exy)

"Cov(x, y)"
cov <- Exy - Ex*Ey
print(cov)

"Correlation coefficient"
cc <- cov/sqrt(Vx*Vy)
print(cc)
