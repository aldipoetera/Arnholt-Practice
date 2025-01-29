data.EPIDURALF <- EPIDURALF

attach(data.EPIDURALF)
BMI <- kg/(cm/100)^2
detach(data.EPIDURALF)
data2.EPIDURALF <- cbind(data.EPIDURALF, BMI)

data2.EPIDURALF$ease <- factor(data2.EPIDURALF$ease,
                               levels = c("Easy", "Difficult", "Impossible"))

head(data2.EPIDURALF)
table(data2.EPIDURALF$ease)
table(data2.EPIDURALF$ease, data2.EPIDURALF$doctor)
