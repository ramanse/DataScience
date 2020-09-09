library(gtools)
library(tidyverse)

str(permutations(8,3))

str(permutations(3,3))

df <- combinations(8,3)
print(df)

runners <- c("Jamaica", "Jamaica", "Jamaica", "USA", "Ecuador", "Netherlands", "France", "South Africa")
set.seed(1)

# Run Monte Carlo 10k
B <- 10000
results <- replicate(B, {
  winners <- sample(runners, 3)
  (winners[1] %in% "Jamaica" & winners[2] %in% "Jamaica" & winners[3] %in% "Jamaica")
})
mean(results)

combinations(6,2)
6*15*2
6*15*3

f <- function(entree){
  print(3*15*entree)
}
options <- seq(1:12)
sapply(options, f)

ff <- function(sides){
  3*6*nrow(combinations(sides,2))
}
options <- 2:12
sapply(options, ff)
nrow(esoph)
all_cases <- sum(esoph$ncases)
all_cases
all_controls <- sum(esoph$ncontrols)
all_controls

esoph %>% filter(alcgp == "120+") %>%
  summarize(sum_cases=sum(ncases), tot=sum(ncontrols) + sum(ncases), probability=sum_cases/tot)

esoph %>% filter(alcgp == "0-39g/day") %>%
  summarize(sum_cases=sum(ncases), tot=sum(ncontrols)+sum(ncases), probability=sum_cases/tot)

esoph %>% summarize(tot_cases = sum(ncases))
esoph %>% filter(tobgp != "0-9g/day") %>%
  summarize(smoking10_cases = sum(ncases))
122/200

esoph %>% summarize(tot_cases = sum(ncontrols))
esoph %>% filter(tobgp != "0-9g/day") %>%
  summarize(smoking10_cases = sum(ncontrols))
450/975

esoph %>% filter(alcgp == "120+") %>%
  summarize(sum_cases=sum(ncases))
45/all_cases

esoph %>% filter(tobgp == "30+") %>%
  summarize(sum_cases=sum(ncases))
31/all_cases

esoph %>% filter(alcgp == "120+" & tobgp =="30+") %>%
  summarize(sum_cases = sum(ncases))
10/all_cases

esoph %>% filter(alcgp == "120+" | tobgp =="30+") %>%
  summarize(sum_cases = sum(ncases))
66/all_cases

esoph %>% filter(alcgp == "120+") %>%
  summarize(contr_sum = sum(ncontrols), probability = contr_sum/all_controls)

esoph %>% filter(alcgp == "120+") %>%
  summarize(contr_sum = sum(ncontrols), case_sum = sum(ncases),
            co_prob = contr_sum/all_controls, ca_prob = case_sum/all_cases,
            ratio = ca_prob/co_prob)

esoph %>% filter(tobgp == "30+") %>%
  summarize(contr_sum = sum(ncontrols), probability = contr_sum/all_controls)

esoph %>% filter(tobgp == "30+" & alcgp == "120+") %>%
  summarize(contr_sum = sum(ncontrols), probability = contr_sum/all_controls)

esoph %>% filter(tobgp == "30+" | alcgp == "120+") %>%
  summarize(contr_sum = sum(ncontrols), probability = contr_sum/all_controls)

esoph %>% filter(alcgp == "120+" | tobgp == "30+") %>%
  summarize(contr_sum = sum(ncontrols), case_sum = sum(ncases),
            co_prob = contr_sum/all_controls, ca_prob = case_sum/all_cases,
            ratio = ca_prob/co_prob)


