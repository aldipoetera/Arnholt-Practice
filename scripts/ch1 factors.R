v <- c(2, 1, 0, 1)
fv <- factor(v)
fv

fv <- factor(v, levels = 0:2, labels = c('Easy', 'Difficult', 'Impossible'))
fv

levels_data <- c("Ease", "Hard", "Fail")
v2 <- c("Ease", "Hard", "Hard", "Fail", "Fail", "Fail")
fv2 <- factor(v2, levels = levels_data, labels = levels_data)
fv2
levels(v2)

fv3 <- factor(v2)
levels(fv3) <- levels_data
fv3
