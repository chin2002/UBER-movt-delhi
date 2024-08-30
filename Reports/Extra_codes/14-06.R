install.packages("pacman")
require(pacman)
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio,
               rmarkdown, shiny, stringr, tidyr)
data <- import("C:\\Users\\archi\\Downloads\\new_delhi-wards-2020-1-WeeklyAggregate.csv")
head(data)
summary(data$dow)
summary(data$mean_travel_time)
plot(data$dow)
plot(data$mean_travel_time, data$dow)
plot(data$dow, data$mean_travel_time)

day_names <- table(data$dow)

hist(data$mean_travel_time [data$dow == 7])

summary(data$mean_travel_time [data$dow == 7])

sd(data$mean_travel_time [data$dow == 7])

sds <- c(1111.826,
             1093.602,
             1112.605,
             1133.324,
             1170.897,
             1103.242,
             1028.832)
barplot(sds)

for (x in 1:8) {
  print(sd(data$mean_travel_time [data$dow == x]))
}
