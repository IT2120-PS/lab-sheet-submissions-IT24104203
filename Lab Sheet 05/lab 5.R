setwd("C:\\Users\\IT24104203\\Desktop\\IT24104203 PS lab 5")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
attach(Delivery_Times)
Delivery_Times

breaks <- seq(20, 70, length.out = 10)

hist(Delivery_Times$Delivery_Time,breaks = breaks,right = FALSE,
     col = "lightblue",main = "histogram of Delivery times",
     xlab = "delivery time(minutes)",ylab = "frequency")

hist_data <- hist(Delivery_Times$Delivery_Time,breaks = breaks,
                  right = FALSE,plot = FALSE)

cum_freq <- cumsum(hist_data$counts)

plot(breaks[-1], cum_freq, type = "o",main = "Ogive of Delivery Times",
     xlab = "Delivery Time (minutes)",ylab = "Cumulative Frequency")