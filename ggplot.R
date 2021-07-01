# VISUALIZATIONS USING GGPLOT2
## load the ggplot2 package
library(ggplot2)
help(ggplot2)

# generate random normal data
set.seed(35)
normal.data_10 <- rnorm(10,50,15)
normal.data_100 <- rnorm(100,50,15)
normal.data_1M <- rnorm(1000000,50,15)

View(normal.data_10)
View(normal.data_100)
View(normal.data_1M)

# create histogram in ggplot2
normal.data_10 <- data.frame(normal.data_10)
normal.data_100 <- data.frame(normal.data_100)
normal.data_1M <- data.frame(normal.data_1M)

class(normal.data_100)
View(normal.data_100)
View(normal.data_100)
View(normal.data_1M)

normal.data_10
normal.data_100
normal.data_1M
names(normal.data_10) <- 'x_10'
names(normal.data_100) <- 'x_100'
names(normal.data_1M) <- 'x_M'

normal.data_10
ggplot(normal.data_10, aes(x_10)) + geom_histogram()

ggplot(normal.data_100, aes(x_100)) + geom_histogram()

ggplot(normal.data_1M, aes(x_M)) + geom_histogram()
boxplot(x=normal.data_1M)
?boxplot

# sampling output in R
library(dplyr)
set.seed(10)
sample_n(normal.data_1M, 10, replace = FALSE)
sample_n(normal.data_1M, 10, replace = TRUE)
  