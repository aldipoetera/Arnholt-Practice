library("PASWR2")
data.EPIDURALF <- EPIDURALF

attach(data.EPIDURALF)
BMI <- kg/(cm/100)^2
detach(data.EPIDURALF)
data2.EPIDURALF <- cbind(data.EPIDURALF, BMI)
rm(BMI)
head(data2.EPIDURALF)

levels(data2.EPIDURALF$ease)
data2.EPIDURALF$ease <- factor(data2.EPIDURALF$ease,
                               levels = c("Easy", "Difficult", "Impossible"))
data2.EPIDURALF$ease

data.EPIDURALF$BMI <- EPIDURALF$kg/(EPIDURALF$cm/100)^2
head(data.EPIDURALF)

data3.EPIDURALF <- within(data = EPIDURALF, expr ={
  BMI = kg/(cm/100)^2
  ease = factor(ease, levels = c("Easy", "Difficult", "Impossible"))
})
head(data3.EPIDURALF)

summary(data3.EPIDURALF)

str(data3.EPIDURALF)

sort(c(1, 3, -1, 2, 0, 4, 0.5))
order(c(1, 3, -1, 2, 0, 4, 0.5))

x <- c(1, 1, 1, 3, 3, 3, 2, 2, 2)
y <- c(3, 2, 3, 6, 2, 6, 10, 4, 4)
z <- c(7, 4, 2, 9, 6, 4, 5, 3, 1)
data.xyz <- data.frame(x,y,z)
rm(x,y,z)
t(data.xyz)
data2.xyz <- with(data = data.xyz, data.xyz[order(x),])
t(data2.xyz)

data3.xyz <- with(data = data.xyz, data.xyz[order(x, y, z),])
t(data3.xyz)

DFphy <- data.frame(ID = 1:6,
                    Gender = rep(c("Female", "Male"), each = 3),
                    HDL = c(39, 42, 22, 27, 29, 45))
DFphy

DFsci <- data.frame(ID = c(2, 4, 3, 5, 1, 6),
                    secretID = rep(c("Drug", "Placebo"), each = 3))
DFsci

merge(DFphy, DFsci)

NBMI <- with(data = data3.EPIDURALF, 
             tapply(BMI, INDEX = list(ease, doctor), FUN = mean))
NBMI
CBMI <- with(data = data3.EPIDURALF, 
             ifelse(tapply(BMI, INDEX = list(ease, doctor), FUN = mean) > 35,
                    yes = "Obese",
                    no = "Non-Obese"))
CBMI

for (i in 1:10) {
  print(paste('BMI of',data3.EPIDURALF$BMI[i],
              'with doctor', data3.EPIDURALF$doctor[i]))
}
tapply(data3.EPIDURALF$BMI, data3.EPIDURALF$doctor, FUN = function(x){mean(x,na.rm = TRUE)})
ave(data3.EPIDURALF$BMI, data3.EPIDURALF$doctor, FUN = function(x){mean(x,na.rm = TRUE)})
