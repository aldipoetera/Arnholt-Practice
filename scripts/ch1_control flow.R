if (conditions) {
  statements
} else if (conditions) {
  statements
} else {
  statements
}

complex(5)
character(5)
double(5)

N <- 10
L <- numeric(N)
L[1] <- 2
L[2] <- 1
for(i in 3:N){
  L[i] <- L[i-1] + L[i-2]
}
L

x = 2
while(sqrt(sqrt(x)) != round(sqrt(sqrt(x)))){
  print(paste(x, "and still not in the form of a^4"))
  x = x + 1
}
print(paste(x, "is in the form of a^4"))

x = 2
repeat{
  if(sqrt(sqrt(x)) == round(sqrt(sqrt(x)))){
    break
  }
  print(paste(x, "and still not in the form of a^4"))
  x = x + 1
}
print(paste(x, "is in the form of a^4"))

N = 10
if (N < 10) {
  print("mid")
} else if (N == 1) {
  print("good")
} else {
  print("no")
}

set.seed(5)
N <- 10^5 - 1
rolls <- numeric(N)
for (i in 1:N) {
  rolls[i] <- mean(sample(x = 1:6, size = 2, replace = TRUE))
}
table(rolls)

testarr <- array(1:24, dim = c(2, 3, 4))
apply(X = testarr, MARGIN = c(1, 2), FUN = sum)
