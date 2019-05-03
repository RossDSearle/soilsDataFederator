library(jsonlite)
library(RCurl)

df <- fromJSON("http://kharak-bm/WebApplication1/api/LabResults")
write.csv(df, 'c:/temp/Asris.csv')


jsn <- getURL("http://kharak-bm/WebApplication1/api/LabResults")
cat(jsn, file='c:/temp/Asris.json')




df <- read.csv( 'c:/temp/Asris.csv')


#if you want to store the results as a csv file on your disk

#write.csv(test,"c:\\temp\\te.csv")        