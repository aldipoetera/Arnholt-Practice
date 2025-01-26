nv <- c(1, 3, 6, 8)
cv <- c("a", "d", "f", "p")
lv <- c(TRUE, FALSE, FALSE, TRUE)
DF1 <- data.frame(nv, cv, lv)
DF1
str(DF1)
DF2 <- data.frame(nv, cv, lv, row.names = c("John", "Bob", "Samuel", "Bertha"))
DF2

DF3 <- data.frame(nv,cv,lv,stringsAsFactors = TRUE)
DF3
str(DF3)

rm(nv, cv, lv)

DF1[[c("nv")]]


DF2[,"nv"]
typeof(DF2[,c("nv","cv")])
DF2[,c("nv","cv"),drop = TRUE]

typeof(DF1[,c("nv","cv"),drop = TRUE])
test <- DF1[,c("nv","cv"),drop = TRUE]    
test[1]

test2 <- DF2[,c("nv","cv"),drop = TRUE]
test2[[1]]

subset(DF2, select=c(nv, cv))

data(package = "PASWR2")
