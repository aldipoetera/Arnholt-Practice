A1 <- array(data = 1:24, dim = c(3, 4, 2))
A1
dim(A1)
A1[2,1,2]
is.array(A1)
is.matrix(A1)

A2 <- array(data = 1:25, dim = c(5, 5))
A2
is.array(A2)
is.matrix(A2)

M1 <- matrix(data = 1:24, nrow = 4, byrow = TRUE)
M1
M2 <- matrix(data = 1:24, ncol = 4, byrow = FALSE)
M2

M3 <- matrix(1:12, nrow = 3)
M3
dimnames(M3) <- list(c('a','b','c'), c('id', 'treat 1', 'treat 2', 'result'))
M3
M3['a',]
M3[,c('id','result')]
score <- c(50, 86, 90)
M3 <- cbind(M3, score)
M3

apply(X = M3, MARGIN = 2, FUN = mean)
apply(X = M3, MARGIN = 1, FUN = max)

M3
t(M3)
M3['a',]
is.matrix(M3['a',])
M3['a',,drop=FALSE]
is.matrix(M3['a',,drop=FALSE])
