x2 = 1:10
Y2 = x2 + rnorm(10, mean=0, sd=0.5)
model <- lm(Y2 ~ x2)
mode(model)
class(model)

model[1]

args(lm)
