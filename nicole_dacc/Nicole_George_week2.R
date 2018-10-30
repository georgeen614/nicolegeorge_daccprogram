myvariable<-10
my_var1able
my_variable
library(tidyverse)
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ, y=hwy))
fliter(mpg, cyl=8)
filter(diamond,carat>3)
library(tidyverse)
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ, y=hwy))
filter(mpg, cyl==8)
filter(diamonds, carat>3)
library(nycflights13)
library(tidyverse)
flights
filter(flights, dep_delay>=2)
filter(flights, dest== "IAH"|dest== "HOU")
carrier<- flights[,10]
carrier
filter (flights, carrier=="UA"| carrier=="AA"| carrier=="DL")
summer_flights<-filter(flights, month %in% c(6,7,8))
summer_flights
filter(flights, arr_delay>2 & dep_delay==0)
filter(flights, dep_delay>=1 & arr_time-sched_arr_time<30)
filter(flights, dep_time>=000 & dep_time<=600)
filter(flights, between(dep_time, 000, 600))
filter(flights, between(month,6,8))
filter(flights, is.na(dep_time))
#other variables missing include flight dep_delay and arr_time, these flights probably got cancelled
NA^0
#NA^0 not missing because no matter what value NA is, any number to the 0 power is 1. All possible results are the same.
#NA|TRUE is true because the result for all possible NA values is the same.
#FALSE & NA is true because the result for all possible NA values is the same.
#NA*0 is undefined because mathematically speaking, you have the possibility of infinity * 0 which is undefined.
arrange(flights, desc(is.na(dep_time)))
arrange(flights, dep_delay)
arrange(flights, distance/air_time)
arrange(flights, distance)
arrange(flights, desc(distance))
select(flights, dep_time, dep_delay, arr_time, arr_delay)
select(flights, dep_time, dep_delay, arr_time, arr_delay, everything())
select(flights, starts_with("dep"), starts_with("arr"))
select(flights, dep_time, arr_time, dep_time)
select(flights, matches("^(dep|arr)_"))
#even if you repeat the variable it still shows the variable once
vars <- c("year", "month", "day", "dep_delay", "arr_delay")
select(flights, vars)
select(flights, one_of(vars))
select(flights, contains("time"))
select(flights, contains("TIME"))
#you can change it with an ignore helper function that works in the select function

