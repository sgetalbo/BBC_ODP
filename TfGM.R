
library(dplyr)
library(data.table)
library(lubridate)

Q11617 <- fread("1617Qtr1Payments.csv", header  = TRUE, select = c(1:7))
Q21617 <- fread("1617Qtr2Payments.csv", header = TRUE, select = c(1:7))
Q31617 <- fread("1617Qtr3Payments.csv", header = TRUE)
Q41617 <- fread("1617Qtr4Payments.csv", header = TRUE)
Q11718 <- fread("1718Qtr1Payments.csv", header = TRUE)
Q21718 <- fread("1718Qtr2Payments.csv", header = TRUE,)

rm(Q1)
TFGM1 <- rbind(Q11617, Q21617, Q31617, Q41617, Q11718, Q21718)

#Is there someone who used to work at mpact thales who is now working at tfgm or vice versa
#Sustainable travel grants might make for a positive story rather than looking for bad


write.csv(TFGM, "TFGM.csv")

TFGM <- read.csv("TFGM.csv")
TFGM$X <- NULL
TFGM$Invoice_Payment_Date <- dmy(TFGM$Invoice_Payment_Date)

TFGM$Expense_Type <- as.factor(TFGM$Expense_Type)
expenses <- as.list(levels(TFGM$Expense_Type))
### Interesting categories
# staff rail passes
# sustainable travel 
# replacement bus servies 
# capital costs - smart ticketing
# capital costs - replacement bus services

