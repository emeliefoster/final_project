#testing github
a=read.csv("BBSG_2009-2010_habitat_and_trawl-tow_data.csv")
colnames(a)
#removing unecessary collumns
b=a[,-c(7:8,14:25,34)]
colnames(b)
#finding distribution of data
hist(b$perTotSG)
#exponential distribution 
#removing NAs from data
library(tidyverse)
c=b %>% drop_na()
#finding quantiles for total SG cover 
quantile(c$perTotSG)
#finding quantiles for species cover
quantile(c$perTha)
quantile(c$perSyr)
quantile(c$perOSG)
#From most common to rare: Tha, Syr, OSG