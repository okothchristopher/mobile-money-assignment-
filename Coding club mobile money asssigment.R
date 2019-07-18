setwd("C:/Users/christopher/Desktop/rmarkdown folder")
library(readr)
data<-read_csv("mobilemoney_data.csv", col_names=TRUE, cols(district=col_factor(),urban=col_factor(),gender=col_factor()))
View(data)
library(ggplot2)
library(tidyr)
library(dplyr)
library(ggthemes)
demographics<-data %>% select(age,gender,highest_grade_completed,hh_members)
head(demographics)
write.csv(demographics,"demographics.csv",row.names = FALSE)

ggplot(data,aes(x=gender))+geom_bar(fill="red")

table(data$gender)
ggplot(data,aes(x=age,y=hh_members))+geom_point()+facet_wrap(gender)


#grouping by account type
data%>%group_by(account_type)%>%summarise(number=n())%>%mutate(percentage=number/sum(number)*10)


ggplot(data,aes(x = age, y = hh_members)) + geom_point()+ facet_wrap(.~gender + highest_grade_completed
ggplot(data,aes(x=age,y=hh_members))+geom_point()+facet_wrap(.~gender+highest_grade_completed)
