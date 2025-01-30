while(condition){
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
