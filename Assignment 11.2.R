bank <- read.csv("C:/Users/Mymaster/Desktop/Adhishree/Data Analytics/Assignments_Questions/bank/bank.csv", sep=";")   
View(bank)

#Perform the below operations:  
#a. Create a visual for representing missing values in the dataset. 
install.packages("mice")
library(mice)
md.pattern(bank)
install.packages("VIM")
library(VIM)
aggr_plot <- aggr(bank, col=c('navyblue','red'), numbers=TRUE, sortVars=TRUE, labels=names(data), cex.axis=.7, gap=3, ylab=c("Histogram of missing data","Pattern"))
#b. Show a distribution of clients based on a Job. 
counts <- table(bank$job)
counts
bar <- barplot(counts , main = "Bar plot of Jobs", xlab = "Jobs" , ylab = "Numbers" , col = heat.colors(12))

#c. Check whether is there any relation between Job and Marital Status? 
chisq.test(bank$marital , bank$job )
Conclusion:
There is a relation between Job and Marital Status.
#d. Check whether is there any association between Job and Education? 
chisq.test(bank$education , bank$job )
Conclusion:
There is a relation between Job and Education.
  