data.BODYFAT <- BODYFAT

head(data.BODYFAT)

with(data = data.BODYFAT, fat[fat < 25])

subset(data.BODYFAT, select = c("age", "sex"), subset = fat < 25)

any(data.BODYFAT$fat < 10 & data.BODYFAT$sex == "M")

all(data.BODYFAT$fat < 10 & data.BODYFAT$sex == "M")

which(data.BODYFAT$fat < 10 & data.BODYFAT$sex == "M")
