library(gtools)
library(tidyverse)
set.seed(16)
act_scores <- rnorm(10000, 20.9, 5.7)

mean(act_scores)
sd(act_scores)
sum(act_scores >= 36)
sum(act_scores > 30)/length(act_scores)
sum(act_scores <= 10)/length(act_scores)
x <- 1:36
f_x <- dnorm(x, 20.9, 5.7)
#plot(x, f_x)

z_act_scores <- (act_scores-mean(act_scores))/sd(act_scores)
sum(z_act_scores > 2)/length(z_act_scores)

2*sd(act_scores)+mean(act_scores)

qnorm(.975, mean(act_scores), sd(act_scores))

ceiling(qnorm(0.95, mean(act_scores), sd(act_scores)))

qnorm(0.95, 20.9, 5.7)

sample_quantiles <- seq(0.01, 0.99, 0.01)
quantile(act_scores, sample_quantiles)

theoretical_quantiles <- qnorm(sample_quantiles, 20.9, 5.7)
qqplot(y=sample_quantiles, x=theoretical_quantiles)


