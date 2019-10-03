library(pdftools)   ## deal with pdf files
library(stringr)    ## string operation
library(stringi)
library(readxl)
library(dplyr)
library(stringi)
library(tidyr)
library(xlsx)

rm(list = ls())

setwd("F:/MFDM/ZChen/data request/split files for team retreat/data")

##data<-read.csv("RawData_2019-2020 Team Retreat_Rotations.csv",1)
data<-read.xlsx("data.xlsx",1)

alltopic<-str_split(str_trim(data[,5]),';',simplify=T)
topic1<-str_split(str_trim(alltopic[,1]),':',simplify=T)[,1]
topic2<-str_split(str_trim(alltopic[,2]),':',simplify=T)[,1]
topic3<-str_split(str_trim(alltopic[,3]),':',simplify=T)[,1]
topic4<-str_split(str_trim(alltopic[,4]),':',simplify=T)[,1]
topic5<-str_split(str_trim(alltopic[,5]),':',simplify=T)[,1]

final<-data.frame(data[,1:4],topic1,topic2,topic3,topic4,topic5)

write.xlsx(final, file='name_with_topic.xlsx', sheetName="Sheet1", col.names=TRUE, row.names=FALSE, append=FALSE,showNA=FALSE)
