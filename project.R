rm(list = ls())
MyData <- read.csv(file="RawData_2019-2020 Team Retreat_Rotations.csv", header=TRUE, sep=",")
top_five_projects_one <- strsplit(as.character(MyData[, 'top_five_projects']), split = ';')
top_five_projects_one
dim(top_five_projects_one)
newdata <- cbind(MyData, top_five_projects_one)
library(openxlsx)
write.xlsx(top_five_projects_one, file = "top_five_projects_one.xlsx", sheetName="Sheet1", col.names=TRUE)
