
library(dslabs)
data(movielens)

str(movielens)
class(movielens$title)
class(movielens$genres)
levels(movielens$genres)

log(1024, base = 4)
(1 - sqrt(33)) / 4
x <- c(2, 43, 27, 96, 18)
rank(x)
which.min(x)

times <- c(10, 30, 40, 50)
times <- times/60
4.0/times[4]/60
#my_df = data.frame(names = name, distances = distance, times = time)
#str(my_df)
