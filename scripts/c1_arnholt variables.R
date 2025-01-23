x <- 5
y <- c(7, 3, 5)
z <- c(2, 4, 6, 8)

typeof(z)
c(TRUE, 3, 4.5)

NV <- c(-4, 0, 2, 4, 6)
NV/NV
NV^9999
NV[-1]

NV[c(3, 1, 2, 4)]

FEV <- rep(x = 3:1, times = 1:3)
FEV
subset(x = FEV, subset = FEV*FEV > 3)

FEV*FEV > 3
which(FEV*FEV > 3)
