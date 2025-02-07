stu1 <- list(first.name = "Bob",
             last.name = "Smith",
             major = "Statistics",
             semester.hours = "18",
             grades = c("A", "B+", "A-", "C+", "B", "B-"))
names(stu1$grades) <- c("Analysis", "Experimental Design", "English",
                        "German", "Regression", "Programming")
stu1
stu1[2]

stu2 <- list("Bob",
             "Smith",
             "Statistics",
             18,
             c("A", "B+", "A-", "C+", "B", "B-"))
test1 <- stu2[[4]]
test2 <- stu2[4]
typeof(test2)
typeof(test1)
