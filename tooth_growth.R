data("ToothGrowth")
View(ToothGrowth)
arrange(filter(ToothGrowth,dose ==0.5) , len )

data <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  arrange(len) %>% 
  summarize(mean_len=mean(len,na.rm = T), .group="drop")

View(data)