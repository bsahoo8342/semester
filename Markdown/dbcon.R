#install.packages("RMySQL")
library(RMySQL)
#DB connection
con=dbConnect(MySQL(),host="localhost", user="root",password="")
#db create
dbSendQuery(con,'CREATE DATABASE Rdb')
con=dbConnect(MySQL(),host="localhost", user="root",password="", dbname="rdb")
#Create table
df=data.frame(Roll=c(11,22,33), Name=c('AAA','BBB','CCC'), Mark=c(75,65,86))
dbWriteTable(con,'table1',df,overwrite=FALSE)
#Insert Data
dbSendQuery(con,"Insert into table1 values (4,44,'DDD',94)")
#Delete database 
#dbSendQuery(con,"drop database rdb")
