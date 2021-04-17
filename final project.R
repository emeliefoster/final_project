#testing github
a=read.csv("BBSG_2009-2010_habitat_and_trawl-tow_data.csv")
colnames(a)
#removing unecessary collumns
b=a[,-c(7:8,14:25,34)]
colnames(b)
#finding distribution of data
hist(b$perTotSG)
#exponential distribution 
#removing rows with NAs from cover data
c=b[-c(40,55,60,68,77,149,162),]
#finding quantiles for total SG cover 
quantile(c$perTotSG)
#finding quantiles for species cover
quantile(c$perTha)
quantile(c$perSyr)
quantile(c$perOSG)
#From most common to rare: Tha, Syr, OSG
#adding leading 0's to date values 
date=as.Date(c$Date,format="%m/%d/%Y") 
date
write.csv(x=c, file="processed_SG_data1.csv", row.names = F)
