
#install.packages(c("tidyverse","dataMaid"))

setwd("./")

library(tidyverse)
library(dataMaid)

#file paths
folder = "./"
training_file = "training_data.csv"
test_file = "testing_data.csv"

training_path = paste(folder,training_file,sep="/")
test_path = paste(folder,test_file,sep="/")


#Load datasets
training_dataset <- read.csv(
  training_path
  , header = TRUE
  , row.names = NULL
  , encoding = "csv"
  , sep = ","
  , dec = "."
  , quote = "\""
  , comment.char = "")

test_dataset <- read.csv(
  test_path
  , header = TRUE
  , row.names = NULL
  , encoding = "csv"
  , sep = ","
  , dec = "."
  , quote = "\""
  , comment.char = "")


#Create data report to understand what data are in the files
#Data Maid Github docs = https://github.com/ekstroem/dataMaid

data(training_dataset)
makeDataReport(training_dataset)


