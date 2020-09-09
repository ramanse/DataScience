#1a
1/5
#1b
1/5 * 1 + -0.25* 4/5
#1c
mu <- 44 * (1/5 * 1 + -0.25* 4/5)
mu
#1d
er <- sqrt(44) * abs(1+0.25) * sqrt(1/5*4/5)
er
#1e
1-pnorm(8,mu,er)
#1f
set.seed(21)
X <- replicate(10000, {
  sum(sample(c(1,-0.25), size=44, replace=TRUE, prob=c(1/5,4/5)))
})
sum(X>=8)/10000
#2a
mu <- 44 * (1/4 * 1 + 0* 3/4)
mu
#2b
p <- seq(0.25, 0.95, 0.05)
fu <- function(p){
  # calculate the expected value at given p
  expected_value <- 44 * (1*p + 0*(1-p))
  # calculate the standard error at given p
  standard_error <- sqrt(44) * abs(1 - 0) * sqrt(p*(1 - p))
  # calculate likelihood of score of 35 or greater
  1-pnorm(35, expected_value, standard_error)
}

sapply(p, FUN=fu)
#3a
(6*5/38 + -1*(1 - 5/38))
#3b
abs(-1 - 6) * sqrt(5/38*(1 - 5/38))
#3c
(6*5/38 + -1*(1 - 5/38))
#3d
(abs(-1 - 6) * sqrt(5/38*(1 - 5/38)))/sqrt(500)
#3e
mu <- 500 * (6*5/38 + -1*(1 - 5/38))
mu