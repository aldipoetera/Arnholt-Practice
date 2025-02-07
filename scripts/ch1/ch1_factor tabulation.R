data.EPIDURALF <- EPIDURALF

attach(data.EPIDURALF)
BMI <- kg/(cm/100)^2
detach(data.EPIDURALF)
rm(BMI)
data2.EPIDURALF <- cbind(data.EPIDURALF, BMI)

data2.EPIDURALF$ease <- factor(data2.EPIDURALF$ease,
                               levels = c("Easy", "Difficult", "Impossible"))

head(data2.EPIDURALF)
table(data2.EPIDURALF$ease)
table(data2.EPIDURALF$ease, data2.EPIDURALF$doctor)

with(data = data2.EPIDURALF, table(ease, doctor, treatment))
xtabs(formula = ~ease + doctor + treatment, data = data2.EPIDURALF)

with(data = data2.EPIDURALF, ftable(treatment, ease, doctor))
data.table <- ftable(doctor ~ ease, data = data2.EPIDURALF)
data.table = with(data = data2.EPIDURALF, table(ease, doctor))
ftable(~ treatment + ease | doctor, data = data2.EPIDURALF)
ftable(~ treatment + ease, data = data2.EPIDURALF)

data.table
margin.table(data.table)
margin.table(data.table, 1)
margin.table(data.table, 2)
addmargins(data.table)

prop.table(data.table) # Much like data.table/margin.table(data.table)
prop.table(data.table, 1) # Divide each entry by its row total
prop.table(data.table, 2) # Divide each entry by its column total

data.fBMI <- cut(data2.EPIDURALF$BMI, breaks = 4) 
levels(data.fBMI)
table(data.fBMI)
min(data2.EPIDURALF$BMI)

data3.EPIDURALF <- within(data = data2.EPIDURALF, expr = {
  flBMI <- factor(cut(BMI, breaks = 3, include.lowest = TRUE), labels = c("Low", "Med", "High"))
})
head(data3.EPIDURALF)

with(data = data3.EPIDURALF,
     tapply(X = BMI, INDEX = list(ease, doctor), FUN = mean))
with(data = data3.EPIDURALF,
     aggregate(x = BMI, by = list(ease, doctor), FUN = mean))
