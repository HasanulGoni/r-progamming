library(XML)
library(tidyverse)
setwd("E:/Web section/GONI/SelfPractice/r progamming/2nd project")
exam_data = xmlParse("exam_data.xml")
vote <- xpathSApply(exam_data, path = "//item/vote", xmlValue)
canton <- xpathSApply(exam_data, path = "//item/canton", xmlValue)
df = data.frame("vote"=vote, "canton"=canton)
df2 = df %>% 
  group_by(canton) %>%
  count(vote)

df3 = df %>% 
  group_by(canton)



