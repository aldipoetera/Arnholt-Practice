library("PASWR2")
data.EPIDURALF <- within(data = EPIDURALF, expr ={
  BMI = kg/(cm/100)^2
  ease = factor(ease, levels = c("Easy", "Difficult", "Impossible"))
})

with(data = data.EPIDURALF,
     plot(BMI ~ kg, main = "Scatterplot"))

with(data = data.EPIDURALF,
     plot(BMI ~ ease, main = "Boxplots"))

with(data = data.EPIDURALF,
     plot(table(ease), main = "Barplots"))

with(data = data.EPIDURALF,
     plot(ease, main = "Barplots"))

with(data = data.EPIDURALF,
     plot(ease ~ BMI, main = "Spinogram"))

with(data = data.EPIDURALF,
     plot(BMI, ease, main = "Stripchart"))

with(data = data.EPIDURALF,
     plot(ease ~ treatment, main = "Spine plot"))

with(data = data.EPIDURALF,
     plot(table(ease, treatment), main = "Mosaic plot"))

plot(sunspots, main = "Time-series plot")

x <- (-4):4
y <- x^2
plot(x, y, type = "n", xlim = c(-8, 8), ylim = c(0, 20), xlab = "",
     ylab = "", main = "")
title(main = "Empty Graph \n(No Plotted Points)")
text(0, 16, "Some Red Text", col = "red")
text(0, 10, expression(paste("Some Math: ",
                             bar(x)==sum(frac(x[i],n), i==1, n))))

demo(plotmath)
?Quotes