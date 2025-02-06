fname <- function(argument1, argument2, ...){
  expression
}

dicethrow.mean_table <- function(dices, seed_num, throws){
  set.seed(seed_num)
  rolls <- numeric(throws)
  for (i in 1:throws){
    rolls[i] <- mean(sample(x = 1:6, size = dices, replace = TRUE))
  }
  table(rolls)
}
dicethrow.mean_table(dices = 4, seed_num = 42582, throws = 100)

args(sample)
sample(size = 20, replace = TRUE, x = 10)
sample(10, 20, TRUE)
sample(10, TRUE, size = 20)

