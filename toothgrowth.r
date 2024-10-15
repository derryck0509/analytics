data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")
library(dplyr)

#
filtered_tg <- filter(ToothGrowth, dose == 0.5)
filtered_tg

#sort based on len
arrange(filtered_tg, len)

#nested fx, read inside out
arrange(filter(ToothGrowth, dose == 0.5))

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len) 
filtered_toothgrowth

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm=T), .group="drop")
filtered_toothgrowth

ToothGrowth %>%
  select(-supp)
?unite
